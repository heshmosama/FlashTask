// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponseModel _$LoginResponseModelFromJson(Map<String, dynamic> json) {
  return LoginResponseModel(
    data: json['Data'] as String?,
    responseStatus: json['ResponseStatus'] as int?,
    arabicErrorMessage: json['ArabicErrorMessage'] as String?,
    englishErrorMessage: json['EnglishErrorMessage'] as String?,
  );
}

Map<String, dynamic> _$LoginResponseModelToJson(LoginResponseModel instance) =>
    <String, dynamic>{
      'Data': instance.data,
      'ResponseStatus': instance.responseStatus,
      'ArabicErrorMessage': instance.arabicErrorMessage,
      'EnglishErrorMessage': instance.englishErrorMessage,
    };
