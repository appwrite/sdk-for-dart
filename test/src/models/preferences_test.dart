import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('Preferences', () {
    test('model', () {
      final model = Preferences(
        data: {},
      );

      final map = model.toMap();
      final result = Preferences.fromMap(map);
    });
  });
}
