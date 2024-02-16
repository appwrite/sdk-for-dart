import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('ProviderList', () {

    test('model', () {
      final model = ProviderList(
        total: 5,
        providers: [],
      );

      final map = model.toMap();
      final result = ProviderList.fromMap(map);

      expect(result.total, 5);
      expect(result.providers, []);
    });
  });
}
