import 'package:json_annotation/json_annotation.dart'; 

part 'my_property.g.dart'; 

@JsonSerializable(nullable: false,ignoreUnannotated: false)
class MyProperty {
  @JsonKey(name: "day")
  final  int? day;
  @JsonKey(name: "month")
  final  int? month;
  @JsonKey(name: "year")
  final  int? year;

  MyProperty({this.day, this.month, this.year});

  factory MyProperty.fromJson(Map<String, dynamic> json) => _$MyPropertyFromJson(json);

  Map<String, dynamic> toJson() => _$MyPropertyToJson(this);
}

