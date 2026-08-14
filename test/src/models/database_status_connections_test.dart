import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('DatabaseStatusConnections', () {
    test('model', () {
      final model = DatabaseStatusConnections(
        current: 12,
        max: 100,
      );

      final map = model.toMap();
      final result = DatabaseStatusConnections.fromMap(map);

            expect(result.current, 12);
                  expect(result.max, 100);
          });
  });
}
