import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('SiteList', () {

    test('model', () {
      final model = SiteList(
        total: 5,
        sites: [],
      );

      final map = model.toMap();
      final result = SiteList.fromMap(map);

      expect(result.total, 5);
      expect(result.sites, []);
    });
  });
}
