// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    totalUnpaidServicePeriod: json['totalUnpaidServicePeriod'] == null
        ? null
        : TotalUnpaidServicePeriod.fromJson(
            json['totalUnpaidServicePeriod'] as Map<String, dynamic>),
    totalOfDueAmount: json['totalOfDueAmount'] as int?,
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'totalUnpaidServicePeriod': instance.totalUnpaidServicePeriod,
      'totalOfDueAmount': instance.totalOfDueAmount,
    };
