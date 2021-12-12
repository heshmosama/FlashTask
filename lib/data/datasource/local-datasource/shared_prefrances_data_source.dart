import 'package:grsia/core/error/exceptions.dart';
import 'package:grsia/core/utils/Constants.dart';

import 'package:shared_preferences/shared_preferences.dart';

abstract class GRSIALocalData {}

class GRSIALocalDataImpl implements GRSIALocalData {
  final SharedPreferences sharedPreferences;
  GRSIALocalDataImpl({required this.sharedPreferences});
}
