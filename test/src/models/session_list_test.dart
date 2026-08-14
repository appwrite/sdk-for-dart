import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('SessionList', () {
    test('model', () {
      final model = SessionList(
        total: 5,
        sessions: [],
      );

      final map = model.toMap();
      final result = SessionList.fromMap(map);

            expect(result.total, 5);
                  expect(result.sessions, []);
          });
  });
}
