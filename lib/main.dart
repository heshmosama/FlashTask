import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:grsia/core/di/injector_container.dart';

import 'package:grsia/presentation/pages/Hom_screen.dart';
import 'package:logging/logging.dart';
import 'core/di/injector_container.dart' as di;

void main() async {
  _setupLogging();
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();

  runApp(
    EasyLocalization(
        supportedLocales: [
          Locale('en'),
          Locale('ar'),
        ],
        path: 'assets/lang',
        startLocale: Locale('ar'),
        saveLocale: true,
        child: MyApp()),
  );
}

void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    print('${rec.level.name}: ${rec.time}: ${rec.message}');
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("title"),
        ),
        body: HomeScreen(),
      ),
    );
  }
}
