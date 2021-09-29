import 'package:json_annotation/json_annotation.dart';
import 'data.dart';

class GetPansionSalaryResponse {
  final Data? data;

  final int? responseStatus;
  final String? arabicErrorMessage;
  final String? englishErrorMessage;

  GetPansionSalaryResponse(
      {this.data,
      this.responseStatus,
      this.arabicErrorMessage,
      this.englishErrorMessage});
}
