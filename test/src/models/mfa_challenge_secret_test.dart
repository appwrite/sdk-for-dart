import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('MfaChallengeSecret', () {
    test('model', () {
      final model = MfaChallengeSecret(
        $id: 'bb8ea5c16897e',
        $createdAt: '2020-10-15T06:38:00.000+00:00',
        userId: '5e5ea5c168bb8',
        expire: '2020-10-15T06:38:00.000+00:00',
        code: '446372',
      );

      final map = model.toMap();
      final result = MfaChallengeSecret.fromMap(map);

            expect(result.$id, 'bb8ea5c16897e');
                  expect(result.$createdAt, '2020-10-15T06:38:00.000+00:00');
                  expect(result.userId, '5e5ea5c168bb8');
                  expect(result.expire, '2020-10-15T06:38:00.000+00:00');
                  expect(result.code, '446372');
          });
  });
}
