import 'package:dartz/dartz.dart';
import 'package:grsia/core/error/failures.dart';
import 'package:grsia/data/datasource/remote-datasource/NetworkService.dart';
import 'package:grsia/domain/Entities/PostTestEnttity.dart';
import 'package:grsia/domain/Repo/PostRepo.dart';

class PostRepoImp implements PostRepo {
  final RestClient remoteDataSource;
  PostRepoImp(this.remoteDataSource);
  @override
  Future<Either<Failure, PostTestEnttity>> getPostById() async {
    return Right(await remoteDataSource.getTasks());
  }
}
