import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class PostTestEnttity extends Equatable {
  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  PostTestEnttity({
    @required this.userId,
    @required this.id,
    @required this.title,
    @required this.body,
  });
   @override
  List<Object> get props => [userId!, id!, title!, body!];
}
