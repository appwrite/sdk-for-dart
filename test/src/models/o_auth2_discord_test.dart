import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Discord', () {
    test('model', () {
      final model = OAuth2Discord(
        $id: 'github',
        enabled: true,
        clientId: '950722000000343754',
        clientSecret: 'YmPXnM000000000000000000002zFg5D',
      );

      final map = model.toMap();
      final result = OAuth2Discord.fromMap(map);

            expect(result.$id, 'github');
                  expect(result.enabled, true);
                  expect(result.clientId, '950722000000343754');
                  expect(result.clientSecret, 'YmPXnM000000000000000000002zFg5D');
          });
  });
}
