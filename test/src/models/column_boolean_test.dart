import 'package:dart_appwrite/models.dart';
import 'package:dart_appwrite/enums.dart';
import 'package:test/test.dart';

void main() {
  group('ColumnBoolean', () {
    test('model', () {
      final model = ColumnBoolean(
        key: 'isEnabled',
        type: 'boolean',
        status: ColumnStatus.available,
        error: 'string',
        xrequired: true,
        $createdAt: '2020-10-15T06:38:00.000+00:00',
        $updatedAt: '2020-10-15T06:38:00.000+00:00',
      );

      final map = model.toMap();
      final result = ColumnBoolean.fromMap(map);

            expect(result.key, 'isEnabled');
                  expect(result.type, 'boolean');
                  expect(result.status, ColumnStatus.available);
                  expect(result.error, 'string');
                  expect(result.xrequired, true);
                  expect(result.$createdAt, '2020-10-15T06:38:00.000+00:00');
                  expect(result.$updatedAt, '2020-10-15T06:38:00.000+00:00');
          });
  });
}
