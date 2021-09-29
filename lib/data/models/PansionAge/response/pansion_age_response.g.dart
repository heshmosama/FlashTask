// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pansion_age_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PansionAgeResponse _$PansionAgeResponseFromJson(Map<String, dynamic> json) {
  return PansionAgeResponse(
    data: json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>),
    responseStatus: json['responseStatus'] as int?,
    arabicErrorMessage: json['arabicErrorMessage'] as String?,
    englishErrorMessage: json['englishErrorMessage'] as String?,
  );
}

Map<String, dynamic> _$PansionAgeResponseToJson(PansionAgeResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'responseStatus': instance.responseStatus,
      'arabicErrorMessage': instance.arabicErrorMessage,
      'englishErrorMessage': instance.englishErrorMessage,
    };
