import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('ActivityEventList', () {
    test('model', () {
      final model = ActivityEventList(
        total: 5,
        events: [],
      );

      final map = model.toMap();
      final result = ActivityEventList.fromMap(map);

            expect(result.total, 5);
                  expect(result.events, []);
          });
  });
}
