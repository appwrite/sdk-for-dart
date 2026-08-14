import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('ProxyInvalidation', () {
    test('model', () {
      final model = ProxyInvalidation(
        domain: 'appwrite.company.com',
        type: 'tag',
        reference: 'products',
        status: 'success',
      );

      final map = model.toMap();
      final result = ProxyInvalidation.fromMap(map);

      expect(result.domain, 'appwrite.company.com');
      expect(result.type, 'tag');
      expect(result.reference, 'products');
      expect(result.status, 'success');
    });
  });
}
