import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('DedicatedDatabasePooler', () {
    test('model', () {
      final model = DedicatedDatabasePooler(
        enabled: true,
        mode: "transaction",
        maxConnections: 200,
        defaultPoolSize: 25,
        port: 6432,
        readWriteSplitting: true,
        poolerCpuRequest: "100m",
        poolerCpuLimit: "200m",
        poolerMemoryRequest: "64Mi",
        poolerMemoryLimit: "128Mi",
      );

      final map = model.toMap();
      final result = DedicatedDatabasePooler.fromMap(map);

      expect(result.enabled, true);
      expect(result.mode, "transaction");
      expect(result.maxConnections, 200);
      expect(result.defaultPoolSize, 25);
      expect(result.port, 6432);
      expect(result.readWriteSplitting, true);
      expect(result.poolerCpuRequest, "100m");
      expect(result.poolerCpuLimit, "200m");
      expect(result.poolerMemoryRequest, "64Mi");
      expect(result.poolerMemoryLimit, "128Mi");
    });
  });
}
