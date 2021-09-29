import 'package:json_annotation/json_annotation.dart';

import 'my_property.dart';

part 'unpaid_leave_amount_body.g.dart'; 

@JsonSerializable(nullable: false,ignoreUnannotated: false)
class UnpaidLeaveAmountBody {
  @JsonKey(name: "myProperty")
  final  List<MyProperty>? myProperty;
  @JsonKey(name: "totalOfBasicSalaryAndSocialAllowanceOnTheDateOfRequest")
  final  int? totalOfBasicSalaryAndSocialAllowanceOnTheDateOfRequest;

  UnpaidLeaveAmountBody({this.myProperty, this.totalOfBasicSalaryAndSocialAllowanceOnTheDateOfRequest});

  factory UnpaidLeaveAmountBody.fromJson(Map<String, dynamic> json) => _$UnpaidLeaveAmountBodyFromJson(json);

  Map<String, dynamic> toJson() => _$UnpaidLeaveAmountBodyToJson(this);
}

