import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('DedicatedDatabaseSpecification', () {
    test('model', () {
      final model = DedicatedDatabaseSpecification(
        slug: 's-2vcpu-2gb',
        name: 'Standard',
        price: 20,
        cpu: 2000,
        memory: 2048,
        maxConnections: 200,
        includedStorage: 25,
        includedBandwidth: 200,
        enabled: true,
      );

      final map = model.toMap();
      final result = DedicatedDatabaseSpecification.fromMap(map);

      expect(result.slug, 's-2vcpu-2gb');
      expect(result.name, 'Standard');
      expect(result.price, 20);
      expect(result.cpu, 2000);
      expect(result.memory, 2048);
      expect(result.maxConnections, 200);
      expect(result.includedStorage, 25);
      expect(result.includedBandwidth, 200);
      expect(result.enabled, true);
    });
  });
}
