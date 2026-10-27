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
  group('Databases test', () {
    late MockClient client;
    late Databases databases;

    setUp(() {
      client = MockClient();
      databases = Databases(client);
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

      final response = await databases.list(
        queries: [],
        search: "<SEARCH>",
        total: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/databases",
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

      final response = await databases.create(
        databaseId: "<DATABASE_ID>",
        name: "<NAME>",
        enabled: false,
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/databases",
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
      });
      expect(response, isA<models.Database>());
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

      final response = await databases.listTransactions(
        queries: [],
        total: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/databases/transactions",
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

      final response = await databases.createTransaction(
        ttl: 1,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/databases/transactions",
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

      final response = await databases.getTransaction(
        transactionId: "<TRANSACTION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/databases/transactions/%3CTRANSACTION_ID%3E",
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

      final response = await databases.updateTransaction(
        transactionId: "<TRANSACTION_ID>",
        commit: false,
        rollback: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/databases/transactions/%3CTRANSACTION_ID%3E",
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

      final response = await databases.deleteTransaction(
        transactionId: "<TRANSACTION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.delete,
          path: "/databases/transactions/%3CTRANSACTION_ID%3E",
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

      final response = await databases.createOperations(
        transactionId: "<TRANSACTION_ID>",
        operations: [],
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/databases/transactions/%3CTRANSACTION_ID%3E/operations",
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

      final response = await databases.get(
        databaseId: "<DATABASE_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/databases/%3CDATABASE_ID%3E",
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

      final response = await databases.update(
        databaseId: "<DATABASE_ID>",
        name: "<NAME>",
        enabled: false,
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.put,
          path: "/databases/%3CDATABASE_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "<NAME>",
        "enabled": false,
        "description": "<DESCRIPTION>",
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

      final response = await databases.delete(
        databaseId: "<DATABASE_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.delete,
          path: "/databases/%3CDATABASE_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
    });

    test('test method listCollections()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'collections': [],
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

      final response = await databases.listCollections(
        databaseId: "<DATABASE_ID>",
        queries: [],
        search: "<SEARCH>",
        total: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/databases/%3CDATABASE_ID%3E/collections",
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
      expect(response, isA<models.CollectionList>());
    });

    test('test method createCollection()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        '\$permissions': [],
        'databaseId': "5e5ea5c16897e",
        'name': "My Collection",
        'description': "Movies available in the catalog.",
        'enabled': true,
        'documentSecurity': true,
        'attributes': [],
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

      final response = await databases.createCollection(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        name: "<NAME>",
        permissions: [],
        documentSecurity: false,
        enabled: false,
        attributes: [],
        indexes: [],
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/databases/%3CDATABASE_ID%3E/collections",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "collectionId": "<COLLECTION_ID>",
        "name": "<NAME>",
        "permissions": isA<List>(),
        "documentSecurity": false,
        "enabled": false,
        "attributes": isA<List>(),
        "indexes": isA<List>(),
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.Collection>());
    });

    test('test method getCollection()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        '\$permissions': [],
        'databaseId': "5e5ea5c16897e",
        'name': "My Collection",
        'description': "Movies available in the catalog.",
        'enabled': true,
        'documentSecurity': true,
        'attributes': [],
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

      final response = await databases.getCollection(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.Collection>());
    });

    test('test method updateCollection()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        '\$permissions': [],
        'databaseId': "5e5ea5c16897e",
        'name': "My Collection",
        'description': "Movies available in the catalog.",
        'enabled': true,
        'documentSecurity': true,
        'attributes': [],
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

      final response = await databases.updateCollection(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        name: "<NAME>",
        permissions: [],
        documentSecurity: false,
        enabled: false,
        purge: false,
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.put,
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "<NAME>",
        "permissions": isA<List>(),
        "documentSecurity": false,
        "enabled": false,
        "purge": false,
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.Collection>());
    });

    test('test method deleteCollection()', () async {
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

      final response = await databases.deleteCollection(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.delete,
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
    });

    test('test method listAttributes()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'attributes': [],
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

      final response = await databases.listAttributes(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        queries: [],
        total: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/attributes",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "queries": isA<List>(),
        "total": false,
      });
      expect(response, isA<models.AttributeList>());
    });

    test('test method createBigIntAttribute()', () async {
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

      final response = await databases.createBigIntAttribute(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
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
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/attributes/bigint",
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
      expect(response, isA<models.AttributeBigint>());
    });

    test('test method updateBigIntAttribute()', () async {
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

      final response = await databases.updateBigIntAttribute(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
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
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/attributes/bigint/%3CKEY%3E",
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
      expect(response, isA<models.AttributeBigint>());
    });

    test('test method createBooleanAttribute()', () async {
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

      final response = await databases.createBooleanAttribute(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        key: "<KEY>",
        xrequired: false,
        xdefault: false,
        array: false,
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/attributes/boolean",
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
      expect(response, isA<models.AttributeBoolean>());
    });

    test('test method updateBooleanAttribute()', () async {
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

      final response = await databases.updateBooleanAttribute(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        key: "<KEY>",
        xrequired: false,
        xdefault: false,
        newKey: "<NEW_KEY>",
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/attributes/boolean/%3CKEY%3E",
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
      expect(response, isA<models.AttributeBoolean>());
    });

    test('test method createDatetimeAttribute()', () async {
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

      final response = await databases.createDatetimeAttribute(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        key: "<KEY>",
        xrequired: false,
        xdefault: "2020-10-15T06:38:00.000+00:00",
        array: false,
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/attributes/datetime",
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
      expect(response, isA<models.AttributeDatetime>());
    });

    test('test method updateDatetimeAttribute()', () async {
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

      final response = await databases.updateDatetimeAttribute(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        key: "<KEY>",
        xrequired: false,
        xdefault: "2020-10-15T06:38:00.000+00:00",
        newKey: "<NEW_KEY>",
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/attributes/datetime/%3CKEY%3E",
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
      expect(response, isA<models.AttributeDatetime>());
    });

    test('test method createEmailAttribute()', () async {
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

      final response = await databases.createEmailAttribute(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        key: "<KEY>",
        xrequired: false,
        xdefault: "email@example.com",
        array: false,
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/attributes/email",
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
      expect(response, isA<models.AttributeEmail>());
    });

    test('test method updateEmailAttribute()', () async {
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

      final response = await databases.updateEmailAttribute(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        key: "<KEY>",
        xrequired: false,
        xdefault: "email@example.com",
        newKey: "<NEW_KEY>",
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/attributes/email/%3CKEY%3E",
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
      expect(response, isA<models.AttributeEmail>());
    });

    test('test method createEnumAttribute()', () async {
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

      final response = await databases.createEnumAttribute(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
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
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/attributes/enum",
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
      expect(response, isA<models.AttributeEnum>());
    });

    test('test method updateEnumAttribute()', () async {
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

      final response = await databases.updateEnumAttribute(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
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
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/attributes/enum/%3CKEY%3E",
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
      expect(response, isA<models.AttributeEnum>());
    });

    test('test method createFloatAttribute()', () async {
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

      final response = await databases.createFloatAttribute(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
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
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/attributes/float",
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
      expect(response, isA<models.AttributeFloat>());
    });

    test('test method updateFloatAttribute()', () async {
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

      final response = await databases.updateFloatAttribute(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
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
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/attributes/float/%3CKEY%3E",
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
      expect(response, isA<models.AttributeFloat>());
    });

    test('test method createIntegerAttribute()', () async {
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

      final response = await databases.createIntegerAttribute(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
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
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/attributes/integer",
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
      expect(response, isA<models.AttributeInteger>());
    });

    test('test method updateIntegerAttribute()', () async {
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

      final response = await databases.updateIntegerAttribute(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
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
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/attributes/integer/%3CKEY%3E",
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
      expect(response, isA<models.AttributeInteger>());
    });

    test('test method createIpAttribute()', () async {
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

      final response = await databases.createIpAttribute(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        key: "<KEY>",
        xrequired: false,
        xdefault: "192.0.2.0",
        array: false,
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/attributes/ip",
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
      expect(response, isA<models.AttributeIp>());
    });

    test('test method updateIpAttribute()', () async {
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

      final response = await databases.updateIpAttribute(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        key: "<KEY>",
        xrequired: false,
        xdefault: "192.0.2.0",
        newKey: "<NEW_KEY>",
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/attributes/ip/%3CKEY%3E",
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
      expect(response, isA<models.AttributeIp>());
    });

    test('test method createLineAttribute()', () async {
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

      final response = await databases.createLineAttribute(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        key: "<KEY>",
        xrequired: false,
        xdefault: [],
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/attributes/line",
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
      expect(response, isA<models.AttributeLine>());
    });

    test('test method updateLineAttribute()', () async {
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

      final response = await databases.updateLineAttribute(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        key: "<KEY>",
        xrequired: false,
        xdefault: [],
        newKey: "<NEW_KEY>",
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/attributes/line/%3CKEY%3E",
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
      expect(response, isA<models.AttributeLine>());
    });

    test('test method createLongtextAttribute()', () async {
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

      final response = await databases.createLongtextAttribute(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
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
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/attributes/longtext",
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
      expect(response, isA<models.AttributeLongtext>());
    });

    test('test method updateLongtextAttribute()', () async {
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

      final response = await databases.updateLongtextAttribute(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        key: "<KEY>",
        xrequired: false,
        xdefault: "Hello World",
        newKey: "<NEW_KEY>",
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/attributes/longtext/%3CKEY%3E",
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
      expect(response, isA<models.AttributeLongtext>());
    });

    test('test method createMediumtextAttribute()', () async {
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

      final response = await databases.createMediumtextAttribute(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
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
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/attributes/mediumtext",
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
      expect(response, isA<models.AttributeMediumtext>());
    });

    test('test method updateMediumtextAttribute()', () async {
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

      final response = await databases.updateMediumtextAttribute(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        key: "<KEY>",
        xrequired: false,
        xdefault: "Hello World",
        newKey: "<NEW_KEY>",
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/attributes/mediumtext/%3CKEY%3E",
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
      expect(response, isA<models.AttributeMediumtext>());
    });

    test('test method createPointAttribute()', () async {
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

      final response = await databases.createPointAttribute(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        key: "<KEY>",
        xrequired: false,
        xdefault: [],
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/attributes/point",
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
      expect(response, isA<models.AttributePoint>());
    });

    test('test method updatePointAttribute()', () async {
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

      final response = await databases.updatePointAttribute(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        key: "<KEY>",
        xrequired: false,
        xdefault: [],
        newKey: "<NEW_KEY>",
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/attributes/point/%3CKEY%3E",
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
      expect(response, isA<models.AttributePoint>());
    });

    test('test method createPolygonAttribute()', () async {
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

      final response = await databases.createPolygonAttribute(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        key: "<KEY>",
        xrequired: false,
        xdefault: [],
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/attributes/polygon",
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
      expect(response, isA<models.AttributePolygon>());
    });

    test('test method updatePolygonAttribute()', () async {
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

      final response = await databases.updatePolygonAttribute(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        key: "<KEY>",
        xrequired: false,
        xdefault: [],
        newKey: "<NEW_KEY>",
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/attributes/polygon/%3CKEY%3E",
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
      expect(response, isA<models.AttributePolygon>());
    });

    test('test method createRelationshipAttribute()', () async {
      final Map<String, dynamic> data = {
        'key': "fullName",
        'description': "Name shown on the public profile.",
        'type': "string",
        'status': "available",
        'error': "string",
        'required': true,
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'relatedCollection': "collection",
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

      final response = await databases.createRelationshipAttribute(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        relatedCollectionId: "<RELATED_COLLECTION_ID>",
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
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/attributes/relationship",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "relatedCollectionId": "<RELATED_COLLECTION_ID>",
        "type": enums.RelationshipType.oneToOne.value,
        "twoWay": false,
        "key": "<KEY>",
        "twoWayKey": "<TWO_WAY_KEY>",
        "onDelete": enums.RelationMutate.cascade.value,
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.AttributeRelationship>());
    });

    test('test method updateRelationshipAttribute()', () async {
      final Map<String, dynamic> data = {
        'key': "fullName",
        'description': "Name shown on the public profile.",
        'type': "string",
        'status': "available",
        'error': "string",
        'required': true,
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'relatedCollection': "collection",
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

      final response = await databases.updateRelationshipAttribute(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        key: "<KEY>",
        onDelete: enums.RelationMutate.cascade,
        newKey: "<NEW_KEY>",
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/attributes/relationship/%3CKEY%3E",
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
      expect(response, isA<models.AttributeRelationship>());
    });

    test('test method createStringAttribute()', () async {
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

      final response = await databases.createStringAttribute(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
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
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/attributes/string",
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
      expect(response, isA<models.AttributeString>());
    });

    test('test method updateStringAttribute()', () async {
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

      final response = await databases.updateStringAttribute(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
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
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/attributes/string/%3CKEY%3E",
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
      expect(response, isA<models.AttributeString>());
    });

    test('test method createTextAttribute()', () async {
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

      final response = await databases.createTextAttribute(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
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
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/attributes/text",
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
      expect(response, isA<models.AttributeText>());
    });

    test('test method updateTextAttribute()', () async {
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

      final response = await databases.updateTextAttribute(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        key: "<KEY>",
        xrequired: false,
        xdefault: "Hello World",
        newKey: "<NEW_KEY>",
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/attributes/text/%3CKEY%3E",
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
      expect(response, isA<models.AttributeText>());
    });

    test('test method createUrlAttribute()', () async {
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

      final response = await databases.createUrlAttribute(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        key: "<KEY>",
        xrequired: false,
        xdefault: "https://example.com",
        array: false,
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/attributes/url",
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
      expect(response, isA<models.AttributeUrl>());
    });

    test('test method updateUrlAttribute()', () async {
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

      final response = await databases.updateUrlAttribute(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        key: "<KEY>",
        xrequired: false,
        xdefault: "https://example.com",
        newKey: "<NEW_KEY>",
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/attributes/url/%3CKEY%3E",
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
      expect(response, isA<models.AttributeUrl>());
    });

    test('test method createVarcharAttribute()', () async {
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

      final response = await databases.createVarcharAttribute(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
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
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/attributes/varchar",
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
      expect(response, isA<models.AttributeVarchar>());
    });

    test('test method updateVarcharAttribute()', () async {
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

      final response = await databases.updateVarcharAttribute(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
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
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/attributes/varchar/%3CKEY%3E",
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
      expect(response, isA<models.AttributeVarchar>());
    });

    test('test method getAttribute()', () async {
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

      final response = await databases.getAttribute(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        key: "<KEY>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/attributes/%3CKEY%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.AttributeString>());
    });

    test('test method deleteAttribute()', () async {
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

      final response = await databases.deleteAttribute(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        key: "<KEY>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.delete,
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/attributes/%3CKEY%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
    });

    test('test method listDocuments()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'documents': [],
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

      final response = await databases.listDocuments(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        queries: [],
        transactionId: "<TRANSACTION_ID>",
        total: false,
        ttl: 1,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/documents",
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
        client.call(
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await databases.createDocument(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        documentId: "<DOCUMENT_ID>",
        data: {},
        permissions: [],
        transactionId: "<TRANSACTION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/documents",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "documentId": "<DOCUMENT_ID>",
        "data": isA<Map>(),
        "permissions": isA<List>(),
        "transactionId": "<TRANSACTION_ID>",
      });
      expect(response, isA<models.Document>());
    });

    test('test method createDocuments()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'documents': [],
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

      final response = await databases.createDocuments(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        documents: [],
        transactionId: "<TRANSACTION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/documents",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "documents": isA<List>(),
        "transactionId": "<TRANSACTION_ID>",
      });
      expect(response, isA<models.DocumentList>());
    });

    test('test method upsertDocuments()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'documents': [],
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

      final response = await databases.upsertDocuments(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        documents: [],
        transactionId: "<TRANSACTION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.put,
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/documents",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "documents": isA<List>(),
        "transactionId": "<TRANSACTION_ID>",
      });
      expect(response, isA<models.DocumentList>());
    });

    test('test method updateDocuments()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'documents': [],
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

      final response = await databases.updateDocuments(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        data: {},
        queries: [],
        transactionId: "<TRANSACTION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/documents",
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
      expect(response, isA<models.DocumentList>());
    });

    test('test method deleteDocuments()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'documents': [],
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

      final response = await databases.deleteDocuments(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        queries: [],
        transactionId: "<TRANSACTION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.delete,
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/documents",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "queries": isA<List>(),
        "transactionId": "<TRANSACTION_ID>",
      });
      expect(response, isA<models.DocumentList>());
    });

    test('test method createQuery()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'documents': [],
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

      final response = await databases.createQuery(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        queries: [],
        transactionId: "<TRANSACTION_ID>",
        total: false,
        ttl: 1,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/documents/query",
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
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await databases.getDocument(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        documentId: "<DOCUMENT_ID>",
        queries: [],
        transactionId: "<TRANSACTION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/documents/%3CDOCUMENT_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "queries": isA<List>(),
        "transactionId": "<TRANSACTION_ID>",
      });
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
        client.call(
          HttpMethod.put,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await databases.upsertDocument(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        documentId: "<DOCUMENT_ID>",
        data: {},
        permissions: [],
        transactionId: "<TRANSACTION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.put,
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/documents/%3CDOCUMENT_ID%3E",
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
        client.call(
          HttpMethod.patch,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await databases.updateDocument(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        documentId: "<DOCUMENT_ID>",
        data: {},
        permissions: [],
        transactionId: "<TRANSACTION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/documents/%3CDOCUMENT_ID%3E",
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
      expect(response, isA<models.Document>());
    });

    test('test method deleteDocument()', () async {
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

      final response = await databases.deleteDocument(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        documentId: "<DOCUMENT_ID>",
        transactionId: "<TRANSACTION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.delete,
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/documents/%3CDOCUMENT_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "transactionId": "<TRANSACTION_ID>",
      });
    });

    test('test method decrementDocumentAttribute()', () async {
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
        client.call(
          HttpMethod.patch,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await databases.decrementDocumentAttribute(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        documentId: "<DOCUMENT_ID>",
        attribute: "<ATTRIBUTE>",
        value: 1.0,
        min: 1.0,
        transactionId: "<TRANSACTION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/documents/%3CDOCUMENT_ID%3E/%3CATTRIBUTE%3E/decrement",
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
      expect(response, isA<models.Document>());
    });

    test('test method incrementDocumentAttribute()', () async {
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
        client.call(
          HttpMethod.patch,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await databases.incrementDocumentAttribute(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        documentId: "<DOCUMENT_ID>",
        attribute: "<ATTRIBUTE>",
        value: 1.0,
        max: 1.0,
        transactionId: "<TRANSACTION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/documents/%3CDOCUMENT_ID%3E/%3CATTRIBUTE%3E/increment",
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
      expect(response, isA<models.Document>());
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

      final response = await databases.listIndexes(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        queries: [],
        total: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/indexes",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "queries": isA<List>(),
        "total": false,
      });
      expect(response, isA<models.IndexList>());
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
        'attributes': [],
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

      final response = await databases.createIndex(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        key: "<KEY>",
        type: enums.DatabasesIndexType.key,
        attributes: [],
        orders: [enums.OrderBy.asc],
        lengths: [],
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/indexes",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "key": "<KEY>",
        "type": enums.DatabasesIndexType.key.value,
        "attributes": isA<List>(),
        "orders": isA<List>(),
        "lengths": isA<List>(),
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.Index>());
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
        'attributes': [],
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

      final response = await databases.getIndex(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        key: "<KEY>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/indexes/%3CKEY%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.Index>());
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

      final response = await databases.deleteIndex(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        key: "<KEY>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.delete,
          path: "/databases/%3CDATABASE_ID%3E/collections/%3CCOLLECTION_ID%3E/indexes/%3CKEY%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
    });
  });
}
