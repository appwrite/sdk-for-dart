import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('ColumnInteger', () {
    test('model', () {
      final model = ColumnInteger(
        key: 'count',
        type: 'integer',
        status: 'available',
        error: 'string',
        xrequired: true,
        $createdAt: '2020-10-15T06:38:00.000+00:00',
        $updatedAt: '2020-10-15T06:38:00.000+00:00',
      );

      final map = model.toMap();
      final result = ColumnInteger.fromMap(map);

      expect(result.key, 'count');
      expect(result.type, 'integer');
      expect(result.status, 'available');
      expect(result.error, 'string');
      expect(result.xrequired, true);
      expect(result.$createdAt, '2020-10-15T06:38:00.000+00:00');
      expect(result.$updatedAt, '2020-10-15T06:38:00.000+00:00');
    });
  });
}
