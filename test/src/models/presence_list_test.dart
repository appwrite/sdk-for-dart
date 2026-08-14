import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('PresenceList', () {
    test('model', () {
      final model = PresenceList(
        total: 5,
        presences: [],
      );

      final map = model.toMap();
      final result = PresenceList.fromMap(map);

            expect(result.total, 5);
                  expect(result.presences, []);
          });
  });
}
