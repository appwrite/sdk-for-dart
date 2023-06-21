import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('Variable', () {

    test('model', () {
      final model = Variable(
        $id: '5e5ea5c16897e',
        $createdAt: '2020-10-15T06:38:00.000+00:00',
        $updatedAt: '2020-10-15T06:38:00.000+00:00',
        key: 'API_KEY',
        value: 'myPa\$\$word1',
        functionId: '5e5ea5c16897e',
      );

      final map = model.toMap();
      final result = Variable.fromMap(map);

      expect(result.$id, '5e5ea5c16897e');
      expect(result.$createdAt, '2020-10-15T06:38:00.000+00:00');
      expect(result.$updatedAt, '2020-10-15T06:38:00.000+00:00');
      expect(result.key, 'API_KEY');
      expect(result.value, 'myPa\$\$word1');
      expect(result.functionId, '5e5ea5c16897e');
    });
  });
}
