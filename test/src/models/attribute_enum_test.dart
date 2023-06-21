import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('AttributeEnum', () {

    test('model', () {
      final model = AttributeEnum(
        key: 'status',
        type: 'string',
        status: 'available',
        xrequired: true,
        elements: [],
        format: 'enum',
      );

      final map = model.toMap();
      final result = AttributeEnum.fromMap(map);

      expect(result.key, 'status');
      expect(result.type, 'string');
      expect(result.status, 'available');
      expect(result.xrequired, true);
      expect(result.elements, []);
      expect(result.format, 'enum');
    });
  });
}
