// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deserved_amountper_individual.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeservedAmountperIndividual _$DeservedAmountperIndividualFromJson(
    Map<String, dynamic> json) {
  return DeservedAmountperIndividual(
    noOfSpouseOrWidow: json['noOfSpouseOrWidow'] as int?,
    noOfSonsOrDaughters: json['noOfSonsOrDaughters'] as int?,
    noOfDeceasedOrSons: json['noOfDeceasedOrSons'] as int?,
    noOfParents: json['noOfParents'] as int?,
    noOfBrothersOrSisters: json['noOfBrothersOrSisters'] as int?,
  );
}

Map<String, dynamic> _$DeservedAmountperIndividualToJson(
        DeservedAmountperIndividual instance) =>
    <String, dynamic>{
      'noOfSpouseOrWidow': instance.noOfSpouseOrWidow,
      'noOfSonsOrDaughters': instance.noOfSonsOrDaughters,
      'noOfDeceasedOrSons': instance.noOfDeceasedOrSons,
      'noOfParents': instance.noOfParents,
      'noOfBrothersOrSisters': instance.noOfBrothersOrSisters,
    };
