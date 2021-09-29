import 'package:json_annotation/json_annotation.dart'; 

part 'assume_service_period.g.dart'; 

@JsonSerializable(nullable: false,ignoreUnannotated: false)
class AssumeServicePeriod {
  @JsonKey(name: "day")
  final  int? day;
  @JsonKey(name: "month")
  final  int? month;
  @JsonKey(name: "year")
  final  int? year;

  AssumeServicePeriod({this.day, this.month, this.year});

  factory AssumeServicePeriod.fromJson(Map<String, dynamic> json) => _$AssumeServicePeriodFromJson(json);

  Map<String, dynamic> toJson() => _$AssumeServicePeriodToJson(this);
}

