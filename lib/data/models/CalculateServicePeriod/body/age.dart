import 'package:json_annotation/json_annotation.dart'; 

part 'age.g.dart'; 

@JsonSerializable(nullable: false,ignoreUnannotated: false)
class Age {
  @JsonKey(name: "day")
  final  int day;
  @JsonKey(name: "month")
  final  int month;
  @JsonKey(name: "year")
  final  int year;

  Age({required this.day,required this.month,required this.year});

  factory Age.fromJson(Map<String, dynamic> json) => _$AgeFromJson(json);

  Map<String, dynamic> toJson() => _$AgeToJson(this);
}

