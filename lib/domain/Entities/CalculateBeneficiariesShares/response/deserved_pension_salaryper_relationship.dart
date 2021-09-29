import 'package:json_annotation/json_annotation.dart'; 



@JsonSerializable(nullable: false,ignoreUnannotated: false)
class DeservedPensionSalaryperRelationship {
  @JsonKey(name: "noOfSpouseOrWidow")
  final  int? noOfSpouseOrWidow;
  @JsonKey(name: "noOfSonsOrDaughters")
  final  int? noOfSonsOrDaughters;
  @JsonKey(name: "noOfDeceasedOrSons")
  final  int? noOfDeceasedOrSons;
  @JsonKey(name: "noOfParents")
  final  int? noOfParents;
  @JsonKey(name: "noOfBrothersOrSisters")
  final  int? noOfBrothersOrSisters;

  DeservedPensionSalaryperRelationship({this.noOfSpouseOrWidow, this.noOfSonsOrDaughters, this.noOfDeceasedOrSons, this.noOfParents, this.noOfBrothersOrSisters});

}

