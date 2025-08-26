import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('AttributeFloat', () {
    test('model', () {
      final model = AttributeFloat(
        key: 'percentageCompleted',
        type: 'double',
        status: 'available',
        error: 'string',
        xrequired: true,
        $createdAt: '2020-10-15T06:38:00.000+00:00',
        $updatedAt: '2020-10-15T06:38:00.000+00:00',
      );

      final map = model.toMap();
      final result = AttributeFloat.fromMap(map);

            expect(result.key, 'percentageCompleted');
                  expect(result.type, 'double');
                  expect(result.status, 'available');
                  expect(result.error, 'string');
                  expect(result.xrequired, true);
                  expect(result.$createdAt, '2020-10-15T06:38:00.000+00:00');
                  expect(result.$updatedAt, '2020-10-15T06:38:00.000+00:00');
          });
  });
}
