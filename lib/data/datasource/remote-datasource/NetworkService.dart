import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:grsia/core/utils/CustomInterceptor.dart';
import 'package:grsia/core/utils/dio_connectivity_requset_retrier.dart';
import 'package:grsia/core/utils/Constants.dart';
import 'package:grsia/data/models/GetPansionSalary/body/get_pansion_salary_body.dart';
import 'package:grsia/data/models/GetPansionSalary/response/get_pansion_salary_response.dart';
import 'package:grsia/data/models/login_models/login_body.dart';
import 'package:grsia/data/models/login_models/login_response_model.dart';
import 'package:grsia/data/models/post_test.dart';
import 'package:retrofit/retrofit.dart';

part 'NetworkService.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET(Constants.post)
  Future<PostTest> getTasks();

  @GET(Constants.post)
  Future<LoginResponseModel> Login(@Body() LoginBody loginBody);

  @POST(Constants.GETPANSIONSALARY)
  Future<GetPansionSalaryResponse> GetPansionSalary(@Body() GetPansionSalaryBody body);

  static RestClient create() {
    Dio? _dio;
    if (_dio == null) {
      _dio = Dio();
    }
    _dio.options.headers = {
      "content-type": "application/json",
      "token": "",
      // "key2":"value2"
    };
    _dio.options.baseUrl = "https://jsonplaceholder.typicode.com/";
    _dio.options.connectTimeout = 5000; //5s
    _dio.options.receiveTimeout = 3000;
    _dio.interceptors.add(CustomInterceptors(
        requestRetrier: DioConnectivityRequestRetrier(
            dio: _dio, connectivity: Connectivity())));
    return RestClient(_dio);
  }
}
