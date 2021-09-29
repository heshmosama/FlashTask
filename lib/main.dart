import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grsia/core/di/injector_container.dart';
import 'package:grsia/presentation/blocs/LoginBloc/Login_state.dart';
import 'package:grsia/presentation/blocs/LoginBloc/login_bloc.dart';
import 'package:logging/logging.dart';
import 'core/di/injector_container.dart' as di;
import 'domain/Entities/login_entits/Login_body_entity.dart';
import 'presentation/blocs/LoginBloc/login_evnet.dart';

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
    return MaterialApp(
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
        body: buildbody(),
      ),
    );
  }

  BlocProvider<LoginBloc> buildbody() {
    return BlocProvider<LoginBloc>(
      create: (_) => sl<LoginBloc>(),
      child: Column(
        children: [
          SizedBox(
            height: 25.0,
          ),
          BlocBuilder<LoginBloc, LoginStates>(
            builder: (context, state) {
              if (state is Empty) {
                return Text("Empty");
              } else if (state is Loading) {
                return Text("loading");
              } else if (state is Loaded) {
                return Text("done");
              } else if (state is Error) {
                return Text("Error : ${state.message}");
              } else {
                return Text("Unknown Error");
              }
            },
          ),
          Padding(
              padding: EdgeInsets.all(20.0),
              child: TriviaControls()
          ),
          // TextCustom("text", context)
        ],
      ),
    );
  }

}


class TriviaControls extends StatefulWidget {
  const TriviaControls({
    Key? key,
  }) : super(key: key);

  @override
  _TriviaControlsState createState() => _TriviaControlsState();
}

class _TriviaControlsState extends State<TriviaControls> {
  final controller = TextEditingController();
  String? inputStr;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          controller: controller,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Input a number',
          ),
          onChanged: (value) {
            inputStr = value;
          },
          onSubmitted: (_) {
            dispatchConcrete();
          },
        ),
        SizedBox(height: 10),
        Row(
          children: <Widget>[
            Expanded(
              child: RaisedButton(
                child: Text('Search'),
                color: Theme
                    .of(context)
                    .accentColor,
                textTheme: ButtonTextTheme.primary,
                onPressed: dispatchConcrete,
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: RaisedButton(
                child: Text('Get random trivia'),
                onPressed: dispatchConcrete,
              ),
            ),
          ],
        )
      ],
    );
  }

  void dispatchConcrete() {
    controller.clear();
    BlocProvider.of<LoginBloc>(context).
    add(LoginEvent(
        loginBody:
        LoginBodyEntity(userName: "hesham osama", password: "passwrod")));
  }

}




