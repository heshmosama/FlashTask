import 'package:grsia/domain/Entities/CalculateBeneficiariesShares/response/minimum_deserved_amount_for_individual.dart'
    as entity;
import 'package:json_annotation/json_annotation.dart';

part 'minimum_deserved_amount_for_individual.g.dart';

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class MinimumDeservedAmountForIndividual
    extends entity.MinimumDeservedAmountForIndividual {
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

  MinimumDeservedAmountForIndividual(
      {this.noOfSpouseOrWidow,
      this.noOfSonsOrDaughters,
      this.noOfDeceasedOrSons,
      this.noOfParents,
      this.noOfBrothersOrSisters}):super(
      noOfSpouseOrWidow:noOfSpouseOrWidow,
      noOfSonsOrDaughters:noOfSonsOrDaughters,
      noOfDeceasedOrSons:noOfDeceasedOrSons,
      noOfParents:noOfParents,
      noOfBrothersOrSisters:noOfBrothersOrSisters
  );

  factory MinimumDeservedAmountForIndividual.fromJson(
          Map<String, dynamic> json) =>
      _$MinimumDeservedAmountForIndividualFromJson(json);

  Map<String, dynamic> toJson() =>
      _$MinimumDeservedAmountForIndividualToJson(this);
}
