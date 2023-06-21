import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('ContinentList', () {

    test('model', () {
      final model = ContinentList(
        total: 5,
        continents: [],
      );

      final map = model.toMap();
      final result = ContinentList.fromMap(map);

      expect(result.total, 5);
      expect(result.continents, []);
    });
  });
}
