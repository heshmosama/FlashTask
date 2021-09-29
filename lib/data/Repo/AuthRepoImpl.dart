import 'package:grsia/core/error/exceptions.dart';
import 'package:grsia/core/platform/network_info.dart';
import 'package:grsia/data/datasource/local-datasource/shared_prefrances_data_source.dart';
import 'package:grsia/data/datasource/remote-datasource/NetworkService.dart';
import 'package:grsia/data/models/login_models/login_response_model.dart';
import 'package:grsia/data/models/login_models/login_body.dart';
import 'package:grsia/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:grsia/domain/Repo/AuthRepo.dart';

class AuthRepoImpl implements AuthRepo {
  final GRSIALocalData grsiaLocalData;
  final NetworkInfo networInfo;
  final RestClient restClient;
  AuthRepoImpl(
      {required this.grsiaLocalData,
      required this.networInfo,
      required this.restClient});
  @override
  Future<Either<Failure, LoginResponseModel>> login(LoginBody loginBody) async {
    try {
      final loginResponse = await restClient.Login(loginBody);
      await grsiaLocalData.saveToken(loginResponse.data);
      return Right(loginResponse);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
