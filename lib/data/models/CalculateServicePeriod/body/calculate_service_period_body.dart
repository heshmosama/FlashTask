import 'package:grsia/data/models/CalculateServicePeriod/body/period.dart';
import 'package:json_annotation/json_annotation.dart';

part 'calculate_service_period_body.g.dart'; 

@JsonSerializable(nullable: false,ignoreUnannotated: false)
class CalculateServicePeriodBody {
  @JsonKey(name: "periods")
  final  List<Period> periods;
  @JsonKey(name: "calculationReason")
  final  String calculationReason;

  CalculateServicePeriodBody({required this.periods,required this.calculationReason});

  factory CalculateServicePeriodBody.fromJson(Map<String, dynamic> json) => _$CalculateServicePeriodBodyFromJson(json);

  Map<String, dynamic> toJson() => _$CalculateServicePeriodBodyToJson(this);
}

