// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_pansion_salary_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetPansionSalaryResponse _$GetPansionSalaryResponseFromJson(
    Map<String, dynamic> json) {
  return GetPansionSalaryResponse(
    data: json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>),
    responseStatus: json['responseStatus'] as int?,
    arabicErrorMessage: json['arabicErrorMessage'] as String?,
    englishErrorMessage: json['englishErrorMessage'] as String?,
  );
}

Map<String, dynamic> _$GetPansionSalaryResponseToJson(
        GetPansionSalaryResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'responseStatus': instance.responseStatus,
      'arabicErrorMessage': instance.arabicErrorMessage,
      'englishErrorMessage': instance.englishErrorMessage,
    };
