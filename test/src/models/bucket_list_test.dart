import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('BucketList', () {
    test('model', () {
      final model = BucketList(
        total: 5,
        buckets: [],
      );

      final map = model.toMap();
      final result = BucketList.fromMap(map);

            expect(result.total, 5);
                  expect(result.buckets, []);
          });
  });
}
