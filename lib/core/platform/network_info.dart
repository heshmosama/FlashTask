import 'package:connectivity/connectivity.dart';


abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoImpl implements NetworkInfo {
  final Connectivity dataConnectionChecker;
  NetworkInfoImpl(this.dataConnectionChecker);
  @override
  Future<bool> get isConnected async => await dataConnectionChecker.checkConnectivity().then((value) => value == ConnectivityResult.wifi);
}
