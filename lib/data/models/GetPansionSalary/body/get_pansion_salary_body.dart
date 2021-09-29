import 'package:json_annotation/json_annotation.dart';

part 'get_pansion_salary_body.g.dart';

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class GetPansionSalaryBody {
  @JsonKey(name: "retirmentSystem")
  final String retirmentSystem;
  @JsonKey(name: "retirmentType")
  final String retirmentType;
  @JsonKey(name: "dateOfBirth")
  final String dateOfBirth;
  @JsonKey(name: "gender")
  final String gender;
  @JsonKey(name: "basicSalary")
  final int basicSalary;
  @JsonKey(name: "socialAllowence")
  final int socialAllowence;
  @JsonKey(name: "day")
  final int day;
  @JsonKey(name: "month")
  final int month;
  @JsonKey(name: "year")
  final int year;
  @JsonKey(name: "endOfServiceReason")
  final String endOfServiceReason;
  @JsonKey(name: "endOfServiceDate")
  final String endOfServiceDate;

  GetPansionSalaryBody(
      {required this.retirmentSystem,
      required this.retirmentType,
      required this.dateOfBirth,
      required this.gender,
      required this.basicSalary,
      required this.socialAllowence,
      required this.day,
      required this.month,
      required this.year,
      required this.endOfServiceReason,
      required this.endOfServiceDate});

  factory GetPansionSalaryBody.fromJson(Map<String, dynamic> json) =>
      _$GetPansionSalaryBodyFromJson(json);

  Map<String, dynamic> toJson() => _$GetPansionSalaryBodyToJson(this);
}
