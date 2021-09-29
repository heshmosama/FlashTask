// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pansion_age_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PansionAgeBody _$PansionAgeBodyFromJson(Map<String, dynamic> json) {
  return PansionAgeBody(
    dateOfBirth: json['dateOfBirth'] as String,
    to: json['to'] as String,
    calculationReason: json['calculationReason'] as String,
  );
}

Map<String, dynamic> _$PansionAgeBodyToJson(PansionAgeBody instance) =>
    <String, dynamic>{
      'dateOfBirth': instance.dateOfBirth,
      'to': instance.to,
      'calculationReason': instance.calculationReason,
    };
