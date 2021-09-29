import 'package:grsia/domain/Entities/CalculateBeneficiariesShares/response/calculate_beneficiaries_shares_response.dart'
    as entity;
import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'calculate_beneficiaries_shares_response.g.dart';

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class CalculateBeneficiariesSharesResponse
    extends entity.CalculateBeneficiariesSharesResponse {
  @JsonKey(name: "data")
  final Data? data;
  @JsonKey(name: "responseStatus")
  final int? responseStatus;
  @JsonKey(name: "arabicErrorMessage")
  final String? arabicErrorMessage;
  @JsonKey(name: "englishErrorMessage")
  final String? englishErrorMessage;

  CalculateBeneficiariesSharesResponse(
      {this.data,
      this.responseStatus,
      this.arabicErrorMessage,
      this.englishErrorMessage})
      : super(
            data: data,
            responseStatus: responseStatus,
            arabicErrorMessage: arabicErrorMessage,
            englishErrorMessage: englishErrorMessage);

  factory CalculateBeneficiariesSharesResponse.fromJson(
          Map<String, dynamic> json) =>
      _$CalculateBeneficiariesSharesResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$CalculateBeneficiariesSharesResponseToJson(this);
}
