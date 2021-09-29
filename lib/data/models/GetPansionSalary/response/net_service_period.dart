import 'package:grsia/domain/Entities/GetPansionSalary/response/net_service_period.dart'as entity;
import 'package:json_annotation/json_annotation.dart';

part 'net_service_period.g.dart'; 

@JsonSerializable(nullable: false,ignoreUnannotated: false)
class NetServicePeriod extends entity.NetServicePeriod {
  @JsonKey(name: "day")
  final  int? day;
  @JsonKey(name: "month")
  final  int? month;
  @JsonKey(name: "year")
  final  int? year;

  NetServicePeriod({this.day, this.month, this.year}) : super(
    day: day,
    month: month,
    year: year
  );

  factory NetServicePeriod.fromJson(Map<String, dynamic> json) => _$NetServicePeriodFromJson(json);

  Map<String, dynamic> toJson() => _$NetServicePeriodToJson(this);
}

