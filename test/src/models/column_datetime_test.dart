import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('ColumnDatetime', () {

    test('model', () {
      final model = ColumnDatetime(
        key: 'birthDay',
        type: 'datetime',
        status: 'available',
        error: 'string',
        xrequired: true,
        $createdAt: '2020-10-15T06:38:00.000+00:00',
        $updatedAt: '2020-10-15T06:38:00.000+00:00',
        format: 'datetime',
      );

      final map = model.toMap();
      final result = ColumnDatetime.fromMap(map);

      expect(result.key, 'birthDay');
      expect(result.type, 'datetime');
      expect(result.status, 'available');
      expect(result.error, 'string');
      expect(result.xrequired, true);
      expect(result.$createdAt, '2020-10-15T06:38:00.000+00:00');
      expect(result.$updatedAt, '2020-10-15T06:38:00.000+00:00');
      expect(result.format, 'datetime');
    });
  });
}
