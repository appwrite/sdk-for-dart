import 'package:dart_appwrite/models.dart';
import 'package:dart_appwrite/enums.dart';
import 'package:test/test.dart';

void main() {
  group('PlatformApple', () {
    test('model', () {
      final model = PlatformApple(
        $id: '5e5ea5c16897e',
        $createdAt: '2020-10-15T06:38:00.000+00:00',
        $updatedAt: '2020-10-15T06:38:00.000+00:00',
        name: 'My Web App',
        type: PlatformType.windows,
        bundleIdentifier: 'com.company.appname',
      );

      final map = model.toMap();
      final result = PlatformApple.fromMap(map);

      expect(result.$id, '5e5ea5c16897e');
      expect(result.$createdAt, '2020-10-15T06:38:00.000+00:00');
      expect(result.$updatedAt, '2020-10-15T06:38:00.000+00:00');
      expect(result.name, 'My Web App');
      expect(result.type, PlatformType.windows);
      expect(result.bundleIdentifier, 'com.company.appname');
    });
  });
}
