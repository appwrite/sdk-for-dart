import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('MockNumber', () {
    test('model', () {
      final model = MockNumber(
        phone: '+1612842323',
        otp: '123456',
      );

      final map = model.toMap();
      final result = MockNumber.fromMap(map);

      expect(result.phone, '+1612842323');
      expect(result.otp, '123456');
    });
  });
}
