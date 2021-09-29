import 'package:grsia/data/models/CalculateServicePeriod/response/period.dart';
import 'package:grsia/data/models/CalculateServicePeriod/response/total_service_period.dart';
import 'package:grsia/domain/Entities/CalculateServicePeriod/response/data.dart' as entity;
import 'package:grsia/domain/Entities/CalculateServicePeriod/response/period.dart';
import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart'; 

@JsonSerializable(nullable: false,ignoreUnannotated: false)
class Data extends entity.Data {
  @JsonKey(name: "totalServicePeriod")
  final  TotalServicePeriod? totalServicePeriod;
  @JsonKey(name: "periods")
  final  List<Period>? periodsmodel;

  Data({this.totalServicePeriod,this.periodsmodel}) :super(
      totalServicePeriod:totalServicePeriod,
      periods:periodsmodel
  );

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

