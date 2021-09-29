// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginBody _$LoginBodyFromJson(Map<String, dynamic> json) {
  return LoginBody(
    UserName: json['UserName'] as String,
    Password: json['Password'] as String,
  );
}

Map<String, dynamic> _$LoginBodyToJson(LoginBody instance) => <String, dynamic>{
      'UserName': instance.UserName,
      'Password': instance.Password,
    };
