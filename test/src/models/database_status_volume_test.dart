import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('DatabaseStatusVolume', () {
    test('model', () {
      final model = DatabaseStatusVolume(
        path: '/var/lib/postgresql/data',
        usedPercent: '45%',
        available: '55GB',
        mounted: true,
      );

      final map = model.toMap();
      final result = DatabaseStatusVolume.fromMap(map);

            expect(result.path, '/var/lib/postgresql/data');
                  expect(result.usedPercent, '45%');
                  expect(result.available, '55GB');
                  expect(result.mounted, true);
          });
  });
}
