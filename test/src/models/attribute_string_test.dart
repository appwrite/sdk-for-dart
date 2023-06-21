import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('AttributeString', () {

    test('model', () {
      final model = AttributeString(
        key: 'fullName',
        type: 'string',
        status: 'available',
        xrequired: true,
        size: 128,
      );

      final map = model.toMap();
      final result = AttributeString.fromMap(map);

      expect(result.key, 'fullName');
      expect(result.type, 'string');
      expect(result.status, 'available');
      expect(result.xrequired, true);
      expect(result.size, 128);
    });
  });
}
