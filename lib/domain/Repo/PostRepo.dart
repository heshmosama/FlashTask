import 'package:dartz/dartz.dart';
import 'package:grsia/core/error/failures.dart';
import 'package:grsia/domain/Entities/PostTestEnttity.dart';

abstract class PostRepo {
  Future<Either<Failure,PostTestEnttity>> getPostById();
}
