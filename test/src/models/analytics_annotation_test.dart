import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('AnalyticsAnnotation', () {
    test('model', () {
      final model = AnalyticsAnnotation(
        $id: "5e5ea5c16897e",
        $createdAt: "2020-10-15T06:38:00.000+00:00",
        $updatedAt: "2020-10-15T06:38:00.000+00:00",
        propertyId: "5e5ea5c16897e",
        date: "2020-10-15T06:38:00.000+00:00",
        content: "Launched the new pricing page",
        userId: "5e5ea5c16897e",
      );

      final map = model.toMap();
      final result = AnalyticsAnnotation.fromMap(map);

      expect(result.$id, "5e5ea5c16897e");
      expect(result.$createdAt, "2020-10-15T06:38:00.000+00:00");
      expect(result.$updatedAt, "2020-10-15T06:38:00.000+00:00");
      expect(result.propertyId, "5e5ea5c16897e");
      expect(result.date, "2020-10-15T06:38:00.000+00:00");
      expect(result.content, "Launched the new pricing page");
      expect(result.userId, "5e5ea5c16897e");
    });
  });
}
