import 'package:json_annotation/json_annotation.dart';

import 'beneficiary.dart';

part 'calculate_beneficiaries_shares.g.dart';

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class CalculateBeneficiariesShares {
  @JsonKey(name: "deservedPensionSalary")
  final int deservedPensionSalary;
  @JsonKey(name: "pensionerGender")
  final String pensionerGender;
  @JsonKey(name: "beneficiary")
  final Beneficiary beneficiary;

  CalculateBeneficiariesShares(
      {
        required this.deservedPensionSalary,required this.pensionerGender,required this.beneficiary});

  factory CalculateBeneficiariesShares.fromJson(Map<String, dynamic> json) =>
      _$CalculateBeneficiariesSharesFromJson(json);

  Map<String, dynamic> toJson() => _$CalculateBeneficiariesSharesToJson(this);
}
