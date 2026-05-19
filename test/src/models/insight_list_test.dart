import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('InsightList', () {
    test('model', () {
      final model = InsightList(
        total: 5,
        insights: [],
      );

      final map = model.toMap();
      final result = InsightList.fromMap(map);

      expect(result.total, 5);
      expect(result.insights, []);
    });
  });
}
