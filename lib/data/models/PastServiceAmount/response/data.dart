import 'package:grsia/data/models/PastServiceAmount/response/past_service_period.dart';
import 'package:grsia/data/models/PastServiceAmount/response/total_past_service_period.dart';
import 'package:grsia/domain/Entities/PastServiceAmount/response/data.dart' as entity;
import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class Data extends entity.Data {
  @JsonKey(name: "pastServicePeriods")
  final List<PastServicePeriod>? pastServicePeriods;
  @JsonKey(name: "totalPastServicePeriod")
  final TotalPastServicePeriod? totalPastServicePeriod;
  @JsonKey(name: "totalAmount")
  final int? totalAmount;
  @JsonKey(name: "totalOfBasicSalaryAndSocialAllowanceOnTheDateOfRequest")
  final int? totalOfBasicSalaryAndSocialAllowanceOnTheDateOfRequest;

  Data(
      {this.pastServicePeriods,
      this.totalPastServicePeriod,
      this.totalAmount,
      this.totalOfBasicSalaryAndSocialAllowanceOnTheDateOfRequest})
      : super(
            pastServicePeriods: pastServicePeriods,
            totalPastServicePeriod: totalPastServicePeriod,
            totalAmount: totalAmount,
            totalOfBasicSalaryAndSocialAllowanceOnTheDateOfRequest:
                totalOfBasicSalaryAndSocialAllowanceOnTheDateOfRequest);

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
