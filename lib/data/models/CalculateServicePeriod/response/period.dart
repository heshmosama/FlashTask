import 'package:grsia/data/models/CalculateServicePeriod/body/age.dart';
import 'package:grsia/domain/Entities/CalculateServicePeriod/response/period.dart' as entity;
import 'package:json_annotation/json_annotation.dart';

part 'period.g.dart';

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class Period extends entity.PeriodEntity {
  @JsonKey(name: "from")
  final String? from;
  @JsonKey(name: "to")
  final String? to;
  @JsonKey(name: "age")
  final Age? age;
  @JsonKey(name: "dueAmountAtOnce")
  final int? dueAmountAtOnce;
  @JsonKey(name: "totalOfDueAmountForThePeriod")
  final int? totalOfDueAmountForThePeriod;

  Period({ this.from,
    this.to,
    this.age,
    this.dueAmountAtOnce,
    this.totalOfDueAmountForThePeriod}) :super(
    from: from,
    to: to,
    age: age,
    dueAmountAtOnce: dueAmountAtOnce,
    totalOfDueAmountForThePeriod: totalOfDueAmountForThePeriod
  );

  factory Period.fromJson(Map<String, dynamic> json) => _$PeriodFromJson(json);

  Map<String, dynamic> toJson() => _$PeriodToJson(this);
}
