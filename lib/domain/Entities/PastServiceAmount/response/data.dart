import 'package:grsia/data/models/PastServiceAmount/response/past_service_period.dart';
import 'package:grsia/data/models/PastServiceAmount/response/total_past_service_period.dart';
import 'package:json_annotation/json_annotation.dart';


 class Data {
   final  List<PastServicePeriod>? pastServicePeriods;
   final  TotalPastServicePeriod? totalPastServicePeriod;
   final  int? totalAmount;
   final  int? totalOfBasicSalaryAndSocialAllowanceOnTheDateOfRequest;

  Data({this.pastServicePeriods, this.totalPastServicePeriod, this.totalAmount, this.totalOfBasicSalaryAndSocialAllowanceOnTheDateOfRequest});


}

