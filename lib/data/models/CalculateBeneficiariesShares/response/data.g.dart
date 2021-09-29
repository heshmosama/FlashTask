// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    deservedPensionSalaryperRelationship:
        json['deservedPensionSalaryperRelationship'] == null
            ? null
            : DeservedPensionSalaryperRelationship.fromJson(
                json['deservedPensionSalaryperRelationship']
                    as Map<String, dynamic>),
    deservedAmountperIndividual: json['deservedAmountperIndividual'] == null
        ? null
        : DeservedAmountperIndividual.fromJson(
            json['deservedAmountperIndividual'] as Map<String, dynamic>),
    minimumDeservedAmountForIndividual:
        json['minimumDeservedAmountForIndividual'] == null
            ? null
            : MinimumDeservedAmountForIndividual.fromJson(
                json['minimumDeservedAmountForIndividual']
                    as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'deservedPensionSalaryperRelationship':
          instance.deservedPensionSalaryperRelationship,
      'deservedAmountperIndividual': instance.deservedAmountperIndividual,
      'minimumDeservedAmountForIndividual':
          instance.minimumDeservedAmountForIndividual,
    };
