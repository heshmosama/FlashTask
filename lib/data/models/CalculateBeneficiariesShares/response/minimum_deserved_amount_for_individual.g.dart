// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'minimum_deserved_amount_for_individual.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MinimumDeservedAmountForIndividual _$MinimumDeservedAmountForIndividualFromJson(
    Map<String, dynamic> json) {
  return MinimumDeservedAmountForIndividual(
    noOfSpouseOrWidow: json['noOfSpouseOrWidow'] as int?,
    noOfSonsOrDaughters: json['noOfSonsOrDaughters'] as int?,
    noOfDeceasedOrSons: json['noOfDeceasedOrSons'] as int?,
    noOfParents: json['noOfParents'] as int?,
    noOfBrothersOrSisters: json['noOfBrothersOrSisters'] as int?,
  );
}

Map<String, dynamic> _$MinimumDeservedAmountForIndividualToJson(
        MinimumDeservedAmountForIndividual instance) =>
    <String, dynamic>{
      'noOfSpouseOrWidow': instance.noOfSpouseOrWidow,
      'noOfSonsOrDaughters': instance.noOfSonsOrDaughters,
      'noOfDeceasedOrSons': instance.noOfDeceasedOrSons,
      'noOfParents': instance.noOfParents,
      'noOfBrothersOrSisters': instance.noOfBrothersOrSisters,
    };
