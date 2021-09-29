import 'package:grsia/domain/Entities/CalculateServicePeriod/response/total_service_period.dart' as entity;
import 'package:json_annotation/json_annotation.dart';

part 'total_service_period.g.dart'; 

@JsonSerializable(nullable: false,ignoreUnannotated: false)
class TotalServicePeriod extends entity.TotalServicePeriod {
  @JsonKey(name: "day")
  final  int? day;
  @JsonKey(name: "month")
  final  int? month;
  @JsonKey(name: "year")
  final  int? year;

  TotalServicePeriod({this.day, this.month, this.year});

  factory TotalServicePeriod.fromJson(Map<String, dynamic> json) => _$TotalServicePeriodFromJson(json);

  Map<String, dynamic> toJson() => _$TotalServicePeriodToJson(this);
}

