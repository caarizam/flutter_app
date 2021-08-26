// Imports the Flutter Driver API.
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

import 'pages/register_page.dart';

void main() {

  var registerPage = RegisterPage();

  group('Register functionality', () {
    // First, define the Finders and use them to locate widgets from the
    // test suite. Note: the Strings provided to the `byValueKey` method must
    // be the same as the Strings we used for the Keys in step 1.
    final registerButtonFinder = find.byValueKey(registerPage.registerButton);
    final usernameTxtFinder = find.byValueKey(registerPage.usernameTxt);
    final passTxtFinder = find.byValueKey(registerPage.passwordTxt);
    final confirmPassTxtFinder = find.byValueKey(registerPage.confirmPassTxt);
    final registerActionButtonFinder = find.byValueKey(registerPage.registerActionButton);
    final registerAcceptButtonFinder = find.byValueKey(registerPage.acceptRegisterButton);

    FlutterDriver driver;

    // Connect to the Flutter driver before running any tests.
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    // Close the connection to the driver after the tests have completed.
    tearDownAll(() async {
      driver.close();
    });


    test('Going to register view', () async {
      // First, tap the button.
      await driver.tap(registerButtonFinder);

    });

    test('Entering username and password', () async {
      // First, tap the button.
      await driver.tap(usernameTxtFinder);
      await driver.enterText('demo@yopmail.com');

      await driver.tap(passTxtFinder);
      await driver.enterText('123456');

      await driver.tap(confirmPassTxtFinder);
      await driver.enterText('123456');

      await driver.tap(registerActionButtonFinder);

      await driver.waitFor(registerAcceptButtonFinder, timeout: Duration(seconds: 3));
      await driver.tap(registerAcceptButtonFinder);

    });

  });
}