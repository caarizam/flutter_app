// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_app/main.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await Future.delayed(Duration(seconds: 7));
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    final emailEmailKey = Key('email');
    final passEmailKey = Key('password');

    final Finder emailFinder = find.byKey(emailEmailKey);
    final Finder passwordFinder = find.byKey(passEmailKey);



    // Tap the '+' icon and trigger a frame.
    await tester.tap(emailFinder);
    await tester.pump();

  });
}
