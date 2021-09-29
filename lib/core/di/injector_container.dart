import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:grsia/core/platform/network_info.dart';
import 'package:grsia/data/Repo/AuthRepoImpl.dart';
import 'package:grsia/data/datasource/local-datasource/shared_prefrances_data_source.dart';
import 'package:grsia/data/datasource/remote-datasource/NetworkService.dart';
import 'package:grsia/domain/Repo/AuthRepo.dart';
import 'package:grsia/domain/usecases/LoginUseCase.dart';
import 'package:grsia/presentation/blocs/LoginBloc/login_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton(() => LoginBloc(loginUseCase: sl()));
  //use cases
  sl.registerLazySingleton(() => LoginUseCase(authRepo: sl()));

  //Auth Repo
  sl.registerLazySingleton<AuthRepo>(() =>
      AuthRepoImpl(grsiaLocalData: sl(), networInfo: sl(), restClient: sl()));

  //common objects
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));
  sl.registerLazySingleton<GRSIALocalData>(
      () => GRSIALocalDataImpl(sharedPreferences: sl()));
  sl.registerLazySingleton(() => Connectivity());
  sl.registerLazySingleton(() => RestClient.create());
  final SharedPreferences preferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => preferences);
}
