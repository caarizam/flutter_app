part of aut.test.register;

class FillRegisterFormSteps extends When3WithWorld<String, String, String, FlutterWorld> {
  FillRegisterFormSteps()
      : super(
    StepDefinitionConfiguration()..timeout = Duration(seconds: 10),
  );

  @override
  Future<void> executeStep(String username, String password, String confirm) async {

    print('click on register');
    SerializableFinder registerButtonFinder = find.byValueKey('register_btn');
    await FlutterDriverUtils.tap(world.driver, registerButtonFinder);

  }

  @override
  RegExp get pattern => RegExp(r'The client fill the registration form with: username {string} and password {string} and confirm password {string}');
}
