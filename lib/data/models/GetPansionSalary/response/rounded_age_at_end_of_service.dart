import 'package:grsia/domain/Entities/GetPansionSalary/response/rounded_age_at_end_of_service.dart'
    as entity;
import 'package:json_annotation/json_annotation.dart';

part 'rounded_age_at_end_of_service.g.dart';

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class RoundedAgeAtEndOfService extends entity.RoundedAgeAtEndOfService {
  @JsonKey(name: "day")
  final int? day;
  @JsonKey(name: "month")
  final int? month;
  @JsonKey(name: "year")
  final int? year;

  RoundedAgeAtEndOfService({this.day, this.month, this.year})
      : super(day: day, month: month, year: year);

  factory RoundedAgeAtEndOfService.fromJson(Map<String, dynamic> json) =>
      _$RoundedAgeAtEndOfServiceFromJson(json);

  Map<String, dynamic> toJson() => _$RoundedAgeAtEndOfServiceToJson(this);
}
