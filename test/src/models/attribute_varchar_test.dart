import 'package:dart_appwrite/models.dart';
import 'package:dart_appwrite/enums.dart';
import 'package:test/test.dart';

void main() {
  group('AttributeVarchar', () {
    test('model', () {
      final model = AttributeVarchar(
        key: 'fullName',
        type: 'string',
        status: AttributeStatus.available,
        error: 'string',
        xrequired: true,
        $createdAt: '2020-10-15T06:38:00.000+00:00',
        $updatedAt: '2020-10-15T06:38:00.000+00:00',
        size: 128,
      );

      final map = model.toMap();
      final result = AttributeVarchar.fromMap(map);

            expect(result.key, 'fullName');
                  expect(result.type, 'string');
                  expect(result.status, AttributeStatus.available);
                  expect(result.error, 'string');
                  expect(result.xrequired, true);
                  expect(result.$createdAt, '2020-10-15T06:38:00.000+00:00');
                  expect(result.$updatedAt, '2020-10-15T06:38:00.000+00:00');
                  expect(result.size, 128);
          });
  });
}
