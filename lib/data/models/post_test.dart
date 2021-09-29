import 'package:equatable/equatable.dart';
import 'package:grsia/domain/Entities/PostTestEnttity.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
part 'post_test.g.dart';

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class PostTest extends PostTestEnttity {
  @JsonKey(name: "userId")
  final int? userId;
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "title")
  final String? title;
  @JsonKey(name: "body")
  final String? body;

  PostTest({
    @required this.userId,
    @required this.id,
    @required this.title,
    @required this.body,
  }) : super(userId:userId,id: id, title:title, body:body);

  factory PostTest.fromJson(Map<String, dynamic> json) =>
      _$PostTestFromJson(json);

  Map<String, dynamic> toJson() => _$PostTestToJson(this);
}
