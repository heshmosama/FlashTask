import 'package:grsia/domain/Entities/PastServiceAmount/response/total_past_service_period.dart' as entity;
import 'package:json_annotation/json_annotation.dart';

part 'total_past_service_period.g.dart'; 

@JsonSerializable(nullable: false,ignoreUnannotated: false)
class TotalPastServicePeriod extends entity.TotalPastServicePeriod {
  @JsonKey(name: "day")
  final  int? day;
  @JsonKey(name: "month")
  final  int? month;
  @JsonKey(name: "year")
  final  int? year;

  TotalPastServicePeriod({this.day, this.month, this.year}):super(
    day: day,
    month: month,
    year: year
  );

  factory TotalPastServicePeriod.fromJson(Map<String, dynamic> json) => _$TotalPastServicePeriodFromJson(json);

  Map<String, dynamic> toJson() => _$TotalPastServicePeriodToJson(this);
}

