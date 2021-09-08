import 'dart:async';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import 'steps_definition/hooks/hooks.dart';
import 'steps_definition/steps.dart';

Future<void> main() {
  FlutterTestConfiguration config = FlutterTestConfiguration()
    ..features = [RegExp('test_driver/features/*.feature')]
    ..reporters = <Reporter>[
      ProgressReporter(),
      TestRunSummaryReporter(),
      JsonReporter(path: 'test_driver/reports/json/report.json'),
      FlutterDriverReporter(
        logErrorMessages: true,
        logInfoMessages: true,
        logWarningMessages: true,
      ),
    ]
    ..hooks = <Hook>[
      Hooks(),
    ]
    ..stepDefinitions = <StepDefinitionBase<World>>[
      ...generalSteps,
      ...registerSteps,
    ]
    ..customStepParameterDefinitions = <CustomParameter<dynamic>>[]
    ..restartAppBetweenScenarios = true
    ..targetAppWorkingDirectory = '.'
    ..targetAppPath = 'test_driver/app.dart'
    ..stopAfterTestFailed = true;

  return GherkinRunner().execute(config);
}
