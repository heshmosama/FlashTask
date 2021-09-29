import 'package:json_annotation/json_annotation.dart';

import 'deserved_amountper_individual.dart';
import 'deserved_pension_salaryper_relationship.dart';
import 'minimum_deserved_amount_for_individual.dart';



@JsonSerializable(nullable: false,ignoreUnannotated: false)
class Data {
  @JsonKey(name: "deservedPensionSalaryperRelationship")
  final  DeservedPensionSalaryperRelationship? deservedPensionSalaryperRelationship;
  @JsonKey(name: "deservedAmountperIndividual")
  final  DeservedAmountperIndividual? deservedAmountperIndividual;
  @JsonKey(name: "minimumDeservedAmountForIndividual")
  final  MinimumDeservedAmountForIndividual? minimumDeservedAmountForIndividual;

  Data({this.deservedPensionSalaryperRelationship, this.deservedAmountperIndividual, this.minimumDeservedAmountForIndividual});
}

