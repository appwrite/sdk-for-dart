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
    return super.noSuchMethod(Invocation.method(#call, [method]),
        returnValue: Response());
  }

  @override
  Future<String?> webAuth(Uri url) async {
    return super
        .noSuchMethod(Invocation.method(#webAuth, [url]), returnValue: 'done');
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
        Invocation.method(
            #chunkedUpload, [path, params, paramName, idParamName, headers]),
        returnValue: Response(data: {}));
  }
}

void main() {
  group('DocumentsDB test', () {
    late MockClient client;
    late DocumentsDB documentsDB;

    setUp(() {
      client = MockClient();
      documentsDB = DocumentsDB(client);
    });

    test('test method list()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'databases': [],
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await documentsDB.list();
      expect(response, isA<models.DatabaseList>());
    });

    test('test method create()', () async {
      final Map<String, dynamic> data = {
        '\$id': '5e5ea5c16897e',
        'name': 'My Database',
        '\$createdAt': '2020-10-15T06:38:00.000+00:00',
        '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
        'enabled': true,
        'type': 'legacy',
        'policies': [],
        'archives': [],
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await documentsDB.create(
        databaseId: '<DATABASE_ID>',
        name: '<NAME>',
      );
      expect(response, isA<models.Database>());
    });

    test('test method listTransactions()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'transactions': [],
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await documentsDB.listTransactions();
      expect(response, isA<models.TransactionList>());
    });

    test('test method createTransaction()', () async {
      final Map<String, dynamic> data = {
        '\$id': '259125845563242502',
        '\$createdAt': '2020-10-15T06:38:00.000+00:00',
        '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
        'status': 'pending',
        'operations': 5,
        'expiresAt': '2020-10-15T06:38:00.000+00:00',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await documentsDB.createTransaction();
      expect(response, isA<models.Transaction>());
    });

    test('test method getTransaction()', () async {
      final Map<String, dynamic> data = {
        '\$id': '259125845563242502',
        '\$createdAt': '2020-10-15T06:38:00.000+00:00',
        '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
        'status': 'pending',
        'operations': 5,
        'expiresAt': '2020-10-15T06:38:00.000+00:00',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await documentsDB.getTransaction(
        transactionId: '<TRANSACTION_ID>',
      );
      expect(response, isA<models.Transaction>());
    });

    test('test method updateTransaction()', () async {
      final Map<String, dynamic> data = {
        '\$id': '259125845563242502',
        '\$createdAt': '2020-10-15T06:38:00.000+00:00',
        '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
        'status': 'pending',
        'operations': 5,
        'expiresAt': '2020-10-15T06:38:00.000+00:00',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await documentsDB.updateTransaction(
        transactionId: '<TRANSACTION_ID>',
      );
      expect(response, isA<models.Transaction>());
    });

    test('test method deleteTransaction()', () async {
      final data = '';

      when(client.call(
        HttpMethod.delete,
      )).thenAnswer((_) async => Response(data: data));

      final response = await documentsDB.deleteTransaction(
        transactionId: '<TRANSACTION_ID>',
      );
    });

    test('test method createOperations()', () async {
      final Map<String, dynamic> data = {
        '\$id': '259125845563242502',
        '\$createdAt': '2020-10-15T06:38:00.000+00:00',
        '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
        'status': 'pending',
        'operations': 5,
        'expiresAt': '2020-10-15T06:38:00.000+00:00',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await documentsDB.createOperations(
        transactionId: '<TRANSACTION_ID>',
      );
      expect(response, isA<models.Transaction>());
    });

    test('test method get()', () async {
      final Map<String, dynamic> data = {
        '\$id': '5e5ea5c16897e',
        'name': 'My Database',
        '\$createdAt': '2020-10-15T06:38:00.000+00:00',
        '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
        'enabled': true,
        'type': 'legacy',
        'policies': [],
        'archives': [],
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await documentsDB.get(
        databaseId: '<DATABASE_ID>',
      );
      expect(response, isA<models.Database>());
    });

    test('test method update()', () async {
      final Map<String, dynamic> data = {
        '\$id': '5e5ea5c16897e',
        'name': 'My Database',
        '\$createdAt': '2020-10-15T06:38:00.000+00:00',
        '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
        'enabled': true,
        'type': 'legacy',
        'policies': [],
        'archives': [],
      };

      when(client.call(
        HttpMethod.put,
      )).thenAnswer((_) async => Response(data: data));

      final response = await documentsDB.update(
        databaseId: '<DATABASE_ID>',
        name: '<NAME>',
      );
      expect(response, isA<models.Database>());
    });

    test('test method delete()', () async {
      final data = '';

      when(client.call(
        HttpMethod.delete,
      )).thenAnswer((_) async => Response(data: data));

      final response = await documentsDB.delete(
        databaseId: '<DATABASE_ID>',
      );
    });

    test('test method listCollections()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'collections': [],
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await documentsDB.listCollections(
        databaseId: '<DATABASE_ID>',
      );
      expect(response, isA<models.CollectionList>());
    });

    test('test method createCollection()', () async {
      final Map<String, dynamic> data = {
        '\$id': '5e5ea5c16897e',
        '\$createdAt': '2020-10-15T06:38:00.000+00:00',
        '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
        '\$permissions': [],
        'databaseId': '5e5ea5c16897e',
        'name': 'My Collection',
        'enabled': true,
        'documentSecurity': true,
        'attributes': [],
        'indexes': [],
        'bytesMax': 65535,
        'bytesUsed': 1500,
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await documentsDB.createCollection(
        databaseId: '<DATABASE_ID>',
        collectionId: '<COLLECTION_ID>',
        name: '<NAME>',
      );
      expect(response, isA<models.Collection>());
    });

    test('test method getCollection()', () async {
      final Map<String, dynamic> data = {
        '\$id': '5e5ea5c16897e',
        '\$createdAt': '2020-10-15T06:38:00.000+00:00',
        '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
        '\$permissions': [],
        'databaseId': '5e5ea5c16897e',
        'name': 'My Collection',
        'enabled': true,
        'documentSecurity': true,
        'attributes': [],
        'indexes': [],
        'bytesMax': 65535,
        'bytesUsed': 1500,
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await documentsDB.getCollection(
        databaseId: '<DATABASE_ID>',
        collectionId: '<COLLECTION_ID>',
      );
      expect(response, isA<models.Collection>());
    });

    test('test method updateCollection()', () async {
      final Map<String, dynamic> data = {
        '\$id': '5e5ea5c16897e',
        '\$createdAt': '2020-10-15T06:38:00.000+00:00',
        '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
        '\$permissions': [],
        'databaseId': '5e5ea5c16897e',
        'name': 'My Collection',
        'enabled': true,
        'documentSecurity': true,
        'attributes': [],
        'indexes': [],
        'bytesMax': 65535,
        'bytesUsed': 1500,
      };

      when(client.call(
        HttpMethod.put,
      )).thenAnswer((_) async => Response(data: data));

      final response = await documentsDB.updateCollection(
        databaseId: '<DATABASE_ID>',
        collectionId: '<COLLECTION_ID>',
        name: '<NAME>',
      );
      expect(response, isA<models.Collection>());
    });

    test('test method deleteCollection()', () async {
      final data = '';

      when(client.call(
        HttpMethod.delete,
      )).thenAnswer((_) async => Response(data: data));

      final response = await documentsDB.deleteCollection(
        databaseId: '<DATABASE_ID>',
        collectionId: '<COLLECTION_ID>',
      );
    });

    test('test method listDocuments()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'documents': [],
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await documentsDB.listDocuments(
        databaseId: '<DATABASE_ID>',
        collectionId: '<COLLECTION_ID>',
      );
      expect(response, isA<models.DocumentList>());
    });

    test('test method createDocument()', () async {
      final Map<String, dynamic> data = {
        '\$id': '5e5ea5c16897e',
        '\$sequence': '1',
        '\$collectionId': '5e5ea5c15117e',
        '\$databaseId': '5e5ea5c15117e',
        '\$createdAt': '2020-10-15T06:38:00.000+00:00',
        '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
        '\$permissions': [],
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await documentsDB.createDocument(
        databaseId: '<DATABASE_ID>',
        collectionId: '<COLLECTION_ID>',
        documentId: '<DOCUMENT_ID>',
        data: {},
      );
      expect(response, isA<models.Document>());
    });

    test('test method createDocuments()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'documents': [],
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await documentsDB.createDocuments(
        databaseId: '<DATABASE_ID>',
        collectionId: '<COLLECTION_ID>',
        documents: [],
      );
      expect(response, isA<models.DocumentList>());
    });

    test('test method upsertDocuments()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'documents': [],
      };

      when(client.call(
        HttpMethod.put,
      )).thenAnswer((_) async => Response(data: data));

      final response = await documentsDB.upsertDocuments(
        databaseId: '<DATABASE_ID>',
        collectionId: '<COLLECTION_ID>',
        documents: [],
      );
      expect(response, isA<models.DocumentList>());
    });

    test('test method updateDocuments()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'documents': [],
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await documentsDB.updateDocuments(
        databaseId: '<DATABASE_ID>',
        collectionId: '<COLLECTION_ID>',
      );
      expect(response, isA<models.DocumentList>());
    });

    test('test method deleteDocuments()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'documents': [],
      };

      when(client.call(
        HttpMethod.delete,
      )).thenAnswer((_) async => Response(data: data));

      final response = await documentsDB.deleteDocuments(
        databaseId: '<DATABASE_ID>',
        collectionId: '<COLLECTION_ID>',
      );
      expect(response, isA<models.DocumentList>());
    });

    test('test method getDocument()', () async {
      final Map<String, dynamic> data = {
        '\$id': '5e5ea5c16897e',
        '\$sequence': '1',
        '\$collectionId': '5e5ea5c15117e',
        '\$databaseId': '5e5ea5c15117e',
        '\$createdAt': '2020-10-15T06:38:00.000+00:00',
        '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
        '\$permissions': [],
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await documentsDB.getDocument(
        databaseId: '<DATABASE_ID>',
        collectionId: '<COLLECTION_ID>',
        documentId: '<DOCUMENT_ID>',
      );
      expect(response, isA<models.Document>());
    });

    test('test method upsertDocument()', () async {
      final Map<String, dynamic> data = {
        '\$id': '5e5ea5c16897e',
        '\$sequence': '1',
        '\$collectionId': '5e5ea5c15117e',
        '\$databaseId': '5e5ea5c15117e',
        '\$createdAt': '2020-10-15T06:38:00.000+00:00',
        '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
        '\$permissions': [],
      };

      when(client.call(
        HttpMethod.put,
      )).thenAnswer((_) async => Response(data: data));

      final response = await documentsDB.upsertDocument(
        databaseId: '<DATABASE_ID>',
        collectionId: '<COLLECTION_ID>',
        documentId: '<DOCUMENT_ID>',
      );
      expect(response, isA<models.Document>());
    });

    test('test method updateDocument()', () async {
      final Map<String, dynamic> data = {
        '\$id': '5e5ea5c16897e',
        '\$sequence': '1',
        '\$collectionId': '5e5ea5c15117e',
        '\$databaseId': '5e5ea5c15117e',
        '\$createdAt': '2020-10-15T06:38:00.000+00:00',
        '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
        '\$permissions': [],
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await documentsDB.updateDocument(
        databaseId: '<DATABASE_ID>',
        collectionId: '<COLLECTION_ID>',
        documentId: '<DOCUMENT_ID>',
      );
      expect(response, isA<models.Document>());
    });

    test('test method deleteDocument()', () async {
      final data = '';

      when(client.call(
        HttpMethod.delete,
      )).thenAnswer((_) async => Response(data: data));

      final response = await documentsDB.deleteDocument(
        databaseId: '<DATABASE_ID>',
        collectionId: '<COLLECTION_ID>',
        documentId: '<DOCUMENT_ID>',
      );
    });

    test('test method decrementDocumentAttribute()', () async {
      final Map<String, dynamic> data = {
        '\$id': '5e5ea5c16897e',
        '\$sequence': '1',
        '\$collectionId': '5e5ea5c15117e',
        '\$databaseId': '5e5ea5c15117e',
        '\$createdAt': '2020-10-15T06:38:00.000+00:00',
        '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
        '\$permissions': [],
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await documentsDB.decrementDocumentAttribute(
        databaseId: '<DATABASE_ID>',
        collectionId: '<COLLECTION_ID>',
        documentId: '<DOCUMENT_ID>',
        attribute: '',
      );
      expect(response, isA<models.Document>());
    });

    test('test method incrementDocumentAttribute()', () async {
      final Map<String, dynamic> data = {
        '\$id': '5e5ea5c16897e',
        '\$sequence': '1',
        '\$collectionId': '5e5ea5c15117e',
        '\$databaseId': '5e5ea5c15117e',
        '\$createdAt': '2020-10-15T06:38:00.000+00:00',
        '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
        '\$permissions': [],
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await documentsDB.incrementDocumentAttribute(
        databaseId: '<DATABASE_ID>',
        collectionId: '<COLLECTION_ID>',
        documentId: '<DOCUMENT_ID>',
        attribute: '',
      );
      expect(response, isA<models.Document>());
    });

    test('test method listIndexes()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'indexes': [],
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await documentsDB.listIndexes(
        databaseId: '<DATABASE_ID>',
        collectionId: '<COLLECTION_ID>',
      );
      expect(response, isA<models.IndexList>());
    });

    test('test method createIndex()', () async {
      final Map<String, dynamic> data = {
        '\$id': '5e5ea5c16897e',
        '\$createdAt': '2020-10-15T06:38:00.000+00:00',
        '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
        'key': 'index1',
        'type': 'primary',
        'status': 'available',
        'error': 'string',
        'attributes': [],
        'lengths': [],
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await documentsDB.createIndex(
        databaseId: '<DATABASE_ID>',
        collectionId: '<COLLECTION_ID>',
        key: '',
        type: enums.DocumentsDBIndexType.key,
        attributes: [],
      );
      expect(response, isA<models.Index>());
    });

    test('test method getIndex()', () async {
      final Map<String, dynamic> data = {
        '\$id': '5e5ea5c16897e',
        '\$createdAt': '2020-10-15T06:38:00.000+00:00',
        '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
        'key': 'index1',
        'type': 'primary',
        'status': 'available',
        'error': 'string',
        'attributes': [],
        'lengths': [],
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await documentsDB.getIndex(
        databaseId: '<DATABASE_ID>',
        collectionId: '<COLLECTION_ID>',
        key: '',
      );
      expect(response, isA<models.Index>());
    });

    test('test method deleteIndex()', () async {
      final data = '';

      when(client.call(
        HttpMethod.delete,
      )).thenAnswer((_) async => Response(data: data));

      final response = await documentsDB.deleteIndex(
        databaseId: '<DATABASE_ID>',
        collectionId: '<COLLECTION_ID>',
        key: '',
      );
    });
  });
}
