import 'package:grsia/data/models/CalculateServicePeriod/body/age.dart';
import 'package:json_annotation/json_annotation.dart';

part 'period.g.dart';

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class Period {
  @JsonKey(name: "from")
  final String from;
  @JsonKey(name: "to")
  final String to;
  @JsonKey(name: "age")
  final Age age;
  @JsonKey(name: "dueAmountAtOnce")
  final int dueAmountAtOnce;
  @JsonKey(name: "totalOfDueAmountForThePeriod")
  final int totalOfDueAmountForThePeriod;

  Period(
      {required this.from,
        required  this.to,
        required this.age,
        required this.dueAmountAtOnce,
        required this.totalOfDueAmountForThePeriod});

  factory Period.fromJson(Map<String, dynamic> json) => _$PeriodFromJson(json);

  Map<String, dynamic> toJson() => _$PeriodToJson(this);
}
