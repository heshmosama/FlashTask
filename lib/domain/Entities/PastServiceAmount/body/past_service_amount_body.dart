import 'package:grsia/data/models/PastServiceAmount/body/past_service_amount_body.dart'
    as model;
import 'package:grsia/data/models/PastServiceAmount/body/past_service_periods.dart';

class PastServiceAmountBody extends model.PastServiceAmountBody {
  final List<PastServicePeriod> pastServicePeriods;
  final int totalOfBasicSalaryAndSocialAllowanceOnTheDateOfRequest;

  PastServiceAmountBody(
      {required this.pastServicePeriods,
      required this.totalOfBasicSalaryAndSocialAllowanceOnTheDateOfRequest})
      : super(
            pastServicePeriods: pastServicePeriods,
            totalOfBasicSalaryAndSocialAllowanceOnTheDateOfRequest:
                totalOfBasicSalaryAndSocialAllowanceOnTheDateOfRequest);
}
