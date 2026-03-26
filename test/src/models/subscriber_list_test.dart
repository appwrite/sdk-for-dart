import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('SubscriberList', () {
    test('model', () {
      final model = SubscriberList(
        total: 5,
        subscribers: [],
      );

      final map = model.toMap();
      final result = SubscriberList.fromMap(map);

            expect(result.total, 5);
                  expect(result.subscribers, []);
          });
  });
}
