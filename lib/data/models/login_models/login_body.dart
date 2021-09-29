import 'package:json_annotation/json_annotation.dart';

part 'login_body.g.dart';

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class LoginBody {
  @JsonKey(name: "UserName")
  final String UserName;
  @JsonKey(name: "Password")
  final String Password;

  LoginBody({required this.UserName, required this.Password});

  factory LoginBody.fromJson(Map<String, dynamic> json) =>
      _$LoginBodyFromJson(json);

  Map<String, dynamic> toJson() => _$LoginBodyToJson(this);
}
