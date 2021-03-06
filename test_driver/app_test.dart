import 'dart:async';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import 'package:glob/glob.dart';
import 'steps_definition/hooks/hooks.dart';

/// [holis-cambio]
import 'steps_definition/steps.dart';

Future<void> main() {
  FlutterTestConfiguration config = FlutterTestConfiguration()
    ..features = <Glob>[Glob('features//**.feature')]
    ..reporters = <Reporter>[
      ProgressReporter(),
      TestRunSummaryReporter(),
      JsonReporter(path: './reports/json/report.json'),
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
    ]
    ..customStepParameterDefinitions = <CustomParameter<dynamic>>[]
    ..restartAppBetweenScenarios = true
    ..targetAppWorkingDirectory = '../'
    ..targetAppPath = 'test_driver/app.dart'
    ..exitAfterTestRun = true;

  return GherkinRunner().execute(config);
}
