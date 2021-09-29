import 'package:grsia/data/models/PastServiceAmount/response/data.dart';
import 'package:grsia/domain/Entities/PastServiceAmount/response/past_service_amount_response.dart' as entity;
import 'package:json_annotation/json_annotation.dart';

part 'past_service_amount_response.g.dart';

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class PastServiceAmountResponse extends entity.PastServiceAmountResponse {
  @JsonKey(name: "data")
  final Data? data;
  @JsonKey(name: "responseStatus")
  final int? responseStatus;
  @JsonKey(name: "arabicErrorMessage")
  final String? arabicErrorMessage;
  @JsonKey(name: "englishErrorMessage")
  final String? englishErrorMessage;

  PastServiceAmountResponse(
      {this.data,
      this.responseStatus,
      this.arabicErrorMessage,
      this.englishErrorMessage})
      : super(
            data: data,
            responseStatus: responseStatus,
            arabicErrorMessage: arabicErrorMessage,
            englishErrorMessage: englishErrorMessage);

  factory PastServiceAmountResponse.fromJson(Map<String, dynamic> json) =>
      _$PastServiceAmountResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PastServiceAmountResponseToJson(this);
}
