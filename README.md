# Basic flutter app

## Dart Language
[dart](https://dart.dev/)

## install dependencies
```flutter pub get```

## Run the app
```flutter run```

### Gherkin Test
```dart test_driver/app_test.dart```

#### Dependencies for Flutter Gherkin
- [flutter](https://api.flutter.dev/)
- [flutter_driver](https://api.flutter.dev/flutter/flutter_driver/flutter_driver-library.html)
- [flutter_test](https://api.flutter.dev/flutter/flutter_test/flutter_test-library.html)
- [gherkin](https://pub.dev/packages/gherkin)
- [meta](https://pub.dev/packages/meta)

### Flutter Driver Test
```flutter drive --target=test_driver/app.dart```

### Flutter Integration Test
```flutter drive --driver=test_driver/integration_test.dart --target=integration_test/register_test.dart```

### References
- [Flutter Gherkin - Pub-Dev](https://pub.dev/packages/flutter_gherkin)
- [Flutter Gherkin - Github](https://github.com/jonsamwell/flutter_gherkin)
- [Flutter Testing](https://flutter.dev/docs/testing)
- [Integration Test](https://flutter.dev/docs/testing/integration-tests)
- [App Circle CI/CD](https://appcircle.io/blog/guide-to-automated-mobile-ci-cd-for-flutter-projects-with-appcircle/#testing-the-flutter-app)
