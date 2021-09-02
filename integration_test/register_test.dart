import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'pages/register_page.dart';
import 'package:flutter_app/main.dart' as app;

void main() {

  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  registerTest('demo@yopmail.com', '123ploik', '123ploik');
  registerTest('demo_two@yopmail.com', '789654', '123456');
  registerTest('demo_three@yopmail.com', 'abcdfe', 'abcdfe');

}

void registerTest(String email, String pass, String confirmPass){
  var registerPage = RegisterPage();

  group('Register functionality', () {

    testWidgets('Checking register form', (WidgetTester tester) async {

      app.main();
      await tester.pumpAndSettle();

      final Finder registerButtonFinder = find.byKey(registerPage.registerButton);
      await tester.tap(registerButtonFinder);
      await tester.pumpAndSettle();

      final Finder usernameTxtFinder = find.byKey(registerPage.usernameTxt);
      await tester.tap(usernameTxtFinder);
      await tester.enterText(usernameTxtFinder, email);
      await tester.pumpAndSettle();

      final Finder passTxtFinder = find.byKey(registerPage.passwordTxt);
      await tester.tap(passTxtFinder);
      await tester.enterText(passTxtFinder, pass);
      await tester.pumpAndSettle();

      final Finder confirmPassTxtFinder = find.byKey(registerPage.confirmPassTxt);
      await tester.tap(confirmPassTxtFinder);
      await tester.enterText(confirmPassTxtFinder, confirmPass);
      await tester.pumpAndSettle();

      final Finder registerActionButtonFinder = find.byKey(registerPage.registerActionButton);
      await tester.tap(registerActionButtonFinder);
      await tester.pumpAndSettle();

      final Finder acceptButtonFinder = find.byKey(registerPage.acceptRegisterButton);
      await tester.tap(acceptButtonFinder);
      await tester.pumpAndSettle();

    });
  });
}