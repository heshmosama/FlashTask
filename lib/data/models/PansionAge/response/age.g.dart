// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'age.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Age _$AgeFromJson(Map<String, dynamic> json) {
  return Age(
    day: json['day'] as int?,
    month: json['month'] as int?,
    year: json['year'] as int?,
  );
}

Map<String, dynamic> _$AgeToJson(Age instance) => <String, dynamic>{
      'day': instance.day,
      'month': instance.month,
      'year': instance.year,
    };
