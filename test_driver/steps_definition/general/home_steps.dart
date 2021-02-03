part of aut.test.general;

class LoginSteps extends Given2WithWorld<String, String, FlutterWorld> {
  LoginSteps()
      : super(
          StepDefinitionConfiguration()..timeout = Duration(seconds: 30),
        );

  @override
  Future<void> executeStep(String user, String password) async {
    print('>> Login action');

    SerializableFinder emailFinder = find.byValueKey('email');
    await FlutterDriverUtils.enterText(world.driver, emailFinder, user,
        timeout: timeout);

    SerializableFinder passwordFinder = find.byValueKey('password');
    await FlutterDriverUtils.enterText(world.driver, passwordFinder, password,
        timeout: timeout);

    /*SerializableFinder loginButtonFinder = find.byValueKey('login_button');
    await FlutterDriverUtils.tap(world.driver, loginButtonFinder,
        timeout: timeout);*/

    print('>> End Login action');
  }

  @override
  RegExp get pattern =>
      RegExp(r'The client sign in with user {string} and password {string}');
}
