import 'package:json_annotation/json_annotation.dart'; 

part 'pansion_age_body.g.dart'; 

@JsonSerializable(nullable: false,ignoreUnannotated: false)
class PansionAgeBody {
  @JsonKey(name: "dateOfBirth")
  final  String dateOfBirth;
  @JsonKey(name: "to")
  final  String to;
  @JsonKey(name: "calculationReason")
  final  String calculationReason;

  PansionAgeBody({required this.dateOfBirth,required this.to,required this.calculationReason});

  factory PansionAgeBody.fromJson(Map<String, dynamic> json) => _$PansionAgeBodyFromJson(json);

  Map<String, dynamic> toJson() => _$PansionAgeBodyToJson(this);
}

