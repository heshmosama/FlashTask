import 'package:grsia/data/models/PastServiceAmount/response/data.dart';
import 'package:json_annotation/json_annotation.dart';


 class PastServiceAmountResponse {
   final  Data? data;
   final  int? responseStatus;
   final  String? arabicErrorMessage;
   final  String? englishErrorMessage;

  PastServiceAmountResponse({this.data, this.responseStatus, this.arabicErrorMessage, this.englishErrorMessage});


}
