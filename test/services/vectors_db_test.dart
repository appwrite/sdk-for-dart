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
  group('VectorsDB test', () {
    late MockClient client;
    late VectorsDB vectorsDB;

    setUp(() {
      client = MockClient();
      vectorsDB = VectorsDB(client);
    });

    test('test method list()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'databases': [],
      };

      when(
        client.call(HttpMethod.get),
      ).thenAnswer((_) async => Response(data: data));

      final response = await vectorsDB.list();
      expect(response, isA<models.DatabaseList>());
    });

    test('test method create()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        'name': "My Database",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'enabled': true,
        'type': "legacy",
      };

      when(
        client.call(HttpMethod.post),
      ).thenAnswer((_) async => Response(data: data));

      final response = await vectorsDB.create(
        databaseId: "<DATABASE_ID>",
        name: "<NAME>",
      );
      expect(response, isA<models.Database>());
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

      final response = await vectorsDB.listSpecifications();
      expect(response, isA<models.DedicatedDatabaseSpecificationList>());
    });

    test('test method listTransactions()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'transactions': [],
      };

      when(
        client.call(HttpMethod.get),
      ).thenAnswer((_) async => Response(data: data));

      final response = await vectorsDB.listTransactions();
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
        client.call(HttpMethod.post),
      ).thenAnswer((_) async => Response(data: data));

      final response = await vectorsDB.createTransaction();
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
        client.call(HttpMethod.get),
      ).thenAnswer((_) async => Response(data: data));

      final response = await vectorsDB.getTransaction(
        transactionId: "<TRANSACTION_ID>",
      );
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
        client.call(HttpMethod.patch),
      ).thenAnswer((_) async => Response(data: data));

      final response = await vectorsDB.updateTransaction(
        transactionId: "<TRANSACTION_ID>",
      );
      expect(response, isA<models.Transaction>());
    });

    test('test method deleteTransaction()', () async {
      final data = '';

      when(
        client.call(HttpMethod.delete),
      ).thenAnswer((_) async => Response(data: data));

      final response = await vectorsDB.deleteTransaction(
        transactionId: "<TRANSACTION_ID>",
      );
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
        client.call(HttpMethod.post),
      ).thenAnswer((_) async => Response(data: data));

      final response = await vectorsDB.createOperations(
        transactionId: "<TRANSACTION_ID>",
      );
      expect(response, isA<models.Transaction>());
    });

    test('test method get()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        'name': "My Database",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'enabled': true,
        'type': "legacy",
      };

      when(
        client.call(HttpMethod.get),
      ).thenAnswer((_) async => Response(data: data));

      final response = await vectorsDB.get(
        databaseId: "<DATABASE_ID>",
      );
      expect(response, isA<models.Database>());
    });

    test('test method update()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        'name': "My Database",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'enabled': true,
        'type': "legacy",
      };

      when(
        client.call(HttpMethod.put),
      ).thenAnswer((_) async => Response(data: data));

      final response = await vectorsDB.update(
        databaseId: "<DATABASE_ID>",
        name: "<NAME>",
      );
      expect(response, isA<models.Database>());
    });

    test('test method delete()', () async {
      final data = '';

      when(
        client.call(HttpMethod.delete),
      ).thenAnswer((_) async => Response(data: data));

      final response = await vectorsDB.delete(
        databaseId: "<DATABASE_ID>",
      );
    });

    test('test method listCollections()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'collections': [],
      };

      when(
        client.call(HttpMethod.get),
      ).thenAnswer((_) async => Response(data: data));

      final response = await vectorsDB.listCollections(
        databaseId: "<DATABASE_ID>",
      );
      expect(response, isA<models.VectorsdbCollectionList>());
    });

    test('test method createCollection()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        '\$permissions': [],
        'databaseId': "5e5ea5c16897e",
        'name': "My Collection",
        'enabled': true,
        'documentSecurity': true,
        'attributes': [],
        'indexes': [],
        'bytesMax': 65535,
        'bytesUsed': 1500,
        'dimension': 1536,
      };

      when(
        client.call(HttpMethod.post),
      ).thenAnswer((_) async => Response(data: data));

      final response = await vectorsDB.createCollection(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        name: "<NAME>",
        dimension: 1,
      );
      expect(response, isA<models.VectorsdbCollection>());
    });

    test('test method getCollection()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        '\$permissions': [],
        'databaseId': "5e5ea5c16897e",
        'name': "My Collection",
        'enabled': true,
        'documentSecurity': true,
        'attributes': [],
        'indexes': [],
        'bytesMax': 65535,
        'bytesUsed': 1500,
        'dimension': 1536,
      };

      when(
        client.call(HttpMethod.get),
      ).thenAnswer((_) async => Response(data: data));

      final response = await vectorsDB.getCollection(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
      );
      expect(response, isA<models.VectorsdbCollection>());
    });

    test('test method updateCollection()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        '\$permissions': [],
        'databaseId': "5e5ea5c16897e",
        'name': "My Collection",
        'enabled': true,
        'documentSecurity': true,
        'attributes': [],
        'indexes': [],
        'bytesMax': 65535,
        'bytesUsed': 1500,
        'dimension': 1536,
      };

      when(
        client.call(HttpMethod.put),
      ).thenAnswer((_) async => Response(data: data));

      final response = await vectorsDB.updateCollection(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        name: "<NAME>",
      );
      expect(response, isA<models.VectorsdbCollection>());
    });

    test('test method deleteCollection()', () async {
      final data = '';

      when(
        client.call(HttpMethod.delete),
      ).thenAnswer((_) async => Response(data: data));

      final response = await vectorsDB.deleteCollection(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
      );
    });

    test('test method listDocuments()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'documents': [],
      };

      when(
        client.call(HttpMethod.get),
      ).thenAnswer((_) async => Response(data: data));

      final response = await vectorsDB.listDocuments(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
      );
      expect(response, isA<models.DocumentList>());
    });

    test('test method createDocument()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$sequence': "1",
        '\$collectionId': "5e5ea5c15117e",
        '\$databaseId': "5e5ea5c15117e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        '\$permissions': [],
      };

      when(
        client.call(HttpMethod.post),
      ).thenAnswer((_) async => Response(data: data));

      final response = await vectorsDB.createDocument(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        documentId: "<DOCUMENT_ID>",
        data: {},
      );
      expect(response, isA<models.Document>());
    });

    test('test method createDocuments()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'documents': [],
      };

      when(
        client.call(HttpMethod.post),
      ).thenAnswer((_) async => Response(data: data));

      final response = await vectorsDB.createDocuments(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        documents: [],
      );
      expect(response, isA<models.DocumentList>());
    });

    test('test method upsertDocuments()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'documents': [],
      };

      when(
        client.call(HttpMethod.put),
      ).thenAnswer((_) async => Response(data: data));

      final response = await vectorsDB.upsertDocuments(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        documents: [],
      );
      expect(response, isA<models.DocumentList>());
    });

    test('test method updateDocuments()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'documents': [],
      };

      when(
        client.call(HttpMethod.patch),
      ).thenAnswer((_) async => Response(data: data));

      final response = await vectorsDB.updateDocuments(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
      );
      expect(response, isA<models.DocumentList>());
    });

    test('test method deleteDocuments()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'documents': [],
      };

      when(
        client.call(HttpMethod.delete),
      ).thenAnswer((_) async => Response(data: data));

      final response = await vectorsDB.deleteDocuments(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
      );
      expect(response, isA<models.DocumentList>());
    });

    test('test method createQuery()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'documents': [],
      };

      when(
        client.call(HttpMethod.post),
      ).thenAnswer((_) async => Response(data: data));

      final response = await vectorsDB.createQuery(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
      );
      expect(response, isA<models.DocumentList>());
    });

    test('test method getDocument()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$sequence': "1",
        '\$collectionId': "5e5ea5c15117e",
        '\$databaseId': "5e5ea5c15117e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        '\$permissions': [],
      };

      when(
        client.call(HttpMethod.get),
      ).thenAnswer((_) async => Response(data: data));

      final response = await vectorsDB.getDocument(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        documentId: "<DOCUMENT_ID>",
      );
      expect(response, isA<models.Document>());
    });

    test('test method upsertDocument()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$sequence': "1",
        '\$collectionId': "5e5ea5c15117e",
        '\$databaseId': "5e5ea5c15117e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        '\$permissions': [],
      };

      when(
        client.call(HttpMethod.put),
      ).thenAnswer((_) async => Response(data: data));

      final response = await vectorsDB.upsertDocument(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        documentId: "<DOCUMENT_ID>",
      );
      expect(response, isA<models.Document>());
    });

    test('test method updateDocument()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$sequence': "1",
        '\$collectionId': "5e5ea5c15117e",
        '\$databaseId': "5e5ea5c15117e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        '\$permissions': [],
      };

      when(
        client.call(HttpMethod.patch),
      ).thenAnswer((_) async => Response(data: data));

      final response = await vectorsDB.updateDocument(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        documentId: "<DOCUMENT_ID>",
      );
      expect(response, isA<models.Document>());
    });

    test('test method deleteDocument()', () async {
      final data = '';

      when(
        client.call(HttpMethod.delete),
      ).thenAnswer((_) async => Response(data: data));

      final response = await vectorsDB.deleteDocument(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        documentId: "<DOCUMENT_ID>",
      );
    });

    test('test method listIndexes()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'indexes': [],
      };

      when(
        client.call(HttpMethod.get),
      ).thenAnswer((_) async => Response(data: data));

      final response = await vectorsDB.listIndexes(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
      );
      expect(response, isA<models.IndexList>());
    });

    test('test method createIndex()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'key': "index1",
        'type': "primary",
        'status': "available",
        'error': "string",
        'attributes': [],
        'lengths': [],
      };

      when(
        client.call(HttpMethod.post),
      ).thenAnswer((_) async => Response(data: data));

      final response = await vectorsDB.createIndex(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        key: "<KEY>",
        type: enums.VectorsDBIndexType.hnswEuclidean,
        attributes: [],
      );
      expect(response, isA<models.Index>());
    });

    test('test method getIndex()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'key': "index1",
        'type': "primary",
        'status': "available",
        'error': "string",
        'attributes': [],
        'lengths': [],
      };

      when(
        client.call(HttpMethod.get),
      ).thenAnswer((_) async => Response(data: data));

      final response = await vectorsDB.getIndex(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        key: "<KEY>",
      );
      expect(response, isA<models.Index>());
    });

    test('test method deleteIndex()', () async {
      final data = '';

      when(
        client.call(HttpMethod.delete),
      ).thenAnswer((_) async => Response(data: data));

      final response = await vectorsDB.deleteIndex(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        key: "<KEY>",
      );
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

      final response = await vectorsDB.createFailover(
        databaseId: "<DATABASE_ID>",
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

      final response = await vectorsDB.listOperations(
        databaseId: "<DATABASE_ID>",
      );
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
        client.call(HttpMethod.get),
      ).thenAnswer((_) async => Response(data: data));

      final response = await vectorsDB.getReplicas(
        databaseId: "<DATABASE_ID>",
      );
      expect(response, isA<models.DedicatedDatabaseReplicas>());
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

      final response = await vectorsDB.getStatus(
        databaseId: "<DATABASE_ID>",
      );
      expect(response, isA<models.DatabaseStatus>());
    });
  });
}
