import 'package:grsia/data/models/CalculateBeneficiariesShares/body/beneficiary.dart'
    as model;
import 'package:json_annotation/json_annotation.dart';



@JsonSerializable(nullable: false, ignoreUnannotated: false)
class Beneficiary extends model.Beneficiary {
  @JsonKey(name: "noOfSpouseOrWidow")
  final int noOfSpouseOrWidow;
  @JsonKey(name: "noOfSonsOrDaughters")
  final int noOfSonsOrDaughters;
  @JsonKey(name: "noOfDeceasedOrSons")
  final int noOfDeceasedOrSons;
  @JsonKey(name: "noOfParents")
  final int noOfParents;
  @JsonKey(name: "noOfBrothersOrSisters")
  final int noOfBrothersOrSisters;

  Beneficiary(
      {required this.noOfSpouseOrWidow,
      required this.noOfSonsOrDaughters,
      required this.noOfDeceasedOrSons,
      required this.noOfParents,
      required this.noOfBrothersOrSisters}) :super(
    noOfSpouseOrWidow: noOfSpouseOrWidow,
    noOfSonsOrDaughters: noOfSonsOrDaughters,
    noOfDeceasedOrSons: noOfDeceasedOrSons,
    noOfParents: noOfParents,
    noOfBrothersOrSisters: noOfBrothersOrSisters
  );

}
