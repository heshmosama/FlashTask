import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:grsia/data/models/login_models/login_body.dart';
import 'package:grsia/domain/Entities/login_entits/Login_body_entity.dart';

@immutable
class LoginEvents extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoginEvent extends LoginEvents {
  final LoginBodyEntity loginBody;
  LoginEvent({required this.loginBody});
  @override
  List<Object?> get props => [loginBody];
}
