// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beneficiary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Beneficiary _$BeneficiaryFromJson(Map<String, dynamic> json) {
  return Beneficiary(
    noOfSpouseOrWidow: json['noOfSpouseOrWidow'] as int,
    noOfSonsOrDaughters: json['noOfSonsOrDaughters'] as int,
    noOfDeceasedOrSons: json['noOfDeceasedOrSons'] as int,
    noOfParents: json['noOfParents'] as int,
    noOfBrothersOrSisters: json['noOfBrothersOrSisters'] as int,
  );
}

Map<String, dynamic> _$BeneficiaryToJson(Beneficiary instance) =>
    <String, dynamic>{
      'noOfSpouseOrWidow': instance.noOfSpouseOrWidow,
      'noOfSonsOrDaughters': instance.noOfSonsOrDaughters,
      'noOfDeceasedOrSons': instance.noOfDeceasedOrSons,
      'noOfParents': instance.noOfParents,
      'noOfBrothersOrSisters': instance.noOfBrothersOrSisters,
    };
