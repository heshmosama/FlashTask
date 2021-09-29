// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assume_service_amount_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AssumeServiceAmountResponse _$AssumeServiceAmountResponseFromJson(
    Map<String, dynamic> json) {
  return AssumeServiceAmountResponse(
    assumeServicePeriod: json['assumeServicePeriod'] == null
        ? null
        : AssumeServicePeriod.fromJson(
            json['assumeServicePeriod'] as Map<String, dynamic>),
    totalOfBasicSalaryAndSocialAllowanceOnTheDateOfRequest:
        json['totalOfBasicSalaryAndSocialAllowanceOnTheDateOfRequest'] as int?,
  );
}

Map<String, dynamic> _$AssumeServiceAmountResponseToJson(
        AssumeServiceAmountResponse instance) =>
    <String, dynamic>{
      'assumeServicePeriod': instance.assumeServicePeriod,
      'totalOfBasicSalaryAndSocialAllowanceOnTheDateOfRequest':
          instance.totalOfBasicSalaryAndSocialAllowanceOnTheDateOfRequest,
    };
