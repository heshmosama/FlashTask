// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_test.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostTest _$PostTestFromJson(Map<String, dynamic> json) {
  return PostTest(
    userId: json['userId'] as int?,
    id: json['id'] as int?,
    title: json['title'] as String?,
    body: json['body'] as String?,
  );
}

Map<String, dynamic> _$PostTestToJson(PostTest instance) => <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
    };
