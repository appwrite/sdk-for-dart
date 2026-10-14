import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('DomainsList', () {
    test('model', () {
      final model = DomainsList(
        total: 5,
        domains: [],
      );

      final map = model.toMap();
      final result = DomainsList.fromMap(map);

      expect(result.total, 5);
      expect(result.domains, []);
    });
  });
}
