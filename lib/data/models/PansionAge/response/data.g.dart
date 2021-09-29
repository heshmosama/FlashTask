// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    from: json['from'] as String?,
    to: json['to'] as String?,
    age: json['age'] == null
        ? null
        : Age.fromJson(json['age'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
      'age': instance.age,
    };
