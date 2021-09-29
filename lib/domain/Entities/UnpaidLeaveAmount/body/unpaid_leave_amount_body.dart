import 'package:grsia/data/models/UnpaidLeaveAmount/body/unpaid_leave_amount_body.dart'
    as model;

import 'my_property.dart';

class UnpaidLeaveAmountBody extends model.UnpaidLeaveAmountBody {
  final List<MyProperty>? myProperty;
  final int? totalOfBasicSalaryAndSocialAllowanceOnTheDateOfRequest;

  UnpaidLeaveAmountBody(
      {this.myProperty,
      this.totalOfBasicSalaryAndSocialAllowanceOnTheDateOfRequest})
      : super(
            myProperty: myProperty,
            totalOfBasicSalaryAndSocialAllowanceOnTheDateOfRequest:
                totalOfBasicSalaryAndSocialAllowanceOnTheDateOfRequest);
}
