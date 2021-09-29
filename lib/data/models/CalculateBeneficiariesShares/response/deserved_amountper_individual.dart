import 'package:grsia/domain/Entities/CalculateBeneficiariesShares/response/deserved_amountper_individual.dart'
    as entity;
import 'package:json_annotation/json_annotation.dart';

part 'deserved_amountper_individual.g.dart';

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class DeservedAmountperIndividual extends entity.DeservedAmountperIndividual {
  @JsonKey(name: "noOfSpouseOrWidow")
  final int? noOfSpouseOrWidow;
  @JsonKey(name: "noOfSonsOrDaughters")
  final int? noOfSonsOrDaughters;
  @JsonKey(name: "noOfDeceasedOrSons")
  final int? noOfDeceasedOrSons;
  @JsonKey(name: "noOfParents")
  final int? noOfParents;
  @JsonKey(name: "noOfBrothersOrSisters")
  final int? noOfBrothersOrSisters;

  DeservedAmountperIndividual(
      {this.noOfSpouseOrWidow,
      this.noOfSonsOrDaughters,
      this.noOfDeceasedOrSons,
      this.noOfParents,
      this.noOfBrothersOrSisters})
      : super(
            noOfSpouseOrWidow: noOfSpouseOrWidow,
            noOfSonsOrDaughters: noOfSonsOrDaughters,
            noOfDeceasedOrSons: noOfDeceasedOrSons,
            noOfParents: noOfParents,
            noOfBrothersOrSisters: noOfBrothersOrSisters);

  factory DeservedAmountperIndividual.fromJson(Map<String, dynamic> json) =>
      _$DeservedAmountperIndividualFromJson(json);

  Map<String, dynamic> toJson() => _$DeservedAmountperIndividualToJson(this);
}
