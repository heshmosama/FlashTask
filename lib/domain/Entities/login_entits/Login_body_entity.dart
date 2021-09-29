import 'package:grsia/data/models/login_models/login_body.dart';

class LoginBodyEntity extends LoginBody {
  final String userName;
  final String password;
  LoginBodyEntity({required this.userName, required this.password})
      : super(UserName: userName, Password: password);
}
