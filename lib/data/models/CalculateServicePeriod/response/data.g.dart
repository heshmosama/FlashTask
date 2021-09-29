// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    totalServicePeriod: json['totalServicePeriod'] == null
        ? null
        : TotalServicePeriod.fromJson(
            json['totalServicePeriod'] as Map<String, dynamic>),
    periodsmodel: (json['periods'] as List<dynamic>?)
        ?.map((e) => Period.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'totalServicePeriod': instance.totalServicePeriod,
      'periods': instance.periodsmodel,
    };
