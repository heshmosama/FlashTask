// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'past_service_amount_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PastServiceAmountBody _$PastServiceAmountBodyFromJson(
    Map<String, dynamic> json) {
  return PastServiceAmountBody(
    pastServicePeriods: (json['pastServicePeriods'] as List<dynamic>)
        .map((e) => PastServicePeriod.fromJson(e as Map<String, dynamic>))
        .toList(),
    totalOfBasicSalaryAndSocialAllowanceOnTheDateOfRequest:
        json['totalOfBasicSalaryAndSocialAllowanceOnTheDateOfRequest'] as int,
  );
}

Map<String, dynamic> _$PastServiceAmountBodyToJson(
        PastServiceAmountBody instance) =>
    <String, dynamic>{
      'pastServicePeriods': instance.pastServicePeriods,
      'totalOfBasicSalaryAndSocialAllowanceOnTheDateOfRequest':
          instance.totalOfBasicSalaryAndSocialAllowanceOnTheDateOfRequest,
    };
