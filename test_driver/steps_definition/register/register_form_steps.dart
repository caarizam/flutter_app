part of aut.test.register;

class FillRegisterFormSteps extends And1WithWorld<Table, FlutterWorld> {
  FillRegisterFormSteps()
      : super(
    StepDefinitionConfiguration()..timeout = Duration(seconds: 10),
  );

  @override
  Future<void> executeStep(Table dataTable) async {

    print('click on register');
    final columns = dataTable.asMap();
    final singleRow = columns.elementAt(0);

    String username = singleRow['username'];
    String password = singleRow['password'];
    String confirm = singleRow['confirm'];

    SerializableFinder usernameFinder = find.byValueKey('username');
    await FlutterDriverUtils.enterText(world.driver, usernameFinder, username);

    SerializableFinder passwordFinder = find.byValueKey('password');
    await FlutterDriverUtils.enterText(world.driver, passwordFinder, password);

    SerializableFinder confirmPassword = find.byValueKey('confirm');
    await FlutterDriverUtils.enterText(world.driver, confirmPassword, confirm);

    SerializableFinder registerButtonFinder = find.byValueKey('register_action');
    await FlutterDriverUtils.tap(world.driver, registerButtonFinder);

    SerializableFinder confirmationLabelFinder = find.byValueKey('accept_register');

    expect(await FlutterDriverUtils.isPresent(world.driver, confirmationLabelFinder), false, reason: 'Button not found');


  }

  @override
  RegExp get pattern => RegExp(r'The client fill the registration form with:');
}
