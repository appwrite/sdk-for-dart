import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('AttributeFloat', () {

    test('model', () {
      final model = AttributeFloat(
        key: 'percentageCompleted',
        type: 'double',
        status: 'available',
        xrequired: true,
      );

      final map = model.toMap();
      final result = AttributeFloat.fromMap(map);

      expect(result.key, 'percentageCompleted');
      expect(result.type, 'double');
      expect(result.status, 'available');
      expect(result.xrequired, true);
    });
  });
}
