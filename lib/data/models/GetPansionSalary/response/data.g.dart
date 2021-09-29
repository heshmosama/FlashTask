// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    ageAtEndOfService: json['ageAtEndOfService'] == null
        ? null
        : AgeAtEndOfService.fromJson(
            json['ageAtEndOfService'] as Map<String, dynamic>),
    roundedAgeAtEndOfService: json['roundedAgeAtEndOfService'] == null
        ? null
        : RoundedAgeAtEndOfService.fromJson(
            json['roundedAgeAtEndOfService'] as Map<String, dynamic>),
    netServicePeriod: json['netServicePeriod'] == null
        ? null
        : NetServicePeriod.fromJson(
            json['netServicePeriod'] as Map<String, dynamic>),
    pansionSalary: json['pansionSalary'] as int?,
    decreasedAmountOfPansionSalary:
        json['decreasedAmountOfPansionSalary'] as int?,
    deductionPercentage: json['deductionPercentage'] as int?,
    deductionAmount: json['deductionAmount'] as int?,
    deservedPensionSalary: json['deservedPensionSalary'] as int?,
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'ageAtEndOfService': instance.ageAtEndOfService,
      'roundedAgeAtEndOfService': instance.roundedAgeAtEndOfService,
      'netServicePeriod': instance.netServicePeriod,
      'pansionSalary': instance.pansionSalary,
      'decreasedAmountOfPansionSalary': instance.decreasedAmountOfPansionSalary,
      'deductionPercentage': instance.deductionPercentage,
      'deductionAmount': instance.deductionAmount,
      'deservedPensionSalary': instance.deservedPensionSalary,
    };
