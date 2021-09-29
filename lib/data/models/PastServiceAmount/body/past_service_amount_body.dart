import 'package:grsia/data/models/PastServiceAmount/body/past_service_periods.dart';
import 'package:json_annotation/json_annotation.dart';

part 'past_service_amount_body.g.dart'; 

@JsonSerializable(nullable: false,ignoreUnannotated: false)
class PastServiceAmountBody {
  @JsonKey(name: "pastServicePeriods")
  final  List<PastServicePeriod> pastServicePeriods;
  @JsonKey(name: "totalOfBasicSalaryAndSocialAllowanceOnTheDateOfRequest")
  final  int totalOfBasicSalaryAndSocialAllowanceOnTheDateOfRequest;

  PastServiceAmountBody({required this.pastServicePeriods,required this.totalOfBasicSalaryAndSocialAllowanceOnTheDateOfRequest});

  factory PastServiceAmountBody.fromJson(Map<String, dynamic> json) => _$PastServiceAmountBodyFromJson(json);

  Map<String, dynamic> toJson() => _$PastServiceAmountBodyToJson(this);
}

