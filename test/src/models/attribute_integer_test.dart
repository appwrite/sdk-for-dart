import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('AttributeInteger', () {

    test('model', () {
      final model = AttributeInteger(
        key: 'count',
        type: 'integer',
        status: 'available',
        xrequired: true,
      );

      final map = model.toMap();
      final result = AttributeInteger.fromMap(map);

      expect(result.key, 'count');
      expect(result.type, 'integer');
      expect(result.status, 'available');
      expect(result.xrequired, true);
    });
  });
}
