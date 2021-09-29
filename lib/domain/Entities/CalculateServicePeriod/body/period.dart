import 'package:grsia/data/models/CalculateServicePeriod/body/age.dart';
import 'package:grsia/data/models/CalculateServicePeriod/body/period.dart'
    as model;

class Period extends model.Period {
  final String from;
  final String to;
  final Age age;
  final int dueAmountAtOnce;
  final int totalOfDueAmountForThePeriod;

  Period(
      {required this.from,
      required this.to,
      required this.age,
      required this.dueAmountAtOnce,
      required this.totalOfDueAmountForThePeriod})
      : super(
            from: from,
            to: to,
            age: age,
            dueAmountAtOnce: dueAmountAtOnce,
            totalOfDueAmountForThePeriod: totalOfDueAmountForThePeriod);
}
