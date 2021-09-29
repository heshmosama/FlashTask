import 'package:grsia/data/models/UnpaidLeaveAmount/response/total_unpaid_service_period.dart';
import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart'; 

@JsonSerializable(nullable: false,ignoreUnannotated: false)
class Data {
  @JsonKey(name: "totalUnpaidServicePeriod")
  final  TotalUnpaidServicePeriod? totalUnpaidServicePeriod;
  @JsonKey(name: "totalOfDueAmount")
  final  int? totalOfDueAmount;

  Data({this.totalUnpaidServicePeriod, this.totalOfDueAmount});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
