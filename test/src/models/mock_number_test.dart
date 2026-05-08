import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('MockNumber', () {
    test('model', () {
      final model = MockNumber(
        number: '+1612842323',
        otp: '123456',
        $createdAt: '2020-10-15T06:38:00.000+00:00',
        $updatedAt: '2020-10-15T06:38:00.000+00:00',
      );

      final map = model.toMap();
      final result = MockNumber.fromMap(map);

      expect(result.number, '+1612842323');
      expect(result.otp, '123456');
      expect(result.$createdAt, '2020-10-15T06:38:00.000+00:00');
      expect(result.$updatedAt, '2020-10-15T06:38:00.000+00:00');
    });
  });
}
