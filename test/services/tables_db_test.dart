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
    String? path = '',
    Map<String, String>? headers = const {},
    Map<String, dynamic>? params = const {},
    ResponseType? responseType,
  }) async {
    return super.noSuchMethod(
      Invocation.method(#call, [method], {
        #path: path,
        #headers: headers,
        #params: params,
        #responseType: responseType,
      }),
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
    ResponseType? responseType,
    HttpMethod? method = HttpMethod.post,
  }) async {
    return super.noSuchMethod(
      Invocation.method(#chunkedUpload, [], {
        #path: path,
        #params: params,
        #paramName: paramName,
        #idParamName: idParamName,
        #headers: headers,
        #method: method,
      }),
      returnValue: Response(data: {}),
    );
  }
}

void main() {
  group('TablesDB test', () {
    late MockClient client;
    late TablesDB tablesDB;

    setUp(() {
      client = MockClient();
      tablesDB = TablesDB(client);
    });

    test('test method list()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'databases': [],
      };

      when(
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.list(
        queries: [],
        search: "<SEARCH>",
        total: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/tablesdb",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "queries": isA<List>(),
        "search": "<SEARCH>",
        "total": false,
      });
      expect(response, isA<models.DatabaseList>());
    });

    test('test method create()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        'name': "My Database",
        'description': "Customer orders and invoices.",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'enabled': true,
        'type': "legacy",
      };

      when(
        client.call(
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.create(
        databaseId: "<DATABASE_ID>",
        name: "<NAME>",
        enabled: false,
        description: "<DESCRIPTION>",
        specification: "serverless",
        replicas: 1,
        syncMode: "async",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/tablesdb",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "databaseId": "<DATABASE_ID>",
        "name": "<NAME>",
        "enabled": false,
        "description": "<DESCRIPTION>",
        "specification": "serverless",
        "replicas": 1,
        "syncMode": "async",
      });
      expect(response, isA<models.Database>());
    });

    test('test method listSpecifications()', () async {
      final Map<String, dynamic> data = {
        'specifications': [],
        'total': 9,
      };

      when(
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.listSpecifications();
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/tablesdb/specifications",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.DedicatedDatabaseSpecificationList>());
    });

    test('test method listTransactions()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'transactions': [],
      };

      when(
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.listTransactions(
        queries: [],
        total: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/tablesdb/transactions",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "queries": isA<List>(),
        "total": false,
      });
      expect(response, isA<models.TransactionList>());
    });

    test('test method createTransaction()', () async {
      final Map<String, dynamic> data = {
        '\$id': "259125845563242502",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'status': "pending",
        'operations': 5,
        'expiresAt': "2020-10-15T06:38:00.000+00:00",
      };

      when(
        client.call(
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.createTransaction(
        ttl: 1,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/tablesdb/transactions",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "ttl": 1,
      });
      expect(response, isA<models.Transaction>());
    });

    test('test method getTransaction()', () async {
      final Map<String, dynamic> data = {
        '\$id': "259125845563242502",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'status': "pending",
        'operations': 5,
        'expiresAt': "2020-10-15T06:38:00.000+00:00",
      };

      when(
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.getTransaction(
        transactionId: "<TRANSACTION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/tablesdb/transactions/%3CTRANSACTION_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.Transaction>());
    });

    test('test method updateTransaction()', () async {
      final Map<String, dynamic> data = {
        '\$id': "259125845563242502",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'status': "pending",
        'operations': 5,
        'expiresAt': "2020-10-15T06:38:00.000+00:00",
      };

      when(
        client.call(
          HttpMethod.patch,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.updateTransaction(
        transactionId: "<TRANSACTION_ID>",
        commit: false,
        rollback: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/tablesdb/transactions/%3CTRANSACTION_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "commit": false,
        "rollback": false,
      });
      expect(response, isA<models.Transaction>());
    });

    test('test method deleteTransaction()', () async {
      final data = '';

      when(
        client.call(
          HttpMethod.delete,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.deleteTransaction(
        transactionId: "<TRANSACTION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.delete,
          path: "/tablesdb/transactions/%3CTRANSACTION_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
    });

    test('test method createOperations()', () async {
      final Map<String, dynamic> data = {
        '\$id': "259125845563242502",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'status': "pending",
        'operations': 5,
        'expiresAt': "2020-10-15T06:38:00.000+00:00",
      };

      when(
        client.call(
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.createOperations(
        transactionId: "<TRANSACTION_ID>",
        operations: [],
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/tablesdb/transactions/%3CTRANSACTION_ID%3E/operations",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "operations": isA<List>(),
      });
      expect(response, isA<models.Transaction>());
    });

    test('test method get()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        'name': "My Database",
        'description': "Customer orders and invoices.",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'enabled': true,
        'type': "legacy",
      };

      when(
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.get(
        databaseId: "<DATABASE_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/tablesdb/%3CDATABASE_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.Database>());
    });

    test('test method update()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        'name': "My Database",
        'description': "Customer orders and invoices.",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'enabled': true,
        'type': "legacy",
      };

      when(
        client.call(
          HttpMethod.put,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.update(
        databaseId: "<DATABASE_ID>",
        name: "<NAME>",
        enabled: false,
        description: "<DESCRIPTION>",
        specification: "serverless",
        replicas: 1,
        syncMode: "async",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.put,
          path: "/tablesdb/%3CDATABASE_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "<NAME>",
        "enabled": false,
        "description": "<DESCRIPTION>",
        "specification": "serverless",
        "replicas": 1,
        "syncMode": "async",
      });
      expect(response, isA<models.Database>());
    });

    test('test method delete()', () async {
      final data = '';

      when(
        client.call(
          HttpMethod.delete,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.delete(
        databaseId: "<DATABASE_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.delete,
          path: "/tablesdb/%3CDATABASE_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
    });

    test('test method createFailover()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'projectId': "5e5ea5c16897e",
        'name': "My Production Database",
        'version': "16",
        'specification': "s-2vcpu-2gb",
        'backend': "edge",
        'hostname': "db-myproject-mydb.fra.appwrite.center",
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
        'storageStatus': "resizing",
        'storageTargetGb': 120,
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
        'storageAutoscalingMaxGb': 30,
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
        client.call(
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.createFailover(
        databaseId: "<DATABASE_ID>",
        targetReplicaId: "<TARGET_REPLICA_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/tablesdb/%3CDATABASE_ID%3E/failovers",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "targetReplicaId": "<TARGET_REPLICA_ID>",
      });
      expect(response, isA<models.DedicatedDatabase>());
    });

    test('test method listMigrations()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'migrations': [],
      };

      when(
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.listMigrations(
        databaseId: "<DATABASE_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/tablesdb/%3CDATABASE_ID%3E/migrations",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.DatabaseMigrationList>());
    });

    test('test method createMigration()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'projectId': "5e5ea5c16897e",
        'databaseId': "5e5ea5c16897e",
        'specification': "s-2vcpu-4gb",
        'phase': "pending",
        'attempt': 0,
        'lastError': "",
        'lagDocuments': 0,
        'changelogWatermark': 0,
        'verifiedAt': "2020-10-15T06:38:00.000+00:00",
        'cutoverAt': "2020-10-15T06:38:00.000+00:00",
        'soakUntil': "2020-10-15T06:38:00.000+00:00",
        'autoCutover': true,
        'cutoverRequested': true,
        'paused': true,
      };

      when(
        client.call(
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.createMigration(
        databaseId: "<DATABASE_ID>",
        specification: "s-1vcpu-1gb",
        autoCutover: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/tablesdb/%3CDATABASE_ID%3E/migrations",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "specification": "s-1vcpu-1gb",
        "autoCutover": false,
      });
      expect(response, isA<models.DatabaseMigration>());
    });

    test('test method getMigration()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'projectId': "5e5ea5c16897e",
        'databaseId': "5e5ea5c16897e",
        'specification': "s-2vcpu-4gb",
        'phase': "pending",
        'attempt': 0,
        'lastError': "",
        'lagDocuments': 0,
        'changelogWatermark': 0,
        'verifiedAt': "2020-10-15T06:38:00.000+00:00",
        'cutoverAt': "2020-10-15T06:38:00.000+00:00",
        'soakUntil': "2020-10-15T06:38:00.000+00:00",
        'autoCutover': true,
        'cutoverRequested': true,
        'paused': true,
      };

      when(
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.getMigration(
        databaseId: "<DATABASE_ID>",
        migrationId: "<MIGRATION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/tablesdb/%3CDATABASE_ID%3E/migrations/%3CMIGRATION_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.DatabaseMigration>());
    });

    test('test method deleteMigration()', () async {
      final data = '';

      when(
        client.call(
          HttpMethod.delete,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.deleteMigration(
        databaseId: "<DATABASE_ID>",
        migrationId: "<MIGRATION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.delete,
          path: "/tablesdb/%3CDATABASE_ID%3E/migrations/%3CMIGRATION_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
    });

    test('test method createCutover()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'projectId': "5e5ea5c16897e",
        'databaseId': "5e5ea5c16897e",
        'specification': "s-2vcpu-4gb",
        'phase': "pending",
        'attempt': 0,
        'lastError': "",
        'lagDocuments': 0,
        'changelogWatermark': 0,
        'verifiedAt': "2020-10-15T06:38:00.000+00:00",
        'cutoverAt': "2020-10-15T06:38:00.000+00:00",
        'soakUntil': "2020-10-15T06:38:00.000+00:00",
        'autoCutover': true,
        'cutoverRequested': true,
        'paused': true,
      };

      when(
        client.call(
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.createCutover(
        databaseId: "<DATABASE_ID>",
        migrationId: "<MIGRATION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/tablesdb/%3CDATABASE_ID%3E/migrations/%3CMIGRATION_ID%3E/cutovers",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.DatabaseMigration>());
    });

    test('test method listOperations()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'operations': [],
      };

      when(
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.listOperations(
        databaseId: "<DATABASE_ID>",
        status: "queued",
        limit: 1,
        offset: 1,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/tablesdb/%3CDATABASE_ID%3E/operations",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "status": "queued",
        "limit": 1,
        "offset": 1,
      });
      expect(response, isA<models.DedicatedDatabaseOperationList>());
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
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.getReplicas(
        databaseId: "<DATABASE_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/tablesdb/%3CDATABASE_ID%3E/replicas",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.DedicatedDatabaseReplicas>());
    });

    test('test method getStatus()', () async {
      final Map<String, dynamic> data = {
        'health': "healthy",
        'ready': true,
        'engine': "postgresql",
        'version': "17",
        'uptime': 86400,
        'syncMode': "async",
        'syncDegraded': true,
        'syncAcknowledgements': 1,
        'syncStandbyCount': 2,
        'replicas': [],
        'volumes': [],
      };

      when(
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.getStatus(
        databaseId: "<DATABASE_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/tablesdb/%3CDATABASE_ID%3E/status",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.DatabaseStatus>());
    });

    test('test method listTables()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'tables': [],
      };

      when(
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.listTables(
        databaseId: "<DATABASE_ID>",
        queries: [],
        search: "<SEARCH>",
        total: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "queries": isA<List>(),
        "search": "<SEARCH>",
        "total": false,
      });
      expect(response, isA<models.TableList>());
    });

    test('test method createTable()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        '\$permissions': [],
        'databaseId': "5e5ea5c16897e",
        'name': "My Table",
        'description': "Movies available in the catalog.",
        'enabled': true,
        'rowSecurity': true,
        'columns': [],
        'indexes': [],
        'bytesMax': 65535,
        'bytesUsed': 1500,
      };

      when(
        client.call(
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.createTable(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        name: "<NAME>",
        permissions: [],
        rowSecurity: false,
        enabled: false,
        columns: [],
        indexes: [],
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "tableId": "<TABLE_ID>",
        "name": "<NAME>",
        "permissions": isA<List>(),
        "rowSecurity": false,
        "enabled": false,
        "columns": isA<List>(),
        "indexes": isA<List>(),
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.Table>());
    });

    test('test method getTable()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        '\$permissions': [],
        'databaseId': "5e5ea5c16897e",
        'name': "My Table",
        'description': "Movies available in the catalog.",
        'enabled': true,
        'rowSecurity': true,
        'columns': [],
        'indexes': [],
        'bytesMax': 65535,
        'bytesUsed': 1500,
      };

      when(
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.getTable(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.Table>());
    });

    test('test method updateTable()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        '\$permissions': [],
        'databaseId': "5e5ea5c16897e",
        'name': "My Table",
        'description': "Movies available in the catalog.",
        'enabled': true,
        'rowSecurity': true,
        'columns': [],
        'indexes': [],
        'bytesMax': 65535,
        'bytesUsed': 1500,
      };

      when(
        client.call(
          HttpMethod.put,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.updateTable(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        name: "<NAME>",
        permissions: [],
        rowSecurity: false,
        enabled: false,
        purge: false,
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.put,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "<NAME>",
        "permissions": isA<List>(),
        "rowSecurity": false,
        "enabled": false,
        "purge": false,
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.Table>());
    });

    test('test method deleteTable()', () async {
      final data = '';

      when(
        client.call(
          HttpMethod.delete,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.deleteTable(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.delete,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
    });

    test('test method listColumns()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'columns': [],
      };

      when(
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.listColumns(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        queries: [],
        total: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/columns",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "queries": isA<List>(),
        "total": false,
      });
      expect(response, isA<models.ColumnList>());
    });

    test('test method createBigIntColumn()', () async {
      final Map<String, dynamic> data = {
        'key': "count",
        'description': "Name shown on the public profile.",
        'type': "bigint",
        'status': "available",
        'error': "string",
        'required': true,
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
      };

      when(
        client.call(
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.createBigIntColumn(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        key: "<KEY>",
        xrequired: false,
        min: 1,
        max: 1,
        xdefault: 1,
        array: false,
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/columns/bigint",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "key": "<KEY>",
        "required": false,
        "min": 1,
        "max": 1,
        "default": 1,
        "array": false,
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.ColumnBigint>());
    });

    test('test method updateBigIntColumn()', () async {
      final Map<String, dynamic> data = {
        'key': "count",
        'description': "Name shown on the public profile.",
        'type': "bigint",
        'status': "available",
        'error': "string",
        'required': true,
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
      };

      when(
        client.call(
          HttpMethod.patch,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.updateBigIntColumn(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        key: "<KEY>",
        xrequired: false,
        xdefault: 1,
        min: 1,
        max: 1,
        newKey: "<NEW_KEY>",
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/columns/bigint/%3CKEY%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "required": false,
        "min": 1,
        "max": 1,
        "default": 1,
        "newKey": "<NEW_KEY>",
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.ColumnBigint>());
    });

    test('test method createBooleanColumn()', () async {
      final Map<String, dynamic> data = {
        'key': "isEnabled",
        'description': "Name shown on the public profile.",
        'type': "boolean",
        'status': "available",
        'error': "string",
        'required': true,
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
      };

      when(
        client.call(
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.createBooleanColumn(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        key: "<KEY>",
        xrequired: false,
        xdefault: false,
        array: false,
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/columns/boolean",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "key": "<KEY>",
        "required": false,
        "default": false,
        "array": false,
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.ColumnBoolean>());
    });

    test('test method updateBooleanColumn()', () async {
      final Map<String, dynamic> data = {
        'key': "isEnabled",
        'description': "Name shown on the public profile.",
        'type': "boolean",
        'status': "available",
        'error': "string",
        'required': true,
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
      };

      when(
        client.call(
          HttpMethod.patch,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.updateBooleanColumn(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        key: "<KEY>",
        xrequired: false,
        xdefault: false,
        newKey: "<NEW_KEY>",
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/columns/boolean/%3CKEY%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "required": false,
        "default": false,
        "newKey": "<NEW_KEY>",
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.ColumnBoolean>());
    });

    test('test method createDatetimeColumn()', () async {
      final Map<String, dynamic> data = {
        'key': "birthDay",
        'description': "Name shown on the public profile.",
        'type': "datetime",
        'status': "available",
        'error': "string",
        'required': true,
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'format': "datetime",
      };

      when(
        client.call(
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.createDatetimeColumn(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        key: "<KEY>",
        xrequired: false,
        xdefault: "2020-10-15T06:38:00.000+00:00",
        array: false,
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/columns/datetime",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "key": "<KEY>",
        "required": false,
        "default": "2020-10-15T06:38:00.000+00:00",
        "array": false,
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.ColumnDatetime>());
    });

    test('test method updateDatetimeColumn()', () async {
      final Map<String, dynamic> data = {
        'key': "birthDay",
        'description': "Name shown on the public profile.",
        'type': "datetime",
        'status': "available",
        'error': "string",
        'required': true,
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'format': "datetime",
      };

      when(
        client.call(
          HttpMethod.patch,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.updateDatetimeColumn(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        key: "<KEY>",
        xrequired: false,
        xdefault: "2020-10-15T06:38:00.000+00:00",
        newKey: "<NEW_KEY>",
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/columns/datetime/%3CKEY%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "required": false,
        "default": "2020-10-15T06:38:00.000+00:00",
        "newKey": "<NEW_KEY>",
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.ColumnDatetime>());
    });

    test('test method createEmailColumn()', () async {
      final Map<String, dynamic> data = {
        'key': "userEmail",
        'description': "Name shown on the public profile.",
        'type': "string",
        'status': "available",
        'error': "string",
        'required': true,
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'format': "email",
      };

      when(
        client.call(
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.createEmailColumn(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        key: "<KEY>",
        xrequired: false,
        xdefault: "email@example.com",
        array: false,
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/columns/email",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "key": "<KEY>",
        "required": false,
        "default": "email@example.com",
        "array": false,
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.ColumnEmail>());
    });

    test('test method updateEmailColumn()', () async {
      final Map<String, dynamic> data = {
        'key': "userEmail",
        'description': "Name shown on the public profile.",
        'type': "string",
        'status': "available",
        'error': "string",
        'required': true,
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'format': "email",
      };

      when(
        client.call(
          HttpMethod.patch,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.updateEmailColumn(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        key: "<KEY>",
        xrequired: false,
        xdefault: "email@example.com",
        newKey: "<NEW_KEY>",
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/columns/email/%3CKEY%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "required": false,
        "default": "email@example.com",
        "newKey": "<NEW_KEY>",
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.ColumnEmail>());
    });

    test('test method createEnumColumn()', () async {
      final Map<String, dynamic> data = {
        'key': "status",
        'description': "Name shown on the public profile.",
        'type': "string",
        'status': "available",
        'error': "string",
        'required': true,
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'elements': [],
        'format': "enum",
      };

      when(
        client.call(
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.createEnumColumn(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        key: "<KEY>",
        elements: [],
        xrequired: false,
        xdefault: "active",
        array: false,
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/columns/enum",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "key": "<KEY>",
        "elements": isA<List>(),
        "required": false,
        "default": "active",
        "array": false,
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.ColumnEnum>());
    });

    test('test method updateEnumColumn()', () async {
      final Map<String, dynamic> data = {
        'key': "status",
        'description': "Name shown on the public profile.",
        'type': "string",
        'status': "available",
        'error': "string",
        'required': true,
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'elements': [],
        'format': "enum",
      };

      when(
        client.call(
          HttpMethod.patch,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.updateEnumColumn(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        key: "<KEY>",
        elements: [],
        xrequired: false,
        xdefault: "active",
        newKey: "<NEW_KEY>",
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/columns/enum/%3CKEY%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "elements": isA<List>(),
        "required": false,
        "default": "active",
        "newKey": "<NEW_KEY>",
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.ColumnEnum>());
    });

    test('test method createFloatColumn()', () async {
      final Map<String, dynamic> data = {
        'key': "percentageCompleted",
        'description': "Name shown on the public profile.",
        'type': "double",
        'status': "available",
        'error': "string",
        'required': true,
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
      };

      when(
        client.call(
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.createFloatColumn(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        key: "<KEY>",
        xrequired: false,
        min: 1.0,
        max: 1.0,
        xdefault: 1.0,
        array: false,
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/columns/float",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "key": "<KEY>",
        "required": false,
        "min": 1.0,
        "max": 1.0,
        "default": 1.0,
        "array": false,
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.ColumnFloat>());
    });

    test('test method updateFloatColumn()', () async {
      final Map<String, dynamic> data = {
        'key': "percentageCompleted",
        'description': "Name shown on the public profile.",
        'type': "double",
        'status': "available",
        'error': "string",
        'required': true,
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
      };

      when(
        client.call(
          HttpMethod.patch,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.updateFloatColumn(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        key: "<KEY>",
        xrequired: false,
        xdefault: 1.0,
        min: 1.0,
        max: 1.0,
        newKey: "<NEW_KEY>",
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/columns/float/%3CKEY%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "required": false,
        "min": 1.0,
        "max": 1.0,
        "default": 1.0,
        "newKey": "<NEW_KEY>",
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.ColumnFloat>());
    });

    test('test method createIntegerColumn()', () async {
      final Map<String, dynamic> data = {
        'key': "count",
        'description': "Name shown on the public profile.",
        'type': "integer",
        'status': "available",
        'error': "string",
        'required': true,
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
      };

      when(
        client.call(
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.createIntegerColumn(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        key: "<KEY>",
        xrequired: false,
        min: 1,
        max: 1,
        xdefault: 1,
        array: false,
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/columns/integer",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "key": "<KEY>",
        "required": false,
        "min": 1,
        "max": 1,
        "default": 1,
        "array": false,
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.ColumnInteger>());
    });

    test('test method updateIntegerColumn()', () async {
      final Map<String, dynamic> data = {
        'key': "count",
        'description': "Name shown on the public profile.",
        'type': "integer",
        'status': "available",
        'error': "string",
        'required': true,
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
      };

      when(
        client.call(
          HttpMethod.patch,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.updateIntegerColumn(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        key: "<KEY>",
        xrequired: false,
        xdefault: 1,
        min: 1,
        max: 1,
        newKey: "<NEW_KEY>",
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/columns/integer/%3CKEY%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "required": false,
        "min": 1,
        "max": 1,
        "default": 1,
        "newKey": "<NEW_KEY>",
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.ColumnInteger>());
    });

    test('test method createIpColumn()', () async {
      final Map<String, dynamic> data = {
        'key': "ipAddress",
        'description': "Name shown on the public profile.",
        'type': "string",
        'status': "available",
        'error': "string",
        'required': true,
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'format': "ip",
      };

      when(
        client.call(
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.createIpColumn(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        key: "<KEY>",
        xrequired: false,
        xdefault: "192.0.2.0",
        array: false,
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/columns/ip",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "key": "<KEY>",
        "required": false,
        "default": "192.0.2.0",
        "array": false,
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.ColumnIp>());
    });

    test('test method updateIpColumn()', () async {
      final Map<String, dynamic> data = {
        'key': "ipAddress",
        'description': "Name shown on the public profile.",
        'type': "string",
        'status': "available",
        'error': "string",
        'required': true,
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'format': "ip",
      };

      when(
        client.call(
          HttpMethod.patch,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.updateIpColumn(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        key: "<KEY>",
        xrequired: false,
        xdefault: "192.0.2.0",
        newKey: "<NEW_KEY>",
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/columns/ip/%3CKEY%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "required": false,
        "default": "192.0.2.0",
        "newKey": "<NEW_KEY>",
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.ColumnIp>());
    });

    test('test method createLineColumn()', () async {
      final Map<String, dynamic> data = {
        'key': "fullName",
        'description': "Name shown on the public profile.",
        'type': "string",
        'status': "available",
        'error': "string",
        'required': true,
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
      };

      when(
        client.call(
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.createLineColumn(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        key: "<KEY>",
        xrequired: false,
        xdefault: [],
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/columns/line",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "key": "<KEY>",
        "required": false,
        "default": isA<List>(),
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.ColumnLine>());
    });

    test('test method updateLineColumn()', () async {
      final Map<String, dynamic> data = {
        'key': "fullName",
        'description': "Name shown on the public profile.",
        'type': "string",
        'status': "available",
        'error': "string",
        'required': true,
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
      };

      when(
        client.call(
          HttpMethod.patch,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.updateLineColumn(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        key: "<KEY>",
        xrequired: false,
        xdefault: [],
        newKey: "<NEW_KEY>",
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/columns/line/%3CKEY%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "required": false,
        "default": isA<List>(),
        "newKey": "<NEW_KEY>",
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.ColumnLine>());
    });

    test('test method createLongtextColumn()', () async {
      final Map<String, dynamic> data = {
        'key': "fullName",
        'description': "Name shown on the public profile.",
        'type': "string",
        'status': "available",
        'error': "string",
        'required': true,
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
      };

      when(
        client.call(
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.createLongtextColumn(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        key: "<KEY>",
        xrequired: false,
        xdefault: "Hello World",
        array: false,
        encrypt: false,
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/columns/longtext",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "key": "<KEY>",
        "required": false,
        "default": "Hello World",
        "array": false,
        "encrypt": false,
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.ColumnLongtext>());
    });

    test('test method updateLongtextColumn()', () async {
      final Map<String, dynamic> data = {
        'key': "fullName",
        'description': "Name shown on the public profile.",
        'type': "string",
        'status': "available",
        'error': "string",
        'required': true,
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
      };

      when(
        client.call(
          HttpMethod.patch,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.updateLongtextColumn(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        key: "<KEY>",
        xrequired: false,
        xdefault: "Hello World",
        newKey: "<NEW_KEY>",
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/columns/longtext/%3CKEY%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "required": false,
        "default": "Hello World",
        "newKey": "<NEW_KEY>",
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.ColumnLongtext>());
    });

    test('test method createMediumtextColumn()', () async {
      final Map<String, dynamic> data = {
        'key': "fullName",
        'description': "Name shown on the public profile.",
        'type': "string",
        'status': "available",
        'error': "string",
        'required': true,
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
      };

      when(
        client.call(
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.createMediumtextColumn(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        key: "<KEY>",
        xrequired: false,
        xdefault: "Hello World",
        array: false,
        encrypt: false,
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/columns/mediumtext",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "key": "<KEY>",
        "required": false,
        "default": "Hello World",
        "array": false,
        "encrypt": false,
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.ColumnMediumtext>());
    });

    test('test method updateMediumtextColumn()', () async {
      final Map<String, dynamic> data = {
        'key': "fullName",
        'description': "Name shown on the public profile.",
        'type': "string",
        'status': "available",
        'error': "string",
        'required': true,
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
      };

      when(
        client.call(
          HttpMethod.patch,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.updateMediumtextColumn(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        key: "<KEY>",
        xrequired: false,
        xdefault: "Hello World",
        newKey: "<NEW_KEY>",
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/columns/mediumtext/%3CKEY%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "required": false,
        "default": "Hello World",
        "newKey": "<NEW_KEY>",
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.ColumnMediumtext>());
    });

    test('test method createPointColumn()', () async {
      final Map<String, dynamic> data = {
        'key': "fullName",
        'description': "Name shown on the public profile.",
        'type': "string",
        'status': "available",
        'error': "string",
        'required': true,
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
      };

      when(
        client.call(
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.createPointColumn(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        key: "<KEY>",
        xrequired: false,
        xdefault: [],
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/columns/point",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "key": "<KEY>",
        "required": false,
        "default": isA<List>(),
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.ColumnPoint>());
    });

    test('test method updatePointColumn()', () async {
      final Map<String, dynamic> data = {
        'key': "fullName",
        'description': "Name shown on the public profile.",
        'type': "string",
        'status': "available",
        'error': "string",
        'required': true,
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
      };

      when(
        client.call(
          HttpMethod.patch,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.updatePointColumn(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        key: "<KEY>",
        xrequired: false,
        xdefault: [],
        newKey: "<NEW_KEY>",
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/columns/point/%3CKEY%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "required": false,
        "default": isA<List>(),
        "newKey": "<NEW_KEY>",
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.ColumnPoint>());
    });

    test('test method createPolygonColumn()', () async {
      final Map<String, dynamic> data = {
        'key': "fullName",
        'description': "Name shown on the public profile.",
        'type': "string",
        'status': "available",
        'error': "string",
        'required': true,
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
      };

      when(
        client.call(
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.createPolygonColumn(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        key: "<KEY>",
        xrequired: false,
        xdefault: [],
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/columns/polygon",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "key": "<KEY>",
        "required": false,
        "default": isA<List>(),
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.ColumnPolygon>());
    });

    test('test method updatePolygonColumn()', () async {
      final Map<String, dynamic> data = {
        'key': "fullName",
        'description': "Name shown on the public profile.",
        'type': "string",
        'status': "available",
        'error': "string",
        'required': true,
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
      };

      when(
        client.call(
          HttpMethod.patch,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.updatePolygonColumn(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        key: "<KEY>",
        xrequired: false,
        xdefault: [],
        newKey: "<NEW_KEY>",
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/columns/polygon/%3CKEY%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "required": false,
        "default": isA<List>(),
        "newKey": "<NEW_KEY>",
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.ColumnPolygon>());
    });

    test('test method createRelationshipColumn()', () async {
      final Map<String, dynamic> data = {
        'key': "fullName",
        'description': "Name shown on the public profile.",
        'type': "string",
        'status': "available",
        'error': "string",
        'required': true,
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'relatedTable': "table",
        'relationType': "oneToOne|oneToMany|manyToOne|manyToMany",
        'twoWay': true,
        'twoWayKey': "string",
        'onDelete': "restrict|cascade|setNull",
        'side': "parent|child",
      };

      when(
        client.call(
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.createRelationshipColumn(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        relatedTableId: "<RELATED_TABLE_ID>",
        type: enums.RelationshipType.oneToOne,
        twoWay: false,
        key: "<KEY>",
        twoWayKey: "<TWO_WAY_KEY>",
        onDelete: enums.RelationMutate.cascade,
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/columns/relationship",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "relatedTableId": "<RELATED_TABLE_ID>",
        "type": enums.RelationshipType.oneToOne.value,
        "twoWay": false,
        "key": "<KEY>",
        "twoWayKey": "<TWO_WAY_KEY>",
        "onDelete": enums.RelationMutate.cascade.value,
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.ColumnRelationship>());
    });

    test('test method updateRelationshipColumn()', () async {
      final Map<String, dynamic> data = {
        'key': "fullName",
        'description': "Name shown on the public profile.",
        'type': "string",
        'status': "available",
        'error': "string",
        'required': true,
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'relatedTable': "table",
        'relationType': "oneToOne|oneToMany|manyToOne|manyToMany",
        'twoWay': true,
        'twoWayKey': "string",
        'onDelete': "restrict|cascade|setNull",
        'side': "parent|child",
      };

      when(
        client.call(
          HttpMethod.patch,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.updateRelationshipColumn(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        key: "<KEY>",
        onDelete: enums.RelationMutate.cascade,
        newKey: "<NEW_KEY>",
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/columns/relationship/%3CKEY%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "onDelete": enums.RelationMutate.cascade.value,
        "newKey": "<NEW_KEY>",
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.ColumnRelationship>());
    });

    test('test method createStringColumn()', () async {
      final Map<String, dynamic> data = {
        'key': "fullName",
        'description': "Name shown on the public profile.",
        'type': "string",
        'status': "available",
        'error': "string",
        'required': true,
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'size': 128,
      };

      when(
        client.call(
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.createStringColumn(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        key: "<KEY>",
        size: 1,
        xrequired: false,
        xdefault: "Hello World",
        array: false,
        encrypt: false,
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/columns/string",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "key": "<KEY>",
        "size": 1,
        "required": false,
        "default": "Hello World",
        "array": false,
        "encrypt": false,
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.ColumnString>());
    });

    test('test method updateStringColumn()', () async {
      final Map<String, dynamic> data = {
        'key': "fullName",
        'description': "Name shown on the public profile.",
        'type': "string",
        'status': "available",
        'error': "string",
        'required': true,
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'size': 128,
      };

      when(
        client.call(
          HttpMethod.patch,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.updateStringColumn(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        key: "<KEY>",
        xrequired: false,
        xdefault: "Hello World",
        size: 1,
        newKey: "<NEW_KEY>",
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/columns/string/%3CKEY%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "required": false,
        "default": "Hello World",
        "size": 1,
        "newKey": "<NEW_KEY>",
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.ColumnString>());
    });

    test('test method createTextColumn()', () async {
      final Map<String, dynamic> data = {
        'key': "fullName",
        'description': "Name shown on the public profile.",
        'type': "string",
        'status': "available",
        'error': "string",
        'required': true,
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
      };

      when(
        client.call(
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.createTextColumn(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        key: "<KEY>",
        xrequired: false,
        xdefault: "Hello World",
        array: false,
        encrypt: false,
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/columns/text",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "key": "<KEY>",
        "required": false,
        "default": "Hello World",
        "array": false,
        "encrypt": false,
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.ColumnText>());
    });

    test('test method updateTextColumn()', () async {
      final Map<String, dynamic> data = {
        'key': "fullName",
        'description': "Name shown on the public profile.",
        'type': "string",
        'status': "available",
        'error': "string",
        'required': true,
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
      };

      when(
        client.call(
          HttpMethod.patch,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.updateTextColumn(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        key: "<KEY>",
        xrequired: false,
        xdefault: "Hello World",
        newKey: "<NEW_KEY>",
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/columns/text/%3CKEY%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "required": false,
        "default": "Hello World",
        "newKey": "<NEW_KEY>",
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.ColumnText>());
    });

    test('test method createUrlColumn()', () async {
      final Map<String, dynamic> data = {
        'key': "githubUrl",
        'description': "Name shown on the public profile.",
        'type': "string",
        'status': "available",
        'error': "string",
        'required': true,
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'format': "url",
      };

      when(
        client.call(
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.createUrlColumn(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        key: "<KEY>",
        xrequired: false,
        xdefault: "https://example.com",
        array: false,
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/columns/url",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "key": "<KEY>",
        "required": false,
        "default": "https://example.com",
        "array": false,
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.ColumnUrl>());
    });

    test('test method updateUrlColumn()', () async {
      final Map<String, dynamic> data = {
        'key': "githubUrl",
        'description': "Name shown on the public profile.",
        'type': "string",
        'status': "available",
        'error': "string",
        'required': true,
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'format': "url",
      };

      when(
        client.call(
          HttpMethod.patch,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.updateUrlColumn(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        key: "<KEY>",
        xrequired: false,
        xdefault: "https://example.com",
        newKey: "<NEW_KEY>",
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/columns/url/%3CKEY%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "required": false,
        "default": "https://example.com",
        "newKey": "<NEW_KEY>",
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.ColumnUrl>());
    });

    test('test method createVarcharColumn()', () async {
      final Map<String, dynamic> data = {
        'key': "fullName",
        'description': "Name shown on the public profile.",
        'type': "string",
        'status': "available",
        'error': "string",
        'required': true,
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'size': 128,
      };

      when(
        client.call(
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.createVarcharColumn(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        key: "<KEY>",
        size: 1,
        xrequired: false,
        xdefault: "Hello World",
        array: false,
        encrypt: false,
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/columns/varchar",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "key": "<KEY>",
        "size": 1,
        "required": false,
        "default": "Hello World",
        "array": false,
        "encrypt": false,
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.ColumnVarchar>());
    });

    test('test method updateVarcharColumn()', () async {
      final Map<String, dynamic> data = {
        'key': "fullName",
        'description': "Name shown on the public profile.",
        'type': "string",
        'status': "available",
        'error': "string",
        'required': true,
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'size': 128,
      };

      when(
        client.call(
          HttpMethod.patch,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.updateVarcharColumn(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        key: "<KEY>",
        xrequired: false,
        xdefault: "Hello World",
        size: 1,
        newKey: "<NEW_KEY>",
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/columns/varchar/%3CKEY%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "required": false,
        "default": "Hello World",
        "size": 1,
        "newKey": "<NEW_KEY>",
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.ColumnVarchar>());
    });

    test('test method getColumn()', () async {
      final Map<String, dynamic> data = {
        'key': "fullName",
        'description': "Name shown on the public profile.",
        'status': "available",
        'error': "string",
        'required': true,
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'size': 128,
        'type': "string",
      };

      when(
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.getColumn(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        key: "<KEY>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/columns/%3CKEY%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.ColumnString>());
    });

    test('test method deleteColumn()', () async {
      final data = '';

      when(
        client.call(
          HttpMethod.delete,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.deleteColumn(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        key: "<KEY>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.delete,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/columns/%3CKEY%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
    });

    test('test method listIndexes()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'indexes': [],
      };

      when(
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.listIndexes(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        queries: [],
        total: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/indexes",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "queries": isA<List>(),
        "total": false,
      });
      expect(response, isA<models.ColumnIndexList>());
    });

    test('test method createIndex()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'key': "index1",
        'description': "Speeds up lookups by email.",
        'type': "primary",
        'status': "available",
        'error': "string",
        'columns': [],
        'lengths': [],
      };

      when(
        client.call(
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.createIndex(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        key: "<KEY>",
        type: enums.TablesDBIndexType.key,
        columns: [],
        orders: [enums.OrderBy.asc],
        lengths: [],
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/indexes",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "key": "<KEY>",
        "type": enums.TablesDBIndexType.key.value,
        "columns": isA<List>(),
        "orders": isA<List>(),
        "lengths": isA<List>(),
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.ColumnIndex>());
    });

    test('test method getIndex()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'key': "index1",
        'description': "Speeds up lookups by email.",
        'type': "primary",
        'status': "available",
        'error': "string",
        'columns': [],
        'lengths': [],
      };

      when(
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.getIndex(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        key: "<KEY>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/indexes/%3CKEY%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.ColumnIndex>());
    });

    test('test method deleteIndex()', () async {
      final data = '';

      when(
        client.call(
          HttpMethod.delete,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.deleteIndex(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        key: "<KEY>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.delete,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/indexes/%3CKEY%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
    });

    test('test method listRows()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'rows': [],
      };

      when(
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.listRows(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        queries: [],
        transactionId: "<TRANSACTION_ID>",
        total: false,
        ttl: 1,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/rows",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "queries": isA<List>(),
        "transactionId": "<TRANSACTION_ID>",
        "total": false,
        "ttl": 1,
      });
      expect(response, isA<models.RowList>());
    });

    test('test method createRow()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$sequence': "1",
        '\$tableId': "5e5ea5c15117e",
        '\$databaseId': "5e5ea5c15117e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        '\$permissions': [],
      };

      when(
        client.call(
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.createRow(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        rowId: "<ROW_ID>",
        data: {},
        permissions: [],
        transactionId: "<TRANSACTION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/rows",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "rowId": "<ROW_ID>",
        "data": isA<Map>(),
        "permissions": isA<List>(),
        "transactionId": "<TRANSACTION_ID>",
      });
      expect(response, isA<models.Row>());
    });

    test('test method createRows()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'rows': [],
      };

      when(
        client.call(
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.createRows(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        rows: [],
        transactionId: "<TRANSACTION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/rows",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "rows": isA<List>(),
        "transactionId": "<TRANSACTION_ID>",
      });
      expect(response, isA<models.RowList>());
    });

    test('test method upsertRows()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'rows': [],
      };

      when(
        client.call(
          HttpMethod.put,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.upsertRows(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        rows: [],
        transactionId: "<TRANSACTION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.put,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/rows",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "rows": isA<List>(),
        "transactionId": "<TRANSACTION_ID>",
      });
      expect(response, isA<models.RowList>());
    });

    test('test method updateRows()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'rows': [],
      };

      when(
        client.call(
          HttpMethod.patch,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.updateRows(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        data: {},
        queries: [],
        transactionId: "<TRANSACTION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/rows",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "data": isA<Map>(),
        "queries": isA<List>(),
        "transactionId": "<TRANSACTION_ID>",
      });
      expect(response, isA<models.RowList>());
    });

    test('test method deleteRows()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'rows': [],
      };

      when(
        client.call(
          HttpMethod.delete,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.deleteRows(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        queries: [],
        transactionId: "<TRANSACTION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.delete,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/rows",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "queries": isA<List>(),
        "transactionId": "<TRANSACTION_ID>",
      });
      expect(response, isA<models.RowList>());
    });

    test('test method createQuery()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'rows': [],
      };

      when(
        client.call(
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.createQuery(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        queries: [],
        transactionId: "<TRANSACTION_ID>",
        total: false,
        ttl: 1,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/rows/query",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "queries": isA<List>(),
        "transactionId": "<TRANSACTION_ID>",
        "total": false,
        "ttl": 1,
      });
      expect(response, isA<models.RowList>());
    });

    test('test method getRow()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$sequence': "1",
        '\$tableId': "5e5ea5c15117e",
        '\$databaseId': "5e5ea5c15117e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        '\$permissions': [],
      };

      when(
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.getRow(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        rowId: "<ROW_ID>",
        queries: [],
        transactionId: "<TRANSACTION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/rows/%3CROW_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "queries": isA<List>(),
        "transactionId": "<TRANSACTION_ID>",
      });
      expect(response, isA<models.Row>());
    });

    test('test method upsertRow()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$sequence': "1",
        '\$tableId': "5e5ea5c15117e",
        '\$databaseId': "5e5ea5c15117e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        '\$permissions': [],
      };

      when(
        client.call(
          HttpMethod.put,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.upsertRow(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        rowId: "<ROW_ID>",
        data: {},
        permissions: [],
        transactionId: "<TRANSACTION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.put,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/rows/%3CROW_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "data": isA<Map>(),
        "permissions": isA<List>(),
        "transactionId": "<TRANSACTION_ID>",
      });
      expect(response, isA<models.Row>());
    });

    test('test method updateRow()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$sequence': "1",
        '\$tableId': "5e5ea5c15117e",
        '\$databaseId': "5e5ea5c15117e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        '\$permissions': [],
      };

      when(
        client.call(
          HttpMethod.patch,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.updateRow(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        rowId: "<ROW_ID>",
        data: {},
        permissions: [],
        transactionId: "<TRANSACTION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/rows/%3CROW_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "data": isA<Map>(),
        "permissions": isA<List>(),
        "transactionId": "<TRANSACTION_ID>",
      });
      expect(response, isA<models.Row>());
    });

    test('test method deleteRow()', () async {
      final data = '';

      when(
        client.call(
          HttpMethod.delete,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.deleteRow(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        rowId: "<ROW_ID>",
        transactionId: "<TRANSACTION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.delete,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/rows/%3CROW_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "transactionId": "<TRANSACTION_ID>",
      });
    });

    test('test method decrementRowColumn()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$sequence': "1",
        '\$tableId': "5e5ea5c15117e",
        '\$databaseId': "5e5ea5c15117e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        '\$permissions': [],
      };

      when(
        client.call(
          HttpMethod.patch,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.decrementRowColumn(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        rowId: "<ROW_ID>",
        column: "<COLUMN>",
        value: 1.0,
        min: 1.0,
        transactionId: "<TRANSACTION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/rows/%3CROW_ID%3E/%3CCOLUMN%3E/decrement",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "value": 1.0,
        "min": 1.0,
        "transactionId": "<TRANSACTION_ID>",
      });
      expect(response, isA<models.Row>());
    });

    test('test method incrementRowColumn()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$sequence': "1",
        '\$tableId': "5e5ea5c15117e",
        '\$databaseId': "5e5ea5c15117e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        '\$permissions': [],
      };

      when(
        client.call(
          HttpMethod.patch,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await tablesDB.incrementRowColumn(
        databaseId: "<DATABASE_ID>",
        tableId: "<TABLE_ID>",
        rowId: "<ROW_ID>",
        column: "<COLUMN>",
        value: 1.0,
        max: 1.0,
        transactionId: "<TRANSACTION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/tablesdb/%3CDATABASE_ID%3E/tables/%3CTABLE_ID%3E/rows/%3CROW_ID%3E/%3CCOLUMN%3E/increment",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "value": 1.0,
        "max": 1.0,
        "transactionId": "<TRANSACTION_ID>",
      });
      expect(response, isA<models.Row>());
    });
  });
}
