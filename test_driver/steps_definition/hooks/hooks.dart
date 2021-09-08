library aut.test.hooks;

import 'package:gherkin/gherkin.dart';
import 'dart:developer';

class Hooks extends Hook{
  @override
  Future<void> onBeforeRun(TestConfiguration config) async {
    log('before run hook');
    print('before run hook');
  }

  @override
  Future<void> onAfterRun(TestConfiguration config) async {
    log('after run hook');
    print('after run hook');
  }

  @override
  Future<void> onBeforeScenario(
      TestConfiguration config,
      String scenario,
      Iterable<Tag> tags,
      ) async {
    log("running hook before scenario '$scenario'");
    print("running hook before scenario '$scenario'");
  }

  @override
  Future<void> onAfterScenario(
      TestConfiguration config,
      String scenario,
      Iterable<Tag> tags,
      ) async {

    log("running hook after scenario '$scenario'");
    print("running hook after scenario '$scenario'");
  }
}