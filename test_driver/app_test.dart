import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main(){
  group('AWS group test', () {

    FlutterDriver driver;

    /*final emailFinder = find.byValueKey('email');
    final passwordFinder = find.byValueKey('password');
    final loginButtonFinder = find.byValueKey('login_button');*/

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('Enter the credentials', () async {

      SerializableFinder emailFinder = find.byValueKey('email');
      SerializableFinder passwordFinder = find.byValueKey('password');
      SerializableFinder loginButtonFinder = find.byValueKey('login_button');

      await Future.delayed(Duration(seconds: 10));
      await driver.waitFor(emailFinder);
      await driver.tap(emailFinder);
      await driver.enterText('charlie@yopmail.com');

      await Future.delayed(Duration(seconds: 2));
      await driver.waitFor(passwordFinder);
      await driver.tap(passwordFinder);
      await driver.enterText('111222');

      await Future.delayed(Duration(seconds: 2));
      await driver.waitFor(loginButtonFinder);
      await driver.tap(loginButtonFinder);

    });

  });
}