library aut.test.general;

import 'package:gherkin/gherkin.dart';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';

part 'home_steps.dart';
part 'open_register_form_steps.dart';

List<StepDefinitionBase<World>> generalSteps = <StepDefinitionBase<World>>[
  LoginSteps(),
  OpenRegisterSteps(),
];