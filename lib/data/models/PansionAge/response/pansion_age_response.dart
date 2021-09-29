import 'package:grsia/data/models/PansionAge/response/data.dart';
import 'package:grsia/domain/Entities/PansionAge/response/pansion_age_response.dart'
    as entity;
import 'package:json_annotation/json_annotation.dart';

part 'pansion_age_response.g.dart';

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class PansionAgeResponse extends entity.PansionAgeResponse {
  @JsonKey(name: "data")
  final Data? data;
  @JsonKey(name: "responseStatus")
  final int? responseStatus;
  @JsonKey(name: "arabicErrorMessage")
  final String? arabicErrorMessage;
  @JsonKey(name: "englishErrorMessage")
  final String? englishErrorMessage;

  PansionAgeResponse(
      {this.data,
      this.responseStatus,
      this.arabicErrorMessage,
      this.englishErrorMessage})
      : super(
            data: data,
            responseStatus: responseStatus,
            arabicErrorMessage: arabicErrorMessage,
            englishErrorMessage: englishErrorMessage);

  factory PansionAgeResponse.fromJson(Map<String, dynamic> json) =>
      _$PansionAgeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PansionAgeResponseToJson(this);
}
