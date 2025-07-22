import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('ColumnIp', () {

    test('model', () {
      final model = ColumnIp(
        key: 'ipAddress',
        type: 'string',
        status: 'available',
        error: 'string',
        xrequired: true,
        $createdAt: '2020-10-15T06:38:00.000+00:00',
        $updatedAt: '2020-10-15T06:38:00.000+00:00',
        format: 'ip',
      );

      final map = model.toMap();
      final result = ColumnIp.fromMap(map);

      expect(result.key, 'ipAddress');
      expect(result.type, 'string');
      expect(result.status, 'available');
      expect(result.error, 'string');
      expect(result.xrequired, true);
      expect(result.$createdAt, '2020-10-15T06:38:00.000+00:00');
      expect(result.$updatedAt, '2020-10-15T06:38:00.000+00:00');
      expect(result.format, 'ip');
    });
  });
}
