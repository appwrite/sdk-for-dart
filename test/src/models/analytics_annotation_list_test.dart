import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('AnalyticsAnnotationList', () {
    test('model', () {
      final model = AnalyticsAnnotationList(
        total: 5,
        annotations: [],
      );

      final map = model.toMap();
      final result = AnalyticsAnnotationList.fromMap(map);

      expect(result.total, 5);
      expect(result.annotations, []);
    });
  });
}
