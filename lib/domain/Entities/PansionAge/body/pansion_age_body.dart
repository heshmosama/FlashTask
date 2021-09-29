import 'package:grsia/data/models/PansionAge/body/pansion_age_body.dart'
    as model;



class PansionAgeBody extends model.PansionAgeBody {

  final String dateOfBirth;
  final String to;
  final String calculationReason;

  PansionAgeBody(
      {required this.dateOfBirth,
      required this.to,
      required this.calculationReason})
      : super(
            dateOfBirth: dateOfBirth,
            to: to,
            calculationReason: calculationReason);


}
