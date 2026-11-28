import 'package:dart_appwrite/models.dart';
import 'package:dart_appwrite/enums.dart';
import 'package:test/test.dart';

void main() {
  group('AnalyticsProperty', () {
    test('model', () {
      final model = AnalyticsProperty(
        $id: "5e5ea5c16897e",
        $createdAt: "2020-10-15T06:38:00.000+00:00",
        $updatedAt: "2020-10-15T06:38:00.000+00:00",
        name: "My Website",
        domain: "example.com",
        enabled: true,
        allowedOrigins: [],
        type: AnalyticsPropertyType.web,
        identifyUsers: true,
        accessedAt: "2020-10-15T06:38:00.000+00:00",
        firstAccessedAt: "2020-10-15T06:38:00.000+00:00",
      );

      final map = model.toMap();
      final result = AnalyticsProperty.fromMap(map);

      expect(result.$id, "5e5ea5c16897e");
      expect(result.$createdAt, "2020-10-15T06:38:00.000+00:00");
      expect(result.$updatedAt, "2020-10-15T06:38:00.000+00:00");
      expect(result.name, "My Website");
      expect(result.domain, "example.com");
      expect(result.enabled, true);
      expect(result.allowedOrigins, []);
      expect(result.type, AnalyticsPropertyType.web);
      expect(result.identifyUsers, true);
      expect(result.accessedAt, "2020-10-15T06:38:00.000+00:00");
      expect(result.firstAccessedAt, "2020-10-15T06:38:00.000+00:00");
    });
  });
}
