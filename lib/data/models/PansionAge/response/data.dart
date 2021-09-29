import 'package:grsia/data/models/PansionAge/response/age.dart';
import 'package:grsia/domain/Entities/PansionAge/response/data.dart' as entity;
import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable(nullable: false,ignoreUnannotated: false)
class Data extends entity.Data {
  @JsonKey(name: "from")
  final  String? from;
  @JsonKey(name: "to")
  final  String? to;
  @JsonKey(name: "age")
  final  Age? age;

  Data({this.from, this.to, this.age}) :super(
    from: from,
    to: to,
    age: age
  );

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}



