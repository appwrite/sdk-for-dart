import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('HealthQueue', () {
    test('model', () {
      final model = HealthQueue(
        size: 8,
      );

      final map = model.toMap();
      final result = HealthQueue.fromMap(map);

            expect(result.size, 8);
          });
  });
}
