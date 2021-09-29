import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:grsia/core/usecases/use_case.dart';
import 'package:grsia/domain/Entities/PostTestEnttity.dart';
import 'package:grsia/domain/Repo/PostRepo.dart';
import 'package:grsia/domain/usecases/PostUseCase.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

class MockPostRepo extends Mock implements PostRepo {}

void main() {
  PostUsecase? postUsecase;
  MockPostRepo? mockPostRepo;

  var post = PostTestEnttity(userId: 1, id: 1, title: "title", body: "body");
  setUp(() {
    mockPostRepo = MockPostRepo();
    postUsecase = PostUsecase(postRepo: mockPostRepo);
  });

  test("description", () async {
    when(mockPostRepo!.getPostById()).thenAnswer((_) async => Right(post));
    final result = await postUsecase!.excute(NoParams());
    print(result);
    expect(post, Right(result));
    verifyNoMoreInteractions(mockPostRepo);
  });
}
