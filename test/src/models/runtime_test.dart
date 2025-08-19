import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('Runtime', () {
    test('model', () {
      final model = Runtime(
        $id: 'python-3.8',
        key: 'python',
        name: 'Python',
        version: '3.8',
        base: 'python:3.8-alpine',
        image: 'appwrite\/runtime-for-python:3.8',
        logo: 'python.png',
        supports: [],
      );

      final map = model.toMap();
      final result = Runtime.fromMap(map);

      expect(result.$id, 'python-3.8');
      expect(result.key, 'python');
      expect(result.name, 'Python');
      expect(result.version, '3.8');
      expect(result.base, 'python:3.8-alpine');
      expect(result.image, 'appwrite\/runtime-for-python:3.8');
      expect(result.logo, 'python.png');
      expect(result.supports, []);
    });
  });
}
