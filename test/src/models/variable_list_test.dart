import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('VariableList', () {
    test('model', () {
      final model = VariableList(
        total: 5,
        variables: [],
      );

      final map = model.toMap();
      final result = VariableList.fromMap(map);

      expect(result.total, 5);
      expect(result.variables, []);
    });
  });
}
