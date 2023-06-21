import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('AttributeEmail', () {

    test('model', () {
      final model = AttributeEmail(
        key: 'userEmail',
        type: 'string',
        status: 'available',
        xrequired: true,
        format: 'email',
      );

      final map = model.toMap();
      final result = AttributeEmail.fromMap(map);

      expect(result.key, 'userEmail');
      expect(result.type, 'string');
      expect(result.status, 'available');
      expect(result.xrequired, true);
      expect(result.format, 'email');
    });
  });
}
