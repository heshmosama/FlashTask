import 'package:json_annotation/json_annotation.dart';



@JsonSerializable(nullable: false, ignoreUnannotated: false)
class RoundedAgeAtEndOfService {
  final int? day;
  final int? month;
  final int? year;

  RoundedAgeAtEndOfService({this.day, this.month, this.year});
}
