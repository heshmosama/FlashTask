import 'package:grsia/data/models/CalculateServicePeriod/body/age.dart' as model;
import 'package:json_annotation/json_annotation.dart';



 class Age extends model.Age {
   final  int day;
   final  int month;
   final  int year;

  Age({required this.day,required this.month,required this.year})
  :super(
    day: day,
    month: month,
    year: year
  );


}

