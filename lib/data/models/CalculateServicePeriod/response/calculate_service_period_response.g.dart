// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculate_service_period_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CalculateServicePeriodResponse _$CalculateServicePeriodResponseFromJson(
    Map<String, dynamic> json) {
  return CalculateServicePeriodResponse(
    data: json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>),
    responseStatus: json['responseStatus'] as int?,
    arabicErrorMessage: json['arabicErrorMessage'] as String?,
    englishErrorMessage: json['englishErrorMessage'] as String?,
  );
}

Map<String, dynamic> _$CalculateServicePeriodResponseToJson(
        CalculateServicePeriodResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'responseStatus': instance.responseStatus,
      'arabicErrorMessage': instance.arabicErrorMessage,
      'englishErrorMessage': instance.englishErrorMessage,
    };
