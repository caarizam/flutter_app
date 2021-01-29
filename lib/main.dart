import 'package:flutter/material.dart';
import 'package:flutter_app/views/answer_view.dart';
import 'package:flutter_app/views/question_view.dart';
import 'package:flutter_app/views/register_view.dart';
import 'package:flutter_app/views/login_view.dart';
import 'package:flutter_app/views/static_info/static_register_view.dart';
import 'package:flutter_app/views/welcome_view.dart';
import 'package:flutter_driver/driver_extension.dart';

Future<void> main() async{
  //enableFlutterDriverExtension();
  runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return _MyAppState();
  }

}

class _MyAppState extends State<MyApp> {

  var _clicks = 0;

  void _clicksIncrement(){
    setState(() {
      _clicks++;
    });
    print(_clicks);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Home",
      initialRoute: '/',
      routes: {
        '/': (context) => LoginView(),
        RegisterView.routeName: (context) => RegisterView(),
        WelcomeView.routeName: (context) => WelcomeView(),
        StaticRegisterView.routeName: (context) => StaticRegisterView(),
      },
    );
  }
}
