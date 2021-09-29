// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_pansion_salary_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetPansionSalaryBody _$GetPansionSalaryBodyFromJson(Map<String, dynamic> json) {
  return GetPansionSalaryBody(
    retirmentSystem: json['retirmentSystem'] as String,
    retirmentType: json['retirmentType'] as String,
    dateOfBirth: json['dateOfBirth'] as String,
    gender: json['gender'] as String,
    basicSalary: json['basicSalary'] as int,
    socialAllowence: json['socialAllowence'] as int,
    day: json['day'] as int,
    month: json['month'] as int,
    year: json['year'] as int,
    endOfServiceReason: json['endOfServiceReason'] as String,
    endOfServiceDate: json['endOfServiceDate'] as String,
  );
}

Map<String, dynamic> _$GetPansionSalaryBodyToJson(
        GetPansionSalaryBody instance) =>
    <String, dynamic>{
      'retirmentSystem': instance.retirmentSystem,
      'retirmentType': instance.retirmentType,
      'dateOfBirth': instance.dateOfBirth,
      'gender': instance.gender,
      'basicSalary': instance.basicSalary,
      'socialAllowence': instance.socialAllowence,
      'day': instance.day,
      'month': instance.month,
      'year': instance.year,
      'endOfServiceReason': instance.endOfServiceReason,
      'endOfServiceDate': instance.endOfServiceDate,
    };
