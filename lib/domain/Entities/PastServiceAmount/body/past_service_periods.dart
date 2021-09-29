import 'package:grsia/data/models/PastServiceAmount/body/past_service_periods.dart'
    as model;

class PastServicePeriod extends model.PastServicePeriod {
  final String from;
  final String to;
  final String paymentType;
  final int noOfInstallment;

  PastServicePeriod(
      {required this.from,
      required this.to,
      required this.paymentType,
      required this.noOfInstallment})
      : super(
            from: from,
            to: to,
            paymentType: paymentType,
            noOfInstallment: noOfInstallment);
}
