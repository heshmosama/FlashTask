import 'package:json_annotation/json_annotation.dart';

part 'beneficiary.g.dart';

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class Beneficiary {
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
      required this.noOfBrothersOrSisters});

  factory Beneficiary.fromJson(Map<String, dynamic> json) =>
      _$BeneficiaryFromJson(json);

  Map<String, dynamic> toJson() => _$BeneficiaryToJson(this);
}
