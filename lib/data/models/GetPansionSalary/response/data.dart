import 'package:grsia/data/models/GetPansionSalary/response/rounded_age_at_end_of_service.dart';
import 'package:grsia/domain/Entities/GetPansionSalary/response/data.dart'
    as entity;
import 'package:json_annotation/json_annotation.dart';

import 'age_at_end_of_service.dart';
import 'net_service_period.dart';

part 'data.g.dart';

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class Data extends entity.Data {
  @JsonKey(name: "ageAtEndOfService")
  final AgeAtEndOfService? ageAtEndOfService;
  @JsonKey(name: "roundedAgeAtEndOfService")
  final RoundedAgeAtEndOfService? roundedAgeAtEndOfService;
  @JsonKey(name: "netServicePeriod")
  final NetServicePeriod? netServicePeriod;
  @JsonKey(name: "pansionSalary")
  final int? pansionSalary;
  @JsonKey(name: "decreasedAmountOfPansionSalary")
  final int? decreasedAmountOfPansionSalary;
  @JsonKey(name: "deductionPercentage")
  final int? deductionPercentage;
  @JsonKey(name: "deductionAmount")
  final int? deductionAmount;
  @JsonKey(name: "deservedPensionSalary")
  final int? deservedPensionSalary;

  Data(
      {this.ageAtEndOfService,
      this.roundedAgeAtEndOfService,
      this.netServicePeriod,
      this.pansionSalary,
      this.decreasedAmountOfPansionSalary,
      this.deductionPercentage,
      this.deductionAmount,
      this.deservedPensionSalary})
      : super(
            ageAtEndOfService: ageAtEndOfService,
            roundedAgeAtEndOfService: roundedAgeAtEndOfService,
            netServicePeriod: netServicePeriod,
            pansionSalary: pansionSalary,
            decreasedAmountOfPansionSalary: decreasedAmountOfPansionSalary,
            deductionPercentage: deductionPercentage,
            deductionAmount: deductionAmount,
            deservedPensionSalary: deservedPensionSalary);

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
