class LoginResponseEntity {
  final String? data;
  final int? responseStatus;
  final String? arabicErrorMessage;
  final String? englishErrorMessage;

  LoginResponseEntity(
      {required this.data,
      required this.responseStatus,
      required this.arabicErrorMessage,
      required this.englishErrorMessage});
}
