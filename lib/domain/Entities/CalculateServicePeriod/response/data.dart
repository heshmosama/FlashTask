import 'package:grsia/data/models/CalculateServicePeriod/response/total_service_period.dart';
import 'package:grsia/domain/Entities/CalculateServicePeriod/response/period.dart';


 class Data {
   final List<PeriodEntity>? periods;
   final  TotalServicePeriod? totalServicePeriod;
   Data({this.totalServicePeriod,this.periods});
}

