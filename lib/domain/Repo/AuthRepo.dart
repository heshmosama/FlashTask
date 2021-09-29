import 'package:dartz/dartz.dart';
import 'package:grsia/core/error/failures.dart';
import 'package:grsia/data/models/login_models/login_body.dart';
import 'package:grsia/data/models/login_models/login_response_model.dart';

abstract class AuthRepo {
  Future<Either<Failure, LoginResponseModel>> login(LoginBody loginBody);
}
