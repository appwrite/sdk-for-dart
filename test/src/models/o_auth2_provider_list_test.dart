import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2ProviderList', () {
    test('model', () {
      final model = OAuth2ProviderList(
        total: 5,
        providers: [],
      );

      final map = model.toMap();
      final result = OAuth2ProviderList.fromMap(map);

      expect(result.total, 5);
      expect(result.providers, []);
    });
  });
}
