import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('AttributeIp', () {

    test('model', () {
      final model = AttributeIp(
        key: 'ipAddress',
        type: 'string',
        status: 'available',
        xrequired: true,
        format: 'ip',
      );

      final map = model.toMap();
      final result = AttributeIp.fromMap(map);

      expect(result.key, 'ipAddress');
      expect(result.type, 'string');
      expect(result.status, 'available');
      expect(result.xrequired, true);
      expect(result.format, 'ip');
    });
  });
}
