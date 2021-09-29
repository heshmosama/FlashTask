import 'package:grsia/data/models/AssumeServiceAmount/body/assume_service_period.dart'
    as model;
import 'package:json_annotation/json_annotation.dart';

part 'assume_service_period.g.dart';

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class AssumeServicePeriod extends model.AssumeServicePeriod {
  @JsonKey(name: "day")
  final int? day;
  @JsonKey(name: "month")
  final int? month;
  @JsonKey(name: "year")
  final int? year;

  AssumeServicePeriod({this.day, this.month, this.year})
      : super(day: day, month: month, year: year);

  factory AssumeServicePeriod.fromJson(Map<String, dynamic> json) =>
      _$AssumeServicePeriodFromJson(json);

  Map<String, dynamic> toJson() => _$AssumeServicePeriodToJson(this);
}
