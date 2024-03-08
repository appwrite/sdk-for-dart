import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('MfaType', () {

    test('model', () {
      final model = MfaType(
        secret: '1',
        uri: '1',
      );

      final map = model.toMap();
      final result = MfaType.fromMap(map);

      expect(result.secret, '1');
      expect(result.uri, '1');
    });
  });
}
