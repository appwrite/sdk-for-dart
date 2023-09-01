import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('AttributeBoolean', () {

    test('model', () {
      final model = AttributeBoolean(
        key: 'isEnabled',
        type: 'boolean',
        status: 'available',
        error: 'string',
        xrequired: true,
      );

      final map = model.toMap();
      final result = AttributeBoolean.fromMap(map);

      expect(result.key, 'isEnabled');
      expect(result.type, 'boolean');
      expect(result.status, 'available');
      expect(result.error, 'string');
      expect(result.xrequired, true);
    });
  });
}
