import 'package:grsia/data/models/CalculateServicePeriod/body/calculate_service_period_body.dart'
    as model;
import 'package:grsia/data/models/CalculateServicePeriod/body/period.dart';

class CalculateServicePeriodBody extends model.CalculateServicePeriodBody {
  final List<Period> periods;
  final String calculationReason;

  CalculateServicePeriodBody(
      {required this.periods, required this.calculationReason})
      : super(periods: periods, calculationReason: calculationReason);
}
