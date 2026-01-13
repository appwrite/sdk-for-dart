import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('MessageList', () {
    test('model', () {
      final model = MessageList(
        total: 5,
        messages: [],
      );

      final map = model.toMap();
      final result = MessageList.fromMap(map);

            expect(result.total, 5);
                  expect(result.messages, []);
          });
  });
}
