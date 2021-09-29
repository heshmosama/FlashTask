import 'package:json_annotation/json_annotation.dart'; 

part 'past_service_periods.g.dart'; 

@JsonSerializable(nullable: false,ignoreUnannotated: false)
class PastServicePeriod {
  @JsonKey(name: "from")
  final  String from;
  @JsonKey(name: "to")
  final  String to;
  @JsonKey(name: "paymentType")
  final  String paymentType;
  @JsonKey(name: "noOfInstallment")
  final  int noOfInstallment;

  PastServicePeriod({required this.from,required this.to,required this.paymentType,required this.noOfInstallment});

  factory PastServicePeriod.fromJson(Map<String, dynamic> json) => _$PastServicePeriodFromJson(json);

  Map<String, dynamic> toJson() => _$PastServicePeriodToJson(this);

}

