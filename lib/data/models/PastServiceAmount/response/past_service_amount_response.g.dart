// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'past_service_amount_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PastServiceAmountResponse _$PastServiceAmountResponseFromJson(
    Map<String, dynamic> json) {
  return PastServiceAmountResponse(
    data: json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>),
    responseStatus: json['responseStatus'] as int?,
    arabicErrorMessage: json['arabicErrorMessage'] as String?,
    englishErrorMessage: json['englishErrorMessage'] as String?,
  );
}

Map<String, dynamic> _$PastServiceAmountResponseToJson(
        PastServiceAmountResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'responseStatus': instance.responseStatus,
      'arabicErrorMessage': instance.arabicErrorMessage,
      'englishErrorMessage': instance.englishErrorMessage,
    };
