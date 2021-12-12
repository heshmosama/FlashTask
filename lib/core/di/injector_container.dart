import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:grsia/core/platform/network_info.dart';

import 'package:grsia/data/Repo/GetNextRocketRepoImpl.dart';
import 'package:grsia/data/Repo/UpcomingRocketRpoImpl.dart';
import 'package:grsia/data/datasource/local-datasource/shared_prefrances_data_source.dart';
import 'package:grsia/data/datasource/remote-datasource/NetworkService.dart';

import 'package:grsia/domain/Repo/Next_Rocket_repo.dart';
import 'package:grsia/domain/Repo/UpcomingRocket.dart';

import 'package:grsia/domain/usecases/Next_rocket_use_case.dart';
import 'package:grsia/domain/usecases/UpcomingRocketUseCase.dart';

import 'package:grsia/presentation/blocs/NextRocketBloc/Next_rocket_bloc.dart';
import 'package:grsia/presentation/blocs/UpcomingRocketBloc/Upcoming_rocket_bloc.dart';
import 'package:grsia/presentation/pages/Upcoming_Rocket_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;
Future<void> init() async {
  sl.registerLazySingleton(() => NextRocketBloc(loginUseCase: sl()));
  sl.registerLazySingleton(() => UpcomingRocketBloc(UseCase: sl()));
  //use cases

  sl.registerLazySingleton(() => NextRocketUseCase(Repo: sl()));
  sl.registerLazySingleton(() => UpcomingRocketUseCase(Repo: sl()));

  //Auth Repo

  sl.registerLazySingleton<NextRocketRpo>(
      () => NextRocketRepoImpl(networInfo: sl(), restClient: sl()));
  sl.registerLazySingleton<UpcomingRocketRpo>(
      () => UpcomingRocketRepoImpl(networInfo: sl(), restClient: sl()));

  //common objects
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));
  sl.registerLazySingleton<GRSIALocalData>(
      () => GRSIALocalDataImpl(sharedPreferences: sl()));
  sl.registerLazySingleton(() => Connectivity());
  sl.registerLazySingleton(() => RestClient.create());
  final SharedPreferences preferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => preferences);
}
