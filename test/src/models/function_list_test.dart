import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('FunctionList', () {
    test('model', () {
      final model = FunctionList(
        total: 5,
        functions: [],
      );

      final map = model.toMap();
      final result = FunctionList.fromMap(map);

      expect(result.total, 5);
      expect(result.functions, []);
    });
  });
}
