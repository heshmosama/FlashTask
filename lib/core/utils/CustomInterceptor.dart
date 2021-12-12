import 'dart:developer';
import 'dart:io';
import 'package:dio/dio.dart';
import 'dio_connectivity_requset_retrier.dart';

class CustomInterceptors extends Interceptor {
  final DioConnectivityRequestRetrier requestRetrier;

  CustomInterceptors({required this.requestRetrier});
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    log('REQUEST[${options.method}] => PATH: ${options.uri}');
    log('Content-Type : ${options.contentType}');
    log('Connect Timeout : ${options.connectTimeout}');
    log('Send Timeout : ${options.sendTimeout}');
    log('Receive Timeout : ${options.receiveTimeout}');
    log('Headers : ${options.headers}');
    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log('RESPONSE[${response.statusCode}] => PATH: ${response.realUri}');
    // print('Headers : ${response.headers}');
    log('Body : ${response.data}');
    return handler.next(response);
  }

  @override
  Future onError(DioError err, ErrorInterceptorHandler handler) async {
    if (_shouldRetry(err)) {
      try {
        return requestRetrier.scheduleRequestRetry(err.requestOptions);
      } catch (e) {
        return e;
      }
    }
    log('ERROR[${err.error}] => PATH: ${err.response?.requestOptions.uri}');

    log(err.response?.data);
    print(err.response?.headers);
    print(err.type);
    log(err.message);

    return handler.next(err);
  }

  bool _shouldRetry(DioError err) {
    return err.error != null && err.error is SocketException;
  }
}
