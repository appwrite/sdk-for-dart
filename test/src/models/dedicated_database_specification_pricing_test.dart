import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('DedicatedDatabaseSpecificationPricing', () {
    test('model', () {
      final model = DedicatedDatabaseSpecificationPricing(
        storageOverageRate: 0.125,
        bandwidthOverageRate: 0.08,
        replicaRate: 1,
        crossRegionReplicaRate: 1,
        pitrRate: 0.2,
      );

      final map = model.toMap();
      final result = DedicatedDatabaseSpecificationPricing.fromMap(map);

      expect(result.storageOverageRate, 0.125);
      expect(result.bandwidthOverageRate, 0.08);
      expect(result.replicaRate, 1);
      expect(result.crossRegionReplicaRate, 1);
      expect(result.pitrRate, 0.2);
    });
  });
}
