import 'package:grsia/domain/Entities/PastServiceAmount/response/past_service_period.dart'
    as entity;
import 'package:json_annotation/json_annotation.dart';

part 'past_service_period.g.dart';

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class PastServicePeriod extends entity.PastServicePeriod {
  @JsonKey(name: "from")
  final String? from;
  @JsonKey(name: "to")
  final String? to;
  @JsonKey(name: "paymentType")
  final String? paymentType;
  @JsonKey(name: "noOfInstallment")
  final int? noOfInstallment;

  PastServicePeriod(
      {this.from, this.to, this.paymentType, this.noOfInstallment})
      : super(
            from: from,
            to: to,
            paymentType: paymentType,
            noOfInstallment: noOfInstallment);

  factory PastServicePeriod.fromJson(Map<String, dynamic> json) =>
      _$PastServicePeriodFromJson(json);

  Map<String, dynamic> toJson() => _$PastServicePeriodToJson(this);
}
