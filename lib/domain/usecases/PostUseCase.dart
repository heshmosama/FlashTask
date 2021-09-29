import 'package:dartz/dartz.dart';
import 'package:grsia/core/error/failures.dart';
import 'package:grsia/core/usecases/use_case.dart';
import 'package:grsia/domain/Entities/PostTestEnttity.dart';

import 'package:grsia/domain/Repo/PostRepo.dart';

class PostUsecase implements UseCase<PostTestEnttity, NoParams> {
  final PostRepo? postRepo;
  PostUsecase({this.postRepo});
  @override
  Future<Either<Failure, PostTestEnttity>> excute(NoParams params) {
    return postRepo!.getPostById();
  }
}
