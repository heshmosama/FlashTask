import 'package:json_annotation/json_annotation.dart'; 


@JsonSerializable(nullable: false,ignoreUnannotated: false)
class MinimumDeservedAmountForIndividual {
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

  MinimumDeservedAmountForIndividual({this.noOfSpouseOrWidow, this.noOfSonsOrDaughters, this.noOfDeceasedOrSons, this.noOfParents, this.noOfBrothersOrSisters});


}

