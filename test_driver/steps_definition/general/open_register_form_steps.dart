part of aut.test.general;

class OpenRegisterSteps extends WhenWithWorld<FlutterWorld> {
  OpenRegisterSteps()
      : super(
    StepDefinitionConfiguration()..timeout = Duration(seconds: 10),
  );

  @override
  Future<void> executeStep() async {

    print('click on register');
    SerializableFinder registerButtonFinder = find.byValueKey('register_btn');
    await FlutterDriverUtils.tap(world.driver, registerButtonFinder);

  }

  @override
  RegExp get pattern => RegExp(r'The client opens the register form');
}
