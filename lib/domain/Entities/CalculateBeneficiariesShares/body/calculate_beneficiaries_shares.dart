import 'package:grsia/data/models/CalculateBeneficiariesShares/body/calculate_beneficiaries_shares.dart' as model;
import 'package:grsia/domain/Entities/CalculateBeneficiariesShares/body/beneficiary.dart';
import 'package:json_annotation/json_annotation.dart';


@JsonSerializable(nullable: false, ignoreUnannotated: false)
class CalculateBeneficiariesShares extends model.CalculateBeneficiariesShares {
  @JsonKey(name: "deservedPensionSalary")
  final int deservedPensionSalary;
  @JsonKey(name: "pensionerGender")
  final String pensionerGender;
  @JsonKey(name: "beneficiary")
  final Beneficiary beneficiary;

  CalculateBeneficiariesShares({
    required this.deservedPensionSalary, required this.pensionerGender, required this.beneficiary})

      :

  super(
        deservedPensionSalary: deservedPensionSalary,
        pensionerGender: pensionerGender,
        beneficiary: beneficiary
      );

}
