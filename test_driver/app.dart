import 'package:flutter_app/main.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_driver/driver_extension.dart';

Future<void> main() async {
  enableFlutterDriverExtension();
  await runApp(MyApp());
}