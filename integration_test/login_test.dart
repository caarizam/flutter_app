import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'pages/login_page.dart';
import 'package:flutter_app/main.dart' as app;

import 'pages/welcome_page.dart';

void main(){

  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  var loginPage = LoginPage();
  var welcomePage = WelcomePage();

  group('Login functionality', (){

    testWidgets('Testing login page', (WidgetTester tester) async {

      app.main();
      await tester.pumpAndSettle();

      final Finder usernameTxtFinder = find.byKey(ValueKey(loginPage.usernameTxt));
      await tester.tap(usernameTxtFinder);
      await tester.enterText(usernameTxtFinder, "demo@yopmai.com");
      await tester.pumpAndSettle();

      final Finder passTxtFinder = find.byKey(ValueKey(loginPage.passTxt));
      await tester.tap(passTxtFinder);
      await tester.enterText(passTxtFinder, "12345678");
      await tester.pumpAndSettle();

      final Finder loginButton = find.byKey(ValueKey(loginPage.loginButton));
      await tester.tap(loginButton);
      await tester.pumpAndSettle();

      expect(find.text(welcomePage.welcomeText), findsOneWidget, reason: 'The text: You are logged in!!! should be displayed');
    });

  });
}