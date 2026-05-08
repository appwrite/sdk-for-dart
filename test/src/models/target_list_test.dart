import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('TargetList', () {
    test('model', () {
      final model = TargetList(
        total: 5,
        targets: [],
      );

      final map = model.toMap();
      final result = TargetList.fromMap(map);

            expect(result.total, 5);
                  expect(result.targets, []);
          });
  });
}
