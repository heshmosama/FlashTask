// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unpaid_leave_amount_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UnpaidLeaveAmountResponse _$UnpaidLeaveAmountResponseFromJson(
    Map<String, dynamic> json) {
  return UnpaidLeaveAmountResponse(
    data: json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>),
    responseStatus: json['responseStatus'] as int?,
    arabicErrorMessage: json['arabicErrorMessage'] as String?,
    englishErrorMessage: json['englishErrorMessage'] as String?,
  );
}

Map<String, dynamic> _$UnpaidLeaveAmountResponseToJson(
        UnpaidLeaveAmountResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'responseStatus': instance.responseStatus,
      'arabicErrorMessage': instance.arabicErrorMessage,
      'englishErrorMessage': instance.englishErrorMessage,
    };
