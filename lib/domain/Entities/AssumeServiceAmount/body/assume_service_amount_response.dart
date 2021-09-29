import 'package:grsia/data/models/AssumeServiceAmount/body/assume_service_amount_response.dart'
    as model;
import 'package:grsia/data/models/AssumeServiceAmount/body/assume_service_period.dart';
import 'package:json_annotation/json_annotation.dart';

part 'assume_service_amount_response.g.dart';

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class AssumeServiceAmountResponse extends model.AssumeServiceAmountResponse {
  @JsonKey(name: "assumeServicePeriod")
  final AssumeServicePeriod? assumeServicePeriod;
  @JsonKey(name: "totalOfBasicSalaryAndSocialAllowanceOnTheDateOfRequest")
  final int? totalOfBasicSalaryAndSocialAllowanceOnTheDateOfRequest;

  AssumeServiceAmountResponse(
      {this.assumeServicePeriod,
      this.totalOfBasicSalaryAndSocialAllowanceOnTheDateOfRequest})
      : super(
            assumeServicePeriod: assumeServicePeriod,
            totalOfBasicSalaryAndSocialAllowanceOnTheDateOfRequest:
                totalOfBasicSalaryAndSocialAllowanceOnTheDateOfRequest);

  factory AssumeServiceAmountResponse.fromJson(Map<String, dynamic> json) =>
      _$AssumeServiceAmountResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AssumeServiceAmountResponseToJson(this);
}
