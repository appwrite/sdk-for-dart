import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('DedicatedDatabase', () {
    test('model', () {
      final model = DedicatedDatabase(
        $id: '5e5ea5c16897e',
        $createdAt: '2020-10-15T06:38:00.000+00:00',
        $updatedAt: '2020-10-15T06:38:00.000+00:00',
        projectId: '5e5ea5c16897e',
        name: 'My Production Database',
        api: 'postgresql',
        engine: 'postgresql',
        version: '16',
        specification: 's-2vcpu-2gb',
        backend: 'edge',
        hostname: 'db-myproject-mydb.fra.appwrite.center',
        connectionPort: 5432,
        connectionUser: 'appwrite_user',
        connectionPassword: '••••••••',
        connectionString:
            'postgresql://user:pass@db-myproject-mydb.fra.appwrite.center:5432/postgres?sslmode=require',
        ssl: true,
        status: 'ready',
        containerStatus: 'active',
        lifecycleState: 'active',
        idleTimeoutMinutes: 15,
        cpu: 2000,
        memory: 4096,
        storage: 100,
        storageClass: 'ssd',
        storageMaxGb: 100,
        nodePool: 'db-pool-4vcpu-8gb',
        replicas: 2,
        syncMode: 'async',
        crossRegionReplicas: 1,
        networkMaxConnections: 500,
        networkIdleTimeoutSeconds: 900,
        networkIPAllowlist: [],
        backupEnabled: true,
        pitr: true,
        pitrRetentionDays: 14,
        storageAutoscaling: true,
        storageAutoscalingThresholdPercent: 85,
        storageAutoscalingMaxGb: 500,
        maintenanceWindowDay: 'sun',
        maintenanceWindowHourUtc: 3,
        metricsEnabled: true,
        sqlApiEnabled: true,
        sqlApiAllowedStatements: [],
        sqlApiMaxRows: 10000,
        sqlApiMaxBytes: 10485760,
        sqlApiTimeoutSeconds: 30,
        error: '',
      );

      final map = model.toMap();
      final result = DedicatedDatabase.fromMap(map);

      expect(result.$id, '5e5ea5c16897e');
      expect(result.$createdAt, '2020-10-15T06:38:00.000+00:00');
      expect(result.$updatedAt, '2020-10-15T06:38:00.000+00:00');
      expect(result.projectId, '5e5ea5c16897e');
      expect(result.name, 'My Production Database');
      expect(result.api, 'postgresql');
      expect(result.engine, 'postgresql');
      expect(result.version, '16');
      expect(result.specification, 's-2vcpu-2gb');
      expect(result.backend, 'edge');
      expect(result.hostname, 'db-myproject-mydb.fra.appwrite.center');
      expect(result.connectionPort, 5432);
      expect(result.connectionUser, 'appwrite_user');
      expect(result.connectionPassword, '••••••••');
      expect(result.connectionString,
          'postgresql://user:pass@db-myproject-mydb.fra.appwrite.center:5432/postgres?sslmode=require');
      expect(result.ssl, true);
      expect(result.status, 'ready');
      expect(result.containerStatus, 'active');
      expect(result.lifecycleState, 'active');
      expect(result.idleTimeoutMinutes, 15);
      expect(result.cpu, 2000);
      expect(result.memory, 4096);
      expect(result.storage, 100);
      expect(result.storageClass, 'ssd');
      expect(result.storageMaxGb, 100);
      expect(result.nodePool, 'db-pool-4vcpu-8gb');
      expect(result.replicas, 2);
      expect(result.syncMode, 'async');
      expect(result.crossRegionReplicas, 1);
      expect(result.networkMaxConnections, 500);
      expect(result.networkIdleTimeoutSeconds, 900);
      expect(result.networkIPAllowlist, []);
      expect(result.backupEnabled, true);
      expect(result.pitr, true);
      expect(result.pitrRetentionDays, 14);
      expect(result.storageAutoscaling, true);
      expect(result.storageAutoscalingThresholdPercent, 85);
      expect(result.storageAutoscalingMaxGb, 500);
      expect(result.maintenanceWindowDay, 'sun');
      expect(result.maintenanceWindowHourUtc, 3);
      expect(result.metricsEnabled, true);
      expect(result.sqlApiEnabled, true);
      expect(result.sqlApiAllowedStatements, []);
      expect(result.sqlApiMaxRows, 10000);
      expect(result.sqlApiMaxBytes, 10485760);
      expect(result.sqlApiTimeoutSeconds, 30);
      expect(result.error, '');
    });
  });
}
