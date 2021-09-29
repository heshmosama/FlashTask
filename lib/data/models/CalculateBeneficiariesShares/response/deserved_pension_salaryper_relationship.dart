import 'package:grsia/domain/Entities/CalculateBeneficiariesShares/response/deserved_pension_salaryper_relationship.dart'
    as entity;
import 'package:json_annotation/json_annotation.dart';

part 'deserved_pension_salaryper_relationship.g.dart';

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class DeservedPensionSalaryperRelationship
    extends entity.DeservedPensionSalaryperRelationship {
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

  DeservedPensionSalaryperRelationship(
      {this.noOfSpouseOrWidow,
      this.noOfSonsOrDaughters,
      this.noOfDeceasedOrSons,
      this.noOfParents,
      this.noOfBrothersOrSisters}):super(
    noOfSpouseOrWidow: noOfSpouseOrWidow,
    noOfSonsOrDaughters: noOfSonsOrDaughters,
    noOfDeceasedOrSons: noOfDeceasedOrSons,
    noOfParents: noOfParents,
    noOfBrothersOrSisters: noOfBrothersOrSisters
  );

  factory DeservedPensionSalaryperRelationship.fromJson(
          Map<String, dynamic> json) =>
      _$DeservedPensionSalaryperRelationshipFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DeservedPensionSalaryperRelationshipToJson(this);
}
