import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('TopicList', () {
    test('model', () {
      final model = TopicList(
        total: 5,
        topics: [],
      );

      final map = model.toMap();
      final result = TopicList.fromMap(map);

      expect(result.total, 5);
      expect(result.topics, []);
    });
  });
}
