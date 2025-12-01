import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('AlgoPhpass', () {
    test('model', () {
      final model = AlgoPhpass(
        type: 'phpass',
      );

      final map = model.toMap();
      final result = AlgoPhpass.fromMap(map);

            expect(result.type, 'phpass');
          });
  });
}
