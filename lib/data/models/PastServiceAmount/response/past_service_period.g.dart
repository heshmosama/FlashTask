// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'past_service_period.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PastServicePeriod _$PastServicePeriodFromJson(Map<String, dynamic> json) {
  return PastServicePeriod(
    from: json['from'] as String?,
    to: json['to'] as String?,
    paymentType: json['paymentType'] as String?,
    noOfInstallment: json['noOfInstallment'] as int?,
  );
}

Map<String, dynamic> _$PastServicePeriodToJson(PastServicePeriod instance) =>
    <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
      'paymentType': instance.paymentType,
      'noOfInstallment': instance.noOfInstallment,
    };
