import 'package:grsia/domain/Entities/GetPansionSalary/response/get_pansion_salary_response.dart'
    as entity;
import 'package:json_annotation/json_annotation.dart';
import 'data.dart';

part 'get_pansion_salary_response.g.dart';

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class GetPansionSalaryResponse extends entity.GetPansionSalaryResponse {
  @JsonKey(name: "data")
  final Data? data;
  @JsonKey(name: "responseStatus")
  final int? responseStatus;
  @JsonKey(name: "arabicErrorMessage")
  final String? arabicErrorMessage;
  @JsonKey(name: "englishErrorMessage")
  final String? englishErrorMessage;

  GetPansionSalaryResponse(
      {this.data,
      this.responseStatus,
      this.arabicErrorMessage,
      this.englishErrorMessage})
      : super(
            data: data,
            responseStatus: responseStatus,
            arabicErrorMessage: arabicErrorMessage,
            englishErrorMessage: englishErrorMessage);

  factory GetPansionSalaryResponse.fromJson(Map<String, dynamic> json) =>
      _$GetPansionSalaryResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetPansionSalaryResponseToJson(this);
}
