import 'package:dart_appwrite/models.dart';
import 'package:dart_appwrite/enums.dart';
import 'package:test/test.dart';

void main() {
  group('ColumnEmail', () {
    test('model', () {
      final model = ColumnEmail(
        key: 'userEmail',
        type: 'string',
        status: ColumnStatus.available,
        error: 'string',
        xrequired: true,
        $createdAt: '2020-10-15T06:38:00.000+00:00',
        $updatedAt: '2020-10-15T06:38:00.000+00:00',
        format: 'email',
      );

      final map = model.toMap();
      final result = ColumnEmail.fromMap(map);

            expect(result.key, 'userEmail');
                  expect(result.type, 'string');
                  expect(result.status, ColumnStatus.available);
                  expect(result.error, 'string');
                  expect(result.xrequired, true);
                  expect(result.$createdAt, '2020-10-15T06:38:00.000+00:00');
                  expect(result.$updatedAt, '2020-10-15T06:38:00.000+00:00');
                  expect(result.format, 'email');
          });
  });
}
