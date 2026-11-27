import 'package:dart_appwrite/models.dart';
import 'package:dart_appwrite/enums.dart';
import 'package:test/test.dart';

void main() {
  group('AnalyticsPropertyList', () {
    test('model', () {
      final model = AnalyticsPropertyList(
        total: 5,
        properties: [],
      );

      final map = model.toMap();
      final result = AnalyticsPropertyList.fromMap(map);

      expect(result.total, 5);
      expect(result.properties, []);
    });
  });
}
