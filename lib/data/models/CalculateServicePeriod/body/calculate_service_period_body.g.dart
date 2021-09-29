// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculate_service_period_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CalculateServicePeriodBody _$CalculateServicePeriodBodyFromJson(
    Map<String, dynamic> json) {
  return CalculateServicePeriodBody(
    periods: (json['periods'] as List<dynamic>)
        .map((e) => Period.fromJson(e as Map<String, dynamic>))
        .toList(),
    calculationReason: json['calculationReason'] as String,
  );
}

Map<String, dynamic> _$CalculateServicePeriodBodyToJson(
        CalculateServicePeriodBody instance) =>
    <String, dynamic>{
      'periods': instance.periods,
      'calculationReason': instance.calculationReason,
    };
