import 'package:dart_appwrite/src/enums.dart';
import 'package:test/test.dart';

void main() {
  group('name()', () {
    for (final method in HttpMethod.values) {
      test(
        'returns ${method.toString().split('.').last.toUpperCase()} for $method',
        () {
          expect(
            method.name(),
            method.toString().split('.').last.toUpperCase(),
          );
        },
      );
    }
  });
}
