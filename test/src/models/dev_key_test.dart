import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('DevKey', () {
    test('model', () {
      final model = DevKey(
        $id: '5e5ea5c16897e',
        $createdAt: '2020-10-15T06:38:00.000+00:00',
        $updatedAt: '2020-10-15T06:38:00.000+00:00',
        name: 'Dev API Key',
        expire: '2020-10-15T06:38:00.000+00:00',
        secret: '919c2d18fb5d4...a2ae413da83346ad2',
        accessedAt: '2020-10-15T06:38:00.000+00:00',
        sdks: [],
      );

      final map = model.toMap();
      final result = DevKey.fromMap(map);

            expect(result.$id, '5e5ea5c16897e');
                  expect(result.$createdAt, '2020-10-15T06:38:00.000+00:00');
                  expect(result.$updatedAt, '2020-10-15T06:38:00.000+00:00');
                  expect(result.name, 'Dev API Key');
                  expect(result.expire, '2020-10-15T06:38:00.000+00:00');
                  expect(result.secret, '919c2d18fb5d4...a2ae413da83346ad2');
                  expect(result.accessedAt, '2020-10-15T06:38:00.000+00:00');
                  expect(result.sdks, []);
          });
  });
}
