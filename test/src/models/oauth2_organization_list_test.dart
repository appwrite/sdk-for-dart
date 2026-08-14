import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('Oauth2OrganizationList', () {
    test('model', () {
      final model = Oauth2OrganizationList(
        total: 5,
        organizations: [],
      );

      final map = model.toMap();
      final result = Oauth2OrganizationList.fromMap(map);

      expect(result.total, 5);
      expect(result.organizations, []);
    });
  });
}
