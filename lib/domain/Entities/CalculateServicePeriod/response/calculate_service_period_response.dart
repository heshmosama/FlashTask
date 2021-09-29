import 'package:grsia/data/models/CalculateServicePeriod/response/data.dart';
import 'package:json_annotation/json_annotation.dart';


 class CalculateServicePeriodResponse {
   final  Data? data;
   final  int? responseStatus;
   final  String? arabicErrorMessage;
   final  String? englishErrorMessage;

  CalculateServicePeriodResponse({this.data, this.responseStatus, this.arabicErrorMessage, this.englishErrorMessage});


}

