// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculate_beneficiaries_shares.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CalculateBeneficiariesShares _$CalculateBeneficiariesSharesFromJson(
    Map<String, dynamic> json) {
  return CalculateBeneficiariesShares(
    deservedPensionSalary: json['deservedPensionSalary'] as int,
    pensionerGender: json['pensionerGender'] as String,
    beneficiary:
        Beneficiary.fromJson(json['beneficiary'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CalculateBeneficiariesSharesToJson(
        CalculateBeneficiariesShares instance) =>
    <String, dynamic>{
      'deservedPensionSalary': instance.deservedPensionSalary,
      'pensionerGender': instance.pensionerGender,
      'beneficiary': instance.beneficiary,
    };
