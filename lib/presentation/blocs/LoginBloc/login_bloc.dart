import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:grsia/core/error/failures.dart';
import 'package:grsia/domain/Entities/login_entits/LoginReponseEntity.dart';
import 'package:grsia/domain/usecases/LoginUseCase.dart';
import 'package:grsia/presentation/blocs/LoginBloc/Login_state.dart';
import 'package:grsia/presentation/blocs/LoginBloc/login_evnet.dart';

const String SERVER_FAILURE_MESSAGE = 'Server Failure';
const String CACHE_FAILURE_MESSAGE = 'Cache Failure';
const String INVALID_INPUT_FAILURE_MESSAGE =
    'Invalid Input - The number must be a positive integer or zero.';

class LoginBloc extends Bloc<LoginEvents, LoginStates> {
  final LoginUseCase loginUseCase;
  LoginBloc({required this.loginUseCase}) : super(Empty());

  @override
  Stream<LoginStates> mapEventToState(LoginEvents event) async* {
    if (event is LoginEvent) {
      final loginrespose =
          await loginUseCase.excute(Params(loginBodyEntity: event.loginBody));
      yield* _eitherLoadedOrErrorState(loginrespose);
    }
  }

  Stream<LoginStates> _eitherLoadedOrErrorState(
    Either<Failure, LoginResponseEntity> failureOrTrivia,
  ) async* {
    yield failureOrTrivia.fold(
      (failure) => Error(message: _mapFailureToMessage(failure)),
      (response) => Loaded(loginResponseEntity: response),
    );
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return SERVER_FAILURE_MESSAGE;
      case CacheFailure:
        return CACHE_FAILURE_MESSAGE;
      default:
        return 'Unexpected error';
    }
  }
}
