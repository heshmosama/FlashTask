import 'package:grsia/data/models/CalculateServicePeriod/response/data.dart';
import 'package:grsia/domain/Entities/CalculateServicePeriod/response/calculate_service_period_response.dart'
    as entity;
import 'package:json_annotation/json_annotation.dart';

part 'calculate_service_period_response.g.dart';

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class CalculateServicePeriodResponse
    extends entity.CalculateServicePeriodResponse {
  @JsonKey(name: "data")
  final Data? data;
  @JsonKey(name: "responseStatus")
  final int? responseStatus;
  @JsonKey(name: "arabicErrorMessage")
  final String? arabicErrorMessage;
  @JsonKey(name: "englishErrorMessage")
  final String? englishErrorMessage;

  CalculateServicePeriodResponse(
      {this.data,
      this.responseStatus,
      this.arabicErrorMessage,
      this.englishErrorMessage})
      : super(
            data: data,
            responseStatus: responseStatus,
            arabicErrorMessage: arabicErrorMessage,
            englishErrorMessage: englishErrorMessage);

  factory CalculateServicePeriodResponse.fromJson(Map<String, dynamic> json) =>
      _$CalculateServicePeriodResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CalculateServicePeriodResponseToJson(this);
}
