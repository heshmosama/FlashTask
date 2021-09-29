import 'package:grsia/domain/Entities/PansionAge/response/age.dart' as entity;
import 'package:json_annotation/json_annotation.dart';

part 'age.g.dart'; 

@JsonSerializable(nullable: false,ignoreUnannotated: false)
class Age extends entity.Age{
  @JsonKey(name: "day")
  final  int? day;
  @JsonKey(name: "month")
  final  int? month;
  @JsonKey(name: "year")
  final  int? year;

  Age({this.day, this.month, this.year}):super(
    day: day,
    month: month,
    year: year
  );

  factory Age.fromJson(Map<String, dynamic> json) => _$AgeFromJson(json);

  Map<String, dynamic> toJson() => _$AgeToJson(this);
}

