import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('Program', () {
    test('model', () {
      final model = Program(
        $id: '',
        title: '',
        description: '',
        tag: '',
        icon: '',
        url: '',
        active: true,
        xexternal: true,
        billingPlanId: '',
      );

      final map = model.toMap();
      final result = Program.fromMap(map);

      expect(result.$id, '');
      expect(result.title, '');
      expect(result.description, '');
      expect(result.tag, '');
      expect(result.icon, '');
      expect(result.url, '');
      expect(result.active, true);
      expect(result.xexternal, true);
      expect(result.billingPlanId, '');
    });
  });
}
