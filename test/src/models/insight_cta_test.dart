import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('InsightCTA', () {
    test('model', () {
      final model = InsightCTA(
        label: 'Create missing index',
        service: 'tablesDB',
        method: 'createIndex',
        params: {},
      );

      final map = model.toMap();
      final result = InsightCTA.fromMap(map);

            expect(result.label, 'Create missing index');
                  expect(result.service, 'tablesDB');
                  expect(result.method, 'createIndex');
                  expect(result.params, {});
          });
  });
}
