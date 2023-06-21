import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('HealthAntivirus', () {

    test('model', () {
      final model = HealthAntivirus(
        version: '1.0.0',
        status: 'online',
      );

      final map = model.toMap();
      final result = HealthAntivirus.fromMap(map);

      expect(result.version, '1.0.0');
      expect(result.status, 'online');
    });
  });
}
