library aut.test.register;

import 'package:gherkin/gherkin.dart';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';

part 'register_form_steps.dart';

List<StepDefinitionBase<World>> registerSteps = <StepDefinitionBase<World>>[
  FillRegisterFormSteps(),
];