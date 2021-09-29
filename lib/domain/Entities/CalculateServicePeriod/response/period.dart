import 'package:grsia/data/models/CalculateServicePeriod/body/age.dart';
import 'package:json_annotation/json_annotation.dart';

class PeriodEntity {
  final String? from;
  final String? to;
  final Age? age;
  final int? dueAmountAtOnce;
  final int? totalOfDueAmountForThePeriod;

  PeriodEntity(
      {this.from,
      this.to,
      this.age,
      this.dueAmountAtOnce,
      this.totalOfDueAmountForThePeriod});
}
