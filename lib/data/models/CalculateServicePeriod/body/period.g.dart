// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'period.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Period _$PeriodFromJson(Map<String, dynamic> json) {
  return Period(
    from: json['from'] as String,
    to: json['to'] as String,
    age: Age.fromJson(json['age'] as Map<String, dynamic>),
    dueAmountAtOnce: json['dueAmountAtOnce'] as int,
    totalOfDueAmountForThePeriod: json['totalOfDueAmountForThePeriod'] as int,
  );
}

Map<String, dynamic> _$PeriodToJson(Period instance) => <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
      'age': instance.age,
      'dueAmountAtOnce': instance.dueAmountAtOnce,
      'totalOfDueAmountForThePeriod': instance.totalOfDueAmountForThePeriod,
    };
