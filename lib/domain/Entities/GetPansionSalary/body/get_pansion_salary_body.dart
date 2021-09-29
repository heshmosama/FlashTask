import 'package:grsia/data/models/GetPansionSalary/body/get_pansion_salary_body.dart'
    as model;
import 'package:json_annotation/json_annotation.dart';

class GetPansionSalaryBodyEntity extends model.GetPansionSalaryBody {
  final String retirmentSystem;
  final String retirmentType;
  final String dateOfBirth;
  final String gender;
  final int basicSalary;
  final int socialAllowence;
  final int day;
  final int month;
  final int year;
  final String endOfServiceReason;
  final String endOfServiceDate;

  GetPansionSalaryBodyEntity(
      {required this.retirmentSystem,
      required this.retirmentType,
      required this.dateOfBirth,
      required this.gender,
      required this.basicSalary,
      required this.socialAllowence,
      required this.day,
      required this.month,
      required this.year,
      required this.endOfServiceReason,
      required this.endOfServiceDate})
      : super(
      retirmentSystem: retirmentSystem,
      retirmentType:retirmentType,
      dateOfBirth:dateOfBirth,
      gender:gender,
      basicSalary:basicSalary,
      socialAllowence:socialAllowence,
      day:day,
      month:month,
      year:year,
      endOfServiceReason:endOfServiceReason,
      endOfServiceDate:endOfServiceDate);
}
