import 'package:grsia/data/models/PansionAge/response/data.dart';

class PansionAgeResponse {
  final Data? data;
  final int? responseStatus;
  final String? arabicErrorMessage;
  final String? englishErrorMessage;

  PansionAgeResponse(
      {this.data,
      this.responseStatus,
      this.arabicErrorMessage,
      this.englishErrorMessage});
}
