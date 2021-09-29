// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unpaid_leave_amount_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UnpaidLeaveAmountBody _$UnpaidLeaveAmountBodyFromJson(
    Map<String, dynamic> json) {
  return UnpaidLeaveAmountBody(
    myProperty: (json['myProperty'] as List<dynamic>?)
        ?.map((e) => MyProperty.fromJson(e as Map<String, dynamic>))
        .toList(),
    totalOfBasicSalaryAndSocialAllowanceOnTheDateOfRequest:
        json['totalOfBasicSalaryAndSocialAllowanceOnTheDateOfRequest'] as int?,
  );
}

Map<String, dynamic> _$UnpaidLeaveAmountBodyToJson(
        UnpaidLeaveAmountBody instance) =>
    <String, dynamic>{
      'myProperty': instance.myProperty,
      'totalOfBasicSalaryAndSocialAllowanceOnTheDateOfRequest':
          instance.totalOfBasicSalaryAndSocialAllowanceOnTheDateOfRequest,
    };
