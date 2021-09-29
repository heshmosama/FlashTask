// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculate_beneficiaries_shares_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CalculateBeneficiariesSharesResponse
    _$CalculateBeneficiariesSharesResponseFromJson(Map<String, dynamic> json) {
  return CalculateBeneficiariesSharesResponse(
    data: json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>),
    responseStatus: json['responseStatus'] as int?,
    arabicErrorMessage: json['arabicErrorMessage'] as String?,
    englishErrorMessage: json['englishErrorMessage'] as String?,
  );
}

Map<String, dynamic> _$CalculateBeneficiariesSharesResponseToJson(
        CalculateBeneficiariesSharesResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'responseStatus': instance.responseStatus,
      'arabicErrorMessage': instance.arabicErrorMessage,
      'englishErrorMessage': instance.englishErrorMessage,
    };
