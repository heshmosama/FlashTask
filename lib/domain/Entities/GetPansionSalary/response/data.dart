import 'package:grsia/data/models/GetPansionSalary/response/rounded_age_at_end_of_service.dart';
import 'package:json_annotation/json_annotation.dart';

import 'age_at_end_of_service.dart';
import 'net_service_period.dart';

class Data {
  final AgeAtEndOfService? ageAtEndOfService;

  final RoundedAgeAtEndOfService? roundedAgeAtEndOfService;

  final NetServicePeriod? netServicePeriod;

  final int? pansionSalary;
  final int? decreasedAmountOfPansionSalary;
  final int? deductionPercentage;
  final int? deductionAmount;
  final int? deservedPensionSalary;

  Data(
      {this.ageAtEndOfService,
      this.roundedAgeAtEndOfService,
      this.netServicePeriod,
      this.pansionSalary,
      this.decreasedAmountOfPansionSalary,
      this.deductionPercentage,
      this.deductionAmount,
      this.deservedPensionSalary});
}
