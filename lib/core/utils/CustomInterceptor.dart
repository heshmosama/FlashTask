import 'dart:io';

import 'package:dio/dio.dart';

import 'dio_connectivity_requset_retrier.dart';

class CustomInterceptors extends Interceptor {
  final DioConnectivityRequestRetrier requestRetrier;

  CustomInterceptors({required this.requestRetrier});
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print('REQUEST[${options.method}] => PATH: ${options.uri}');
    print('Content-Type : ${options.contentType}');
    print('Connect Timeout : ${options.connectTimeout}');
    print('Send Timeout : ${options.sendTimeout}');
    print('Receive Timeout : ${options.receiveTimeout}');
    print('Headers : ${options.headers}');
    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {


    print('RESPONSE[${response.statusCode}] => PATH: ${response.realUri}');
    // print('Headers : ${response.headers}');
    print('Body : ${response.data}');
    return handler.next(response);
  }

  @override
  Future  onError(DioError err, ErrorInterceptorHandler handler) async{

    if(_shouldRetry(err)){
      try{
        return requestRetrier.scheduleRequestRetry(err.requestOptions);
      }catch(e){
        return e;
      }
    }
    print(
        'ERROR[${err.error}] => PATH: ${err.response?.requestOptions.uri}');

    print(err.response?.data);
    print(err.response?.headers);
    print(err.type);
    print(err.message);

    return handler.next(err);
  }

  bool _shouldRetry(DioError err) {
    return
        err.error != null &&
        err.error is SocketException;
  }
}
