import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('MfaRecoveryCodes', () {
    test('model', () {
      final model = MfaRecoveryCodes(
        recoveryCodes: [],
      );

      final map = model.toMap();
      final result = MfaRecoveryCodes.fromMap(map);

            expect(result.recoveryCodes, []);
          });
  });
}
