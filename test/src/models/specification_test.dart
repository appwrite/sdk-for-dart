import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('Specification', () {

    test('model', () {
      final model = Specification(
        memory: 512,
        cpus: 1,
        enabled: true,
        slug: 's-0.5vcpu-512mb',
      );

      final map = model.toMap();
      final result = Specification.fromMap(map);

      expect(result.memory, 512);
      expect(result.cpus, 1);
      expect(result.enabled, true);
      expect(result.slug, 's-0.5vcpu-512mb');
    });
  });
}
