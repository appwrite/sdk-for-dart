import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('Index', () {

    test('model', () {
      final model = Index(
        key: 'index1',
        type: 'primary',
        status: 'available',
        attributes: [],
      );

      final map = model.toMap();
      final result = Index.fromMap(map);

      expect(result.key, 'index1');
      expect(result.type, 'primary');
      expect(result.status, 'available');
      expect(result.attributes, []);
    });
  });
}
