import 'package:grsia/domain/Entities/CalculateBeneficiariesShares/response/data.dart'
    as entity;
import 'package:json_annotation/json_annotation.dart';

import 'deserved_amountper_individual.dart';
import 'deserved_pension_salaryper_relationship.dart';
import 'minimum_deserved_amount_for_individual.dart';

part 'data.g.dart';

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class Data extends entity.Data {
  @JsonKey(name: "deservedPensionSalaryperRelationship")
  final DeservedPensionSalaryperRelationship?
      deservedPensionSalaryperRelationship;
  @JsonKey(name: "deservedAmountperIndividual")
  final DeservedAmountperIndividual? deservedAmountperIndividual;
  @JsonKey(name: "minimumDeservedAmountForIndividual")
  final MinimumDeservedAmountForIndividual? minimumDeservedAmountForIndividual;

  Data(
      {this.deservedPensionSalaryperRelationship,
      this.deservedAmountperIndividual,
      this.minimumDeservedAmountForIndividual}):super(
    deservedPensionSalaryperRelationship: deservedPensionSalaryperRelationship,
    deservedAmountperIndividual: deservedAmountperIndividual,
    minimumDeservedAmountForIndividual: minimumDeservedAmountForIndividual
  );


  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
