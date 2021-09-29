import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:grsia/core/error/failures.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> excute(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}
