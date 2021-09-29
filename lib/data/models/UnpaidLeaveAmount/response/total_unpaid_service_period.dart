import 'package:json_annotation/json_annotation.dart'; 

part 'total_unpaid_service_period.g.dart'; 

@JsonSerializable(nullable: false,ignoreUnannotated: false)
class TotalUnpaidServicePeriod {
  @JsonKey(name: "day")
  final  int? day;
  @JsonKey(name: "month")
  final  int? month;
  @JsonKey(name: "year")
  final  int? year;

  TotalUnpaidServicePeriod({this.day, this.month, this.year});

  factory TotalUnpaidServicePeriod.fromJson(Map<String, dynamic> json) => _$TotalUnpaidServicePeriodFromJson(json);

  Map<String, dynamic> toJson() => _$TotalUnpaidServicePeriodToJson(this);
}

