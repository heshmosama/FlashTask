import 'package:grsia/data/models/UnpaidLeaveAmount/response/data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'unpaid_leave_amount_response.g.dart'; 

@JsonSerializable(nullable: false,ignoreUnannotated: false)
class UnpaidLeaveAmountResponse {
  @JsonKey(name: "data")
  final  Data? data;
  @JsonKey(name: "responseStatus")
  final  int? responseStatus;
  @JsonKey(name: "arabicErrorMessage")
  final  String? arabicErrorMessage;
  @JsonKey(name: "englishErrorMessage")
  final  String? englishErrorMessage;

  UnpaidLeaveAmountResponse({this.data, this.responseStatus, this.arabicErrorMessage, this.englishErrorMessage});

  factory UnpaidLeaveAmountResponse.fromJson(Map<String, dynamic> json) => _$UnpaidLeaveAmountResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UnpaidLeaveAmountResponseToJson(this);
}

