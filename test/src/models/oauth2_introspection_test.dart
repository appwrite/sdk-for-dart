import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('Oauth2Introspection', () {
    test('model', () {
      final model = Oauth2Introspection(
        active: true,
      );

      final map = model.toMap();
      final result = Oauth2Introspection.fromMap(map);

      expect(result.active, true);
    });
  });
}
