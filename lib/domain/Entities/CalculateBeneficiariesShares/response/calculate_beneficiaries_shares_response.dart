import 'package:json_annotation/json_annotation.dart';

import 'data.dart';



@JsonSerializable(nullable: false,ignoreUnannotated: false)
class CalculateBeneficiariesSharesResponse {
  @JsonKey(name: "data")
  final Data? data;
  @JsonKey(name: "responseStatus")
  final int? responseStatus;
  @JsonKey(name: "arabicErrorMessage")
  final String? arabicErrorMessage;
  @JsonKey(name: "englishErrorMessage")
  final String? englishErrorMessage;

  CalculateBeneficiariesSharesResponse(
      {this.data, this.responseStatus, this.arabicErrorMessage, this.englishErrorMessage});

}

