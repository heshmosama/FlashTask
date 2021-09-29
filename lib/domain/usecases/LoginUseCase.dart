import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:grsia/core/error/failures.dart';
import 'package:grsia/core/usecases/use_case.dart';
import 'package:grsia/domain/Entities/login_entits/LoginReponseEntity.dart';
import 'package:grsia/domain/Entities/login_entits/Login_body_entity.dart';
import 'package:grsia/domain/Repo/AuthRepo.dart';

class LoginUseCase implements UseCase<LoginResponseEntity, Params> {
  final AuthRepo authRepo;
  LoginUseCase({required this.authRepo});
  @override
  Future<Either<Failure, LoginResponseEntity>> excute(Params params) async {
    return await authRepo.login(params.loginBodyEntity);
  }
}

class Params extends Equatable {
  final LoginBodyEntity loginBodyEntity;
  Params({required this.loginBodyEntity});
  @override
  List<Object?> get props => [loginBodyEntity];
}
