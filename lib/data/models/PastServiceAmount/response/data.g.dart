// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    pastServicePeriods: (json['pastServicePeriods'] as List<dynamic>?)
        ?.map((e) => PastServicePeriod.fromJson(e as Map<String, dynamic>))
        .toList(),
    totalPastServicePeriod: json['totalPastServicePeriod'] == null
        ? null
        : TotalPastServicePeriod.fromJson(
            json['totalPastServicePeriod'] as Map<String, dynamic>),
    totalAmount: json['totalAmount'] as int?,
    totalOfBasicSalaryAndSocialAllowanceOnTheDateOfRequest:
        json['totalOfBasicSalaryAndSocialAllowanceOnTheDateOfRequest'] as int?,
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'pastServicePeriods': instance.pastServicePeriods,
      'totalPastServicePeriod': instance.totalPastServicePeriod,
      'totalAmount': instance.totalAmount,
      'totalOfBasicSalaryAndSocialAllowanceOnTheDateOfRequest':
          instance.totalOfBasicSalaryAndSocialAllowanceOnTheDateOfRequest,
    };
