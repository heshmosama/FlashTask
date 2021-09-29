import 'package:json_annotation/json_annotation.dart';


 class PastServicePeriod {
   final  String? from;
   final  String? to;
   final  String? paymentType;
   final  int? noOfInstallment;

  PastServicePeriod({this.from, this.to, this.paymentType, this.noOfInstallment});

}

