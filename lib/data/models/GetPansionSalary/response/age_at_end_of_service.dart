import 'package:grsia/domain/Entities/GetPansionSalary/response/age_at_end_of_service.dart' as entity;
import 'package:json_annotation/json_annotation.dart';

part 'age_at_end_of_service.g.dart'; 

@JsonSerializable(nullable: false,ignoreUnannotated: false)
class AgeAtEndOfService extends entity.AgeAtEndOfService {
  @JsonKey(name: "day")
  final  int? day;
  @JsonKey(name: "month")
  final  int? month;
  @JsonKey(name: "year")
  final  int? year;

  AgeAtEndOfService({this.day, this.month, this.year}) : super(day: day,month: month,year: year);

  factory AgeAtEndOfService.fromJson(Map<String, dynamic> json) => _$AgeAtEndOfServiceFromJson(json);

  Map<String, dynamic> toJson() => _$AgeAtEndOfServiceToJson(this);
}

