import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('MockNumberList', () {
    test('model', () {
      final model = MockNumberList(
        total: 5,
        mockNumbers: [],
      );

      final map = model.toMap();
      final result = MockNumberList.fromMap(map);

            expect(result.total, 5);
                  expect(result.mockNumbers, []);
          });
  });
}
