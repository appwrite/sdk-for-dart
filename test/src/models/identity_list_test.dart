import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('IdentityList', () {
    test('model', () {
      final model = IdentityList(
        total: 5,
        identities: [],
      );

      final map = model.toMap();
      final result = IdentityList.fromMap(map);

            expect(result.total, 5);
                  expect(result.identities, []);
          });
  });
}
