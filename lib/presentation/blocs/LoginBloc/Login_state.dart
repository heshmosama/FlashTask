import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:grsia/domain/Entities/login_entits/LoginReponseEntity.dart';
import 'package:grsia/domain/Entities/login_entits/Login_body_entity.dart';

@immutable
abstract class LoginStates extends Equatable {
  @override
  List<Object?> get props => [];
}

class Empty extends LoginStates {}

class Loading extends LoginStates {}

class Loaded extends LoginStates {
  final LoginResponseEntity loginResponseEntity;
  Loaded({required this.loginResponseEntity});
  @override
  List<Object?> get props => [loginResponseEntity];
}

class Error extends LoginStates {
  final String message;
  Error({required this.message});
  @override
  List<Object?> get props => [message];
}
