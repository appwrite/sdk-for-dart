import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:dart_appwrite/models.dart' as models;
import 'package:dart_appwrite/enums.dart' as enums;
import 'package:dart_appwrite/src/enums.dart';
import 'package:dart_appwrite/src/response.dart';
import 'dart:typed_data';
import 'package:dart_appwrite/dart_appwrite.dart';

class MockClient extends Mock implements Client {
  Map<String, String> config = {'project': 'testproject'};
  String endPoint = 'https://localhost/v1';

  @override
  Future<Response> call(
    HttpMethod? method, {
    String path = '',
    Map<String, String> headers = const {},
    Map<String, dynamic> params = const {},
    ResponseType? responseType,
  }) async {
    return super.noSuchMethod(
      Invocation.method(#call, [method]),
      returnValue: Response(),
    );
  }

  @override
  Future<String?> webAuth(Uri? url) async {
    return super.noSuchMethod(
      Invocation.method(#webAuth, [url]),
      returnValue: 'done',
    );
  }

  @override
  Future<Response> chunkedUpload({
    String? path,
    Map<String, dynamic>? params,
    String? paramName,
    String? idParamName,
    Map<String, String>? headers,
    Function(UploadProgress)? onProgress,
  }) async {
    return super.noSuchMethod(
      Invocation.method(#chunkedUpload, [
        path,
        params,
        paramName,
        idParamName,
        headers,
      ]),
      returnValue: Response(data: {}),
    );
  }
}

void main() {
  group('Mongo test', () {
    late MockClient client;
    late Mongo mongo;

    setUp(() {
      client = MockClient();
      mongo = Mongo(client);
    });

    test('test method list()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'databases': [],
      };

      when(
        client.call(HttpMethod.get),
      ).thenAnswer((_) async => Response(data: data));

      final response = await mongo.list();
      expect(response, isA<models.DedicatedDatabaseList>());
    });

    test('test method create()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'projectId': "5e5ea5c16897e",
        'name': "My Production Database",
        'api': "postgresql",
        'engine': "postgresql",
        'version': "16",
        'specification': "s-2vcpu-2gb",
        'backend': "edge",
        'hostname': "db-myproject-mydb.fra.appwrite.center",
        'connectionPort': 5432,
        'connectionUser': "appwrite_user",
        'connectionPassword': "••••••••",
        'connectionString':
            "postgresql://user:pass@db-myproject-mydb.fra.appwrite.center:5432/postgres?sslmode=require",
        'ssl': true,
        'status': "ready",
        'containerStatus': "active",
        'lifecycleState': "active",
        'idleTimeoutMinutes': 15,
        'cpu': 2000,
        'memory': 4096,
        'storage': 100,
        'storageClass': "ssd",
        'storageMaxGb': 100,
        'nodePool': "db-pool-4vcpu-8gb",
        'replicas': 2,
        'syncMode': "async",
        'networkMaxConnections': 500,
        'networkIdleTimeoutSeconds': 900,
        'networkIPAllowlist': [],
        'backupEnabled': true,
        'pitr': true,
        'pitrRetentionDays': 14,
        'storageAutoscaling': true,
        'storageAutoscalingThresholdPercent': 85,
        'storageAutoscalingMaxGb': 500,
        'maintenanceWindowDay': "sun",
        'maintenanceWindowHourUtc': 3,
        'metricsEnabled': true,
        'sqlApiEnabled': true,
        'sqlApiAllowedStatements': [],
        'sqlApiMaxRows': 10000,
        'sqlApiMaxBytes': 10485760,
        'sqlApiTimeoutSeconds': 30,
        'error': "",
      };

      when(
        client.call(HttpMethod.post),
      ).thenAnswer((_) async => Response(data: data));

      final response = await mongo.create(
        databaseId: "<DATABASE_ID>",
        name: "<NAME>",
      );
      expect(response, isA<models.DedicatedDatabase>());
    });

    test('test method listSpecifications()', () async {
      final Map<String, dynamic> data = {
        'specifications': [],
        'total': 9,
        'pricing': <String, dynamic>{
          'storageOverageRate': 0.125,
          'bandwidthOverageRate': 0.08,
          'replicaRate': 1,
          'pitrRate': 0.2,
        },
      };

      when(
        client.call(HttpMethod.get),
      ).thenAnswer((_) async => Response(data: data));

      final response = await mongo.listSpecifications();
      expect(response, isA<models.DedicatedDatabaseSpecificationList>());
    });

    test('test method get()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'projectId': "5e5ea5c16897e",
        'name': "My Production Database",
        'api': "postgresql",
        'engine': "postgresql",
        'version': "16",
        'specification': "s-2vcpu-2gb",
        'backend': "edge",
        'hostname': "db-myproject-mydb.fra.appwrite.center",
        'connectionPort': 5432,
        'connectionUser': "appwrite_user",
        'connectionPassword': "••••••••",
        'connectionString':
            "postgresql://user:pass@db-myproject-mydb.fra.appwrite.center:5432/postgres?sslmode=require",
        'ssl': true,
        'status': "ready",
        'containerStatus': "active",
        'lifecycleState': "active",
        'idleTimeoutMinutes': 15,
        'cpu': 2000,
        'memory': 4096,
        'storage': 100,
        'storageClass': "ssd",
        'storageMaxGb': 100,
        'nodePool': "db-pool-4vcpu-8gb",
        'replicas': 2,
        'syncMode': "async",
        'networkMaxConnections': 500,
        'networkIdleTimeoutSeconds': 900,
        'networkIPAllowlist': [],
        'backupEnabled': true,
        'pitr': true,
        'pitrRetentionDays': 14,
        'storageAutoscaling': true,
        'storageAutoscalingThresholdPercent': 85,
        'storageAutoscalingMaxGb': 500,
        'maintenanceWindowDay': "sun",
        'maintenanceWindowHourUtc': 3,
        'metricsEnabled': true,
        'sqlApiEnabled': true,
        'sqlApiAllowedStatements': [],
        'sqlApiMaxRows': 10000,
        'sqlApiMaxBytes': 10485760,
        'sqlApiTimeoutSeconds': 30,
        'error': "",
      };

      when(
        client.call(HttpMethod.get),
      ).thenAnswer((_) async => Response(data: data));

      final response = await mongo.get(
        databaseId: "<DATABASE_ID>",
      );
      expect(response, isA<models.DedicatedDatabase>());
    });

    test('test method update()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'projectId': "5e5ea5c16897e",
        'name': "My Production Database",
        'api': "postgresql",
        'engine': "postgresql",
        'version': "16",
        'specification': "s-2vcpu-2gb",
        'backend': "edge",
        'hostname': "db-myproject-mydb.fra.appwrite.center",
        'connectionPort': 5432,
        'connectionUser': "appwrite_user",
        'connectionPassword': "••••••••",
        'connectionString':
            "postgresql://user:pass@db-myproject-mydb.fra.appwrite.center:5432/postgres?sslmode=require",
        'ssl': true,
        'status': "ready",
        'containerStatus': "active",
        'lifecycleState': "active",
        'idleTimeoutMinutes': 15,
        'cpu': 2000,
        'memory': 4096,
        'storage': 100,
        'storageClass': "ssd",
        'storageMaxGb': 100,
        'nodePool': "db-pool-4vcpu-8gb",
        'replicas': 2,
        'syncMode': "async",
        'networkMaxConnections': 500,
        'networkIdleTimeoutSeconds': 900,
        'networkIPAllowlist': [],
        'backupEnabled': true,
        'pitr': true,
        'pitrRetentionDays': 14,
        'storageAutoscaling': true,
        'storageAutoscalingThresholdPercent': 85,
        'storageAutoscalingMaxGb': 500,
        'maintenanceWindowDay': "sun",
        'maintenanceWindowHourUtc': 3,
        'metricsEnabled': true,
        'sqlApiEnabled': true,
        'sqlApiAllowedStatements': [],
        'sqlApiMaxRows': 10000,
        'sqlApiMaxBytes': 10485760,
        'sqlApiTimeoutSeconds': 30,
        'error': "",
      };

      when(
        client.call(HttpMethod.patch),
      ).thenAnswer((_) async => Response(data: data));

      final response = await mongo.update(
        databaseId: "<DATABASE_ID>",
      );
      expect(response, isA<models.DedicatedDatabase>());
    });

    test('test method delete()', () async {
      final data = '';

      when(
        client.call(HttpMethod.delete),
      ).thenAnswer((_) async => Response(data: data));

      final response = await mongo.delete(
        databaseId: "<DATABASE_ID>",
      );
    });

    test('test method listBackups()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'backups': [],
      };

      when(
        client.call(HttpMethod.get),
      ).thenAnswer((_) async => Response(data: data));

      final response = await mongo.listBackups(
        databaseId: "<DATABASE_ID>",
      );
      expect(response, isA<models.DedicatedDatabaseBackupList>());
    });

    test('test method createBackup()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        'databaseId': "5e5ea5c16897e",
        'projectId': "5e5ea5c16897e",
        'policyId': "5e5ea5c16897e",
        'trigger': "schedule",
        'type': "full",
        'requestedType': "incremental",
        'fallbackReason':
            "PostgreSQL incremental backups are not offered because they cannot be restored: archived WAL is physical and cannot replay onto a logically-restored base. A full backup was taken instead; use a point-in-time restore (targetTime) to recover to a moment between fulls.",
        'status': "completed",
        'sizeBytes': 1073741824,
        'error': "",
      };

      when(
        client.call(HttpMethod.post),
      ).thenAnswer((_) async => Response(data: data));

      final response = await mongo.createBackup(
        databaseId: "<DATABASE_ID>",
      );
      expect(response, isA<models.DedicatedDatabaseBackup>());
    });

    test('test method listBackupPolicies()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'policies': [],
      };

      when(
        client.call(HttpMethod.get),
      ).thenAnswer((_) async => Response(data: data));

      final response = await mongo.listBackupPolicies(
        databaseId: "<DATABASE_ID>",
      );
      expect(response, isA<models.BackupPolicyList>());
    });

    test('test method createBackupPolicy()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        'name': "Hourly backups",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'services': [],
        'resources': [],
        'retention': 7,
        'schedule': "0 * * * *",
        'type': "full",
        'enabled': true,
      };

      when(
        client.call(HttpMethod.post),
      ).thenAnswer((_) async => Response(data: data));

      final response = await mongo.createBackupPolicy(
        databaseId: "<DATABASE_ID>",
        policyId: "<POLICY_ID>",
        name: "<NAME>",
        schedule: '',
        retention: 1,
      );
      expect(response, isA<models.BackupPolicy>());
    });

    test('test method getBackupPolicy()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        'name': "Hourly backups",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'services': [],
        'resources': [],
        'retention': 7,
        'schedule': "0 * * * *",
        'type': "full",
        'enabled': true,
      };

      when(
        client.call(HttpMethod.get),
      ).thenAnswer((_) async => Response(data: data));

      final response = await mongo.getBackupPolicy(
        databaseId: "<DATABASE_ID>",
        policyId: "<POLICY_ID>",
      );
      expect(response, isA<models.BackupPolicy>());
    });

    test('test method updateBackupPolicy()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        'name': "Hourly backups",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'services': [],
        'resources': [],
        'retention': 7,
        'schedule': "0 * * * *",
        'type': "full",
        'enabled': true,
      };

      when(
        client.call(HttpMethod.patch),
      ).thenAnswer((_) async => Response(data: data));

      final response = await mongo.updateBackupPolicy(
        databaseId: "<DATABASE_ID>",
        policyId: "<POLICY_ID>",
      );
      expect(response, isA<models.BackupPolicy>());
    });

    test('test method deleteBackupPolicy()', () async {
      final data = '';

      when(
        client.call(HttpMethod.delete),
      ).thenAnswer((_) async => Response(data: data));

      final response = await mongo.deleteBackupPolicy(
        databaseId: "<DATABASE_ID>",
        policyId: "<POLICY_ID>",
      );
    });

    test('test method updateBackupStorage()', () async {
      final Map<String, dynamic> data = {
        'provider': "s3",
        'bucket': "my-backup-bucket",
        'region': "us-east-1",
        'prefix': "backups/",
        'endpoint': "https://minio.example.com",
      };

      when(
        client.call(HttpMethod.put),
      ).thenAnswer((_) async => Response(data: data));

      final response = await mongo.updateBackupStorage(
        databaseId: "<DATABASE_ID>",
        provider: "s3",
        bucket: "<BUCKET>",
        accessKey: "<ACCESS_KEY>",
        secretKey: "<SECRET_KEY>",
      );
      expect(response, isA<models.DedicatedDatabaseBackupStorage>());
    });

    test('test method getBackup()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        'databaseId': "5e5ea5c16897e",
        'projectId': "5e5ea5c16897e",
        'policyId': "5e5ea5c16897e",
        'trigger': "schedule",
        'type': "full",
        'requestedType': "incremental",
        'fallbackReason':
            "PostgreSQL incremental backups are not offered because they cannot be restored: archived WAL is physical and cannot replay onto a logically-restored base. A full backup was taken instead; use a point-in-time restore (targetTime) to recover to a moment between fulls.",
        'status': "completed",
        'sizeBytes': 1073741824,
        'error': "",
      };

      when(
        client.call(HttpMethod.get),
      ).thenAnswer((_) async => Response(data: data));

      final response = await mongo.getBackup(
        databaseId: "<DATABASE_ID>",
        backupId: "<BACKUP_ID>",
      );
      expect(response, isA<models.DedicatedDatabaseBackup>());
    });

    test('test method deleteBackup()', () async {
      final data = '';

      when(
        client.call(HttpMethod.delete),
      ).thenAnswer((_) async => Response(data: data));

      final response = await mongo.deleteBackup(
        databaseId: "<DATABASE_ID>",
        backupId: "<BACKUP_ID>",
      );
    });

    test('test method listBranches()', () async {
      final Map<String, dynamic> data = {
        'total': 2,
        'branches': [],
      };

      when(
        client.call(HttpMethod.get),
      ).thenAnswer((_) async => Response(data: data));

      final response = await mongo.listBranches(
        databaseId: "<DATABASE_ID>",
      );
      expect(response, isA<models.DedicatedDatabaseBranchList>());
    });

    test('test method createBranch()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'projectId': "5e5ea5c16897e",
        'name': "My Production Database",
        'api': "postgresql",
        'engine': "postgresql",
        'version': "16",
        'specification': "s-2vcpu-2gb",
        'backend': "edge",
        'hostname': "db-myproject-mydb.fra.appwrite.center",
        'connectionPort': 5432,
        'connectionUser': "appwrite_user",
        'connectionPassword': "••••••••",
        'connectionString':
            "postgresql://user:pass@db-myproject-mydb.fra.appwrite.center:5432/postgres?sslmode=require",
        'ssl': true,
        'status': "ready",
        'containerStatus': "active",
        'lifecycleState': "active",
        'idleTimeoutMinutes': 15,
        'cpu': 2000,
        'memory': 4096,
        'storage': 100,
        'storageClass': "ssd",
        'storageMaxGb': 100,
        'nodePool': "db-pool-4vcpu-8gb",
        'replicas': 2,
        'syncMode': "async",
        'networkMaxConnections': 500,
        'networkIdleTimeoutSeconds': 900,
        'networkIPAllowlist': [],
        'backupEnabled': true,
        'pitr': true,
        'pitrRetentionDays': 14,
        'storageAutoscaling': true,
        'storageAutoscalingThresholdPercent': 85,
        'storageAutoscalingMaxGb': 500,
        'maintenanceWindowDay': "sun",
        'maintenanceWindowHourUtc': 3,
        'metricsEnabled': true,
        'sqlApiEnabled': true,
        'sqlApiAllowedStatements': [],
        'sqlApiMaxRows': 10000,
        'sqlApiMaxBytes': 10485760,
        'sqlApiTimeoutSeconds': 30,
        'error': "",
      };

      when(
        client.call(HttpMethod.post),
      ).thenAnswer((_) async => Response(data: data));

      final response = await mongo.createBranch(
        databaseId: "<DATABASE_ID>",
      );
      expect(response, isA<models.DedicatedDatabase>());
    });

    test('test method deleteBranch()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'projectId': "5e5ea5c16897e",
        'name': "My Production Database",
        'api': "postgresql",
        'engine': "postgresql",
        'version': "16",
        'specification': "s-2vcpu-2gb",
        'backend': "edge",
        'hostname': "db-myproject-mydb.fra.appwrite.center",
        'connectionPort': 5432,
        'connectionUser': "appwrite_user",
        'connectionPassword': "••••••••",
        'connectionString':
            "postgresql://user:pass@db-myproject-mydb.fra.appwrite.center:5432/postgres?sslmode=require",
        'ssl': true,
        'status': "ready",
        'containerStatus': "active",
        'lifecycleState': "active",
        'idleTimeoutMinutes': 15,
        'cpu': 2000,
        'memory': 4096,
        'storage': 100,
        'storageClass': "ssd",
        'storageMaxGb': 100,
        'nodePool': "db-pool-4vcpu-8gb",
        'replicas': 2,
        'syncMode': "async",
        'networkMaxConnections': 500,
        'networkIdleTimeoutSeconds': 900,
        'networkIPAllowlist': [],
        'backupEnabled': true,
        'pitr': true,
        'pitrRetentionDays': 14,
        'storageAutoscaling': true,
        'storageAutoscalingThresholdPercent': 85,
        'storageAutoscalingMaxGb': 500,
        'maintenanceWindowDay': "sun",
        'maintenanceWindowHourUtc': 3,
        'metricsEnabled': true,
        'sqlApiEnabled': true,
        'sqlApiAllowedStatements': [],
        'sqlApiMaxRows': 10000,
        'sqlApiMaxBytes': 10485760,
        'sqlApiTimeoutSeconds': 30,
        'error': "",
      };

      when(
        client.call(HttpMethod.delete),
      ).thenAnswer((_) async => Response(data: data));

      final response = await mongo.deleteBranch(
        databaseId: "<DATABASE_ID>",
        branchId: "<BRANCH_ID>",
      );
      expect(response, isA<models.DedicatedDatabase>());
    });

    test('test method updateCredentials()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'projectId': "5e5ea5c16897e",
        'name': "My Production Database",
        'api': "postgresql",
        'engine': "postgresql",
        'version': "16",
        'specification': "s-2vcpu-2gb",
        'backend': "edge",
        'hostname': "db-myproject-mydb.fra.appwrite.center",
        'connectionPort': 5432,
        'connectionUser': "appwrite_user",
        'connectionPassword': "••••••••",
        'connectionString':
            "postgresql://user:pass@db-myproject-mydb.fra.appwrite.center:5432/postgres?sslmode=require",
        'ssl': true,
        'status': "ready",
        'containerStatus': "active",
        'lifecycleState': "active",
        'idleTimeoutMinutes': 15,
        'cpu': 2000,
        'memory': 4096,
        'storage': 100,
        'storageClass': "ssd",
        'storageMaxGb': 100,
        'nodePool': "db-pool-4vcpu-8gb",
        'replicas': 2,
        'syncMode': "async",
        'networkMaxConnections': 500,
        'networkIdleTimeoutSeconds': 900,
        'networkIPAllowlist': [],
        'backupEnabled': true,
        'pitr': true,
        'pitrRetentionDays': 14,
        'storageAutoscaling': true,
        'storageAutoscalingThresholdPercent': 85,
        'storageAutoscalingMaxGb': 500,
        'maintenanceWindowDay': "sun",
        'maintenanceWindowHourUtc': 3,
        'metricsEnabled': true,
        'sqlApiEnabled': true,
        'sqlApiAllowedStatements': [],
        'sqlApiMaxRows': 10000,
        'sqlApiMaxBytes': 10485760,
        'sqlApiTimeoutSeconds': 30,
        'error': "",
      };

      when(
        client.call(HttpMethod.patch),
      ).thenAnswer((_) async => Response(data: data));

      final response = await mongo.updateCredentials(
        databaseId: "<DATABASE_ID>",
      );
      expect(response, isA<models.DedicatedDatabase>());
    });

    test('test method createFailover()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'projectId': "5e5ea5c16897e",
        'name': "My Production Database",
        'api': "postgresql",
        'engine': "postgresql",
        'version': "16",
        'specification': "s-2vcpu-2gb",
        'backend': "edge",
        'hostname': "db-myproject-mydb.fra.appwrite.center",
        'connectionPort': 5432,
        'connectionUser': "appwrite_user",
        'connectionPassword': "••••••••",
        'connectionString':
            "postgresql://user:pass@db-myproject-mydb.fra.appwrite.center:5432/postgres?sslmode=require",
        'ssl': true,
        'status': "ready",
        'containerStatus': "active",
        'lifecycleState': "active",
        'idleTimeoutMinutes': 15,
        'cpu': 2000,
        'memory': 4096,
        'storage': 100,
        'storageClass': "ssd",
        'storageMaxGb': 100,
        'nodePool': "db-pool-4vcpu-8gb",
        'replicas': 2,
        'syncMode': "async",
        'networkMaxConnections': 500,
        'networkIdleTimeoutSeconds': 900,
        'networkIPAllowlist': [],
        'backupEnabled': true,
        'pitr': true,
        'pitrRetentionDays': 14,
        'storageAutoscaling': true,
        'storageAutoscalingThresholdPercent': 85,
        'storageAutoscalingMaxGb': 500,
        'maintenanceWindowDay': "sun",
        'maintenanceWindowHourUtc': 3,
        'metricsEnabled': true,
        'sqlApiEnabled': true,
        'sqlApiAllowedStatements': [],
        'sqlApiMaxRows': 10000,
        'sqlApiMaxBytes': 10485760,
        'sqlApiTimeoutSeconds': 30,
        'error': "",
      };

      when(
        client.call(HttpMethod.post),
      ).thenAnswer((_) async => Response(data: data));

      final response = await mongo.createFailover(
        databaseId: "<DATABASE_ID>",
      );
      expect(response, isA<models.DedicatedDatabase>());
    });

    test('test method updateMaintenance()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'projectId': "5e5ea5c16897e",
        'name': "My Production Database",
        'api': "postgresql",
        'engine': "postgresql",
        'version': "16",
        'specification': "s-2vcpu-2gb",
        'backend': "edge",
        'hostname': "db-myproject-mydb.fra.appwrite.center",
        'connectionPort': 5432,
        'connectionUser': "appwrite_user",
        'connectionPassword': "••••••••",
        'connectionString':
            "postgresql://user:pass@db-myproject-mydb.fra.appwrite.center:5432/postgres?sslmode=require",
        'ssl': true,
        'status': "ready",
        'containerStatus': "active",
        'lifecycleState': "active",
        'idleTimeoutMinutes': 15,
        'cpu': 2000,
        'memory': 4096,
        'storage': 100,
        'storageClass': "ssd",
        'storageMaxGb': 100,
        'nodePool': "db-pool-4vcpu-8gb",
        'replicas': 2,
        'syncMode': "async",
        'networkMaxConnections': 500,
        'networkIdleTimeoutSeconds': 900,
        'networkIPAllowlist': [],
        'backupEnabled': true,
        'pitr': true,
        'pitrRetentionDays': 14,
        'storageAutoscaling': true,
        'storageAutoscalingThresholdPercent': 85,
        'storageAutoscalingMaxGb': 500,
        'maintenanceWindowDay': "sun",
        'maintenanceWindowHourUtc': 3,
        'metricsEnabled': true,
        'sqlApiEnabled': true,
        'sqlApiAllowedStatements': [],
        'sqlApiMaxRows': 10000,
        'sqlApiMaxBytes': 10485760,
        'sqlApiTimeoutSeconds': 30,
        'error': "",
      };

      when(
        client.call(HttpMethod.patch),
      ).thenAnswer((_) async => Response(data: data));

      final response = await mongo.updateMaintenance(
        databaseId: "<DATABASE_ID>",
        day: "sun",
        hourUtc: 1,
      );
      expect(response, isA<models.DedicatedDatabase>());
    });

    test('test method createMigration()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'projectId': "5e5ea5c16897e",
        'name': "My Production Database",
        'api': "postgresql",
        'engine': "postgresql",
        'version': "16",
        'specification': "s-2vcpu-2gb",
        'backend': "edge",
        'hostname': "db-myproject-mydb.fra.appwrite.center",
        'connectionPort': 5432,
        'connectionUser': "appwrite_user",
        'connectionPassword': "••••••••",
        'connectionString':
            "postgresql://user:pass@db-myproject-mydb.fra.appwrite.center:5432/postgres?sslmode=require",
        'ssl': true,
        'status': "ready",
        'containerStatus': "active",
        'lifecycleState': "active",
        'idleTimeoutMinutes': 15,
        'cpu': 2000,
        'memory': 4096,
        'storage': 100,
        'storageClass': "ssd",
        'storageMaxGb': 100,
        'nodePool': "db-pool-4vcpu-8gb",
        'replicas': 2,
        'syncMode': "async",
        'networkMaxConnections': 500,
        'networkIdleTimeoutSeconds': 900,
        'networkIPAllowlist': [],
        'backupEnabled': true,
        'pitr': true,
        'pitrRetentionDays': 14,
        'storageAutoscaling': true,
        'storageAutoscalingThresholdPercent': 85,
        'storageAutoscalingMaxGb': 500,
        'maintenanceWindowDay': "sun",
        'maintenanceWindowHourUtc': 3,
        'metricsEnabled': true,
        'sqlApiEnabled': true,
        'sqlApiAllowedStatements': [],
        'sqlApiMaxRows': 10000,
        'sqlApiMaxBytes': 10485760,
        'sqlApiTimeoutSeconds': 30,
        'error': "",
      };

      when(
        client.call(HttpMethod.post),
      ).thenAnswer((_) async => Response(data: data));

      final response = await mongo.createMigration(
        databaseId: "<DATABASE_ID>",
        targetType: "shared",
      );
      expect(response, isA<models.DedicatedDatabase>());
    });

    test('test method listOperations()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'operations': [],
      };

      when(
        client.call(HttpMethod.get),
      ).thenAnswer((_) async => Response(data: data));

      final response = await mongo.listOperations(
        databaseId: "<DATABASE_ID>",
      );
      expect(response, isA<models.DedicatedDatabaseOperationList>());
    });

    test('test method getPitr()', () async {
      final Map<String, dynamic> data = {
        'earliest': "2020-10-15T06:38:00.000+00:00",
        'latest': "2020-10-15T06:38:00.000+00:00",
      };

      when(
        client.call(HttpMethod.get),
      ).thenAnswer((_) async => Response(data: data));

      final response = await mongo.getPitr(
        databaseId: "<DATABASE_ID>",
      );
      expect(response, isA<models.DedicatedDatabasePITRWindows>());
    });

    test('test method getReplicas()', () async {
      final Map<String, dynamic> data = {
        'replicas': 2,
        'syncMode': "async",
        'syncDegraded': true,
        'syncAcknowledgements': 1,
        'syncStandbyCount': 2,
        'members': [],
      };

      when(
        client.call(HttpMethod.get),
      ).thenAnswer((_) async => Response(data: data));

      final response = await mongo.getReplicas(
        databaseId: "<DATABASE_ID>",
      );
      expect(response, isA<models.DedicatedDatabaseReplicas>());
    });

    test('test method listRestorations()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'restorations': [],
      };

      when(
        client.call(HttpMethod.get),
      ).thenAnswer((_) async => Response(data: data));

      final response = await mongo.listRestorations(
        databaseId: "<DATABASE_ID>",
      );
      expect(response, isA<models.DedicatedDatabaseRestorationList>());
    });

    test('test method createRestoration()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        'databaseId': "5e5ea5c16897e",
        'sourceDatabaseId': "5e5ea5c16897e",
        'projectId': "5e5ea5c16897e",
        'backupId': "5e5ea5c16897e",
        'type': "backup",
        'status': "completed",
        'targetTime': "2020-10-15T06:38:00.000+00:00",
        'startedAt': "2020-10-15T06:38:00.000+00:00",
        'completedAt': "2020-10-15T06:38:00.000+00:00",
        'error': "",
      };

      when(
        client.call(HttpMethod.post),
      ).thenAnswer((_) async => Response(data: data));

      final response = await mongo.createRestoration(
        databaseId: "<DATABASE_ID>",
      );
      expect(response, isA<models.DedicatedDatabaseRestoration>());
    });

    test('test method getRestoration()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        'databaseId': "5e5ea5c16897e",
        'sourceDatabaseId': "5e5ea5c16897e",
        'projectId': "5e5ea5c16897e",
        'backupId': "5e5ea5c16897e",
        'type': "backup",
        'status': "completed",
        'targetTime': "2020-10-15T06:38:00.000+00:00",
        'startedAt': "2020-10-15T06:38:00.000+00:00",
        'completedAt': "2020-10-15T06:38:00.000+00:00",
        'error': "",
      };

      when(
        client.call(HttpMethod.get),
      ).thenAnswer((_) async => Response(data: data));

      final response = await mongo.getRestoration(
        databaseId: "<DATABASE_ID>",
        restorationId: "<RESTORATION_ID>",
      );
      expect(response, isA<models.DedicatedDatabaseRestoration>());
    });

    test('test method getStatus()', () async {
      final Map<String, dynamic> data = {
        'health': "healthy",
        'ready': true,
        'engine': "postgresql",
        'version': "17",
        'uptime': 86400,
        'connections': <String, dynamic>{
          'current': 12,
          'max': 100,
        },
        'syncMode': "async",
        'syncDegraded': true,
        'syncAcknowledgements': 1,
        'syncStandbyCount': 2,
        'replicas': [],
        'volumes': [],
      };

      when(
        client.call(HttpMethod.get),
      ).thenAnswer((_) async => Response(data: data));

      final response = await mongo.getStatus(
        databaseId: "<DATABASE_ID>",
      );
      expect(response, isA<models.DatabaseStatus>());
    });

    test('test method createUpgrade()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'projectId': "5e5ea5c16897e",
        'name': "My Production Database",
        'api': "postgresql",
        'engine': "postgresql",
        'version': "16",
        'specification': "s-2vcpu-2gb",
        'backend': "edge",
        'hostname': "db-myproject-mydb.fra.appwrite.center",
        'connectionPort': 5432,
        'connectionUser': "appwrite_user",
        'connectionPassword': "••••••••",
        'connectionString':
            "postgresql://user:pass@db-myproject-mydb.fra.appwrite.center:5432/postgres?sslmode=require",
        'ssl': true,
        'status': "ready",
        'containerStatus': "active",
        'lifecycleState': "active",
        'idleTimeoutMinutes': 15,
        'cpu': 2000,
        'memory': 4096,
        'storage': 100,
        'storageClass': "ssd",
        'storageMaxGb': 100,
        'nodePool': "db-pool-4vcpu-8gb",
        'replicas': 2,
        'syncMode': "async",
        'networkMaxConnections': 500,
        'networkIdleTimeoutSeconds': 900,
        'networkIPAllowlist': [],
        'backupEnabled': true,
        'pitr': true,
        'pitrRetentionDays': 14,
        'storageAutoscaling': true,
        'storageAutoscalingThresholdPercent': 85,
        'storageAutoscalingMaxGb': 500,
        'maintenanceWindowDay': "sun",
        'maintenanceWindowHourUtc': 3,
        'metricsEnabled': true,
        'sqlApiEnabled': true,
        'sqlApiAllowedStatements': [],
        'sqlApiMaxRows': 10000,
        'sqlApiMaxBytes': 10485760,
        'sqlApiTimeoutSeconds': 30,
        'error': "",
      };

      when(
        client.call(HttpMethod.post),
      ).thenAnswer((_) async => Response(data: data));

      final response = await mongo.createUpgrade(
        databaseId: "<DATABASE_ID>",
        targetVersion: "<TARGET_VERSION>",
      );
      expect(response, isA<models.DedicatedDatabase>());
    });
  });
}
