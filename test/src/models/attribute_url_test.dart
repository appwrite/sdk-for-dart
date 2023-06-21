import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('AttributeUrl', () {

    test('model', () {
      final model = AttributeUrl(
        key: 'githubUrl',
        type: 'string',
        status: 'available',
        xrequired: true,
        format: 'url',
      );

      final map = model.toMap();
      final result = AttributeUrl.fromMap(map);

      expect(result.key, 'githubUrl');
      expect(result.type, 'string');
      expect(result.status, 'available');
      expect(result.xrequired, true);
      expect(result.format, 'url');
    });
  });
}
