import 'package:grsia/domain/Entities/login_entits/LoginReponseEntity.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
part 'login_response_model.g.dart';

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class LoginResponseModel extends LoginResponseEntity {
  @JsonKey(name: "Data")
  final String? data;
  @JsonKey(name: "ResponseStatus")
  final int? responseStatus;
  @JsonKey(name: "ArabicErrorMessage")
  final String? arabicErrorMessage;
  @JsonKey(name: "EnglishErrorMessage")
  final String? englishErrorMessage;

  LoginResponseModel(
      {required this.data,
      required this.responseStatus,
      required this.arabicErrorMessage,
      required this.englishErrorMessage})
      : super(
            data: data,
            responseStatus: responseStatus,
            arabicErrorMessage: arabicErrorMessage,
            englishErrorMessage: englishErrorMessage);

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseModelToJson(this);
}
