import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:dart_appwrite/models.dart' as models;
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
  Future webAuth(
    Uri? url, 
    {
        String? callbackUrlScheme,
    }
  ) async {
    return super.noSuchMethod(Invocation.method(#webAuth, [url]), returnValue: 'done');
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
    return super.noSuchMethod(Invocation.method(#chunkedUpload, [path, params, paramName, idParamName, headers]), returnValue: Response(data: {}));
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
                'databases': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await databases.list(
            );
            expect(response, isA<models.DatabaseList>());

        });

        test('test method create()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                'name': 'My Database',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'enabled': true,};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await databases.create(
                databaseId: '[DATABASE_ID]',
                name: '[NAME]',
            );
            expect(response, isA<models.Database>());

        });

        test('test method get()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                'name': 'My Database',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'enabled': true,};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await databases.get(
                databaseId: '[DATABASE_ID]',
            );
            expect(response, isA<models.Database>());

        });

        test('test method update()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                'name': 'My Database',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'enabled': true,};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await databases.update(
                databaseId: '[DATABASE_ID]',
                name: '[NAME]',
            );
            expect(response, isA<models.Database>());

        });

        test('test method delete()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await databases.delete(
                databaseId: '[DATABASE_ID]',
            );
        });

        test('test method listCollections()', () async {
            final Map<String, dynamic> data = {
                'total': 5,
                'collections': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await databases.listCollections(
                databaseId: '[DATABASE_ID]',
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
                'indexes': [],};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await databases.createCollection(
                databaseId: '[DATABASE_ID]',
                collectionId: '[COLLECTION_ID]',
                name: '[NAME]',
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
                'indexes': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await databases.getCollection(
                databaseId: '[DATABASE_ID]',
                collectionId: '[COLLECTION_ID]',
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
                'indexes': [],};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await databases.updateCollection(
                databaseId: '[DATABASE_ID]',
                collectionId: '[COLLECTION_ID]',
                name: '[NAME]',
            );
            expect(response, isA<models.Collection>());

        });

        test('test method deleteCollection()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await databases.deleteCollection(
                databaseId: '[DATABASE_ID]',
                collectionId: '[COLLECTION_ID]',
            );
        });

        test('test method listAttributes()', () async {
            final Map<String, dynamic> data = {
                'total': 5,
                'attributes': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await databases.listAttributes(
                databaseId: '[DATABASE_ID]',
                collectionId: '[COLLECTION_ID]',
            );
            expect(response, isA<models.AttributeList>());

        });

        test('test method createBooleanAttribute()', () async {
            final Map<String, dynamic> data = {
                'key': 'isEnabled',
                'type': 'boolean',
                'status': 'available',
                'error': 'string',
                'required': true,};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await databases.createBooleanAttribute(
                databaseId: '[DATABASE_ID]',
                collectionId: '[COLLECTION_ID]',
                key: '',
                xrequired: true,
            );
            expect(response, isA<models.AttributeBoolean>());

        });

        test('test method updateBooleanAttribute()', () async {
            final Map<String, dynamic> data = {
                'key': 'isEnabled',
                'type': 'boolean',
                'status': 'available',
                'error': 'string',
                'required': true,};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await databases.updateBooleanAttribute(
                databaseId: '[DATABASE_ID]',
                collectionId: '[COLLECTION_ID]',
                key: '',
                xrequired: true,
                xdefault: true,
            );
            expect(response, isA<models.AttributeBoolean>());

        });

        test('test method createDatetimeAttribute()', () async {
            final Map<String, dynamic> data = {
                'key': 'birthDay',
                'type': 'datetime',
                'status': 'available',
                'error': 'string',
                'required': true,
                'format': 'datetime',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await databases.createDatetimeAttribute(
                databaseId: '[DATABASE_ID]',
                collectionId: '[COLLECTION_ID]',
                key: '',
                xrequired: true,
            );
            expect(response, isA<models.AttributeDatetime>());

        });

        test('test method updateDatetimeAttribute()', () async {
            final Map<String, dynamic> data = {
                'key': 'birthDay',
                'type': 'datetime',
                'status': 'available',
                'error': 'string',
                'required': true,
                'format': 'datetime',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await databases.updateDatetimeAttribute(
                databaseId: '[DATABASE_ID]',
                collectionId: '[COLLECTION_ID]',
                key: '',
                xrequired: true,
                xdefault: '',
            );
            expect(response, isA<models.AttributeDatetime>());

        });

        test('test method createEmailAttribute()', () async {
            final Map<String, dynamic> data = {
                'key': 'userEmail',
                'type': 'string',
                'status': 'available',
                'error': 'string',
                'required': true,
                'format': 'email',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await databases.createEmailAttribute(
                databaseId: '[DATABASE_ID]',
                collectionId: '[COLLECTION_ID]',
                key: '',
                xrequired: true,
            );
            expect(response, isA<models.AttributeEmail>());

        });

        test('test method updateEmailAttribute()', () async {
            final Map<String, dynamic> data = {
                'key': 'userEmail',
                'type': 'string',
                'status': 'available',
                'error': 'string',
                'required': true,
                'format': 'email',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await databases.updateEmailAttribute(
                databaseId: '[DATABASE_ID]',
                collectionId: '[COLLECTION_ID]',
                key: '',
                xrequired: true,
                xdefault: 'email@example.com',
            );
            expect(response, isA<models.AttributeEmail>());

        });

        test('test method createEnumAttribute()', () async {
            final Map<String, dynamic> data = {
                'key': 'status',
                'type': 'string',
                'status': 'available',
                'error': 'string',
                'required': true,
                'elements': [],
                'format': 'enum',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await databases.createEnumAttribute(
                databaseId: '[DATABASE_ID]',
                collectionId: '[COLLECTION_ID]',
                key: '',
                elements: [],
                xrequired: true,
            );
            expect(response, isA<models.AttributeEnum>());

        });

        test('test method updateEnumAttribute()', () async {
            final Map<String, dynamic> data = {
                'key': 'status',
                'type': 'string',
                'status': 'available',
                'error': 'string',
                'required': true,
                'elements': [],
                'format': 'enum',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await databases.updateEnumAttribute(
                databaseId: '[DATABASE_ID]',
                collectionId: '[COLLECTION_ID]',
                key: '',
                elements: [],
                xrequired: true,
                xdefault: '[DEFAULT]',
            );
            expect(response, isA<models.AttributeEnum>());

        });

        test('test method createFloatAttribute()', () async {
            final Map<String, dynamic> data = {
                'key': 'percentageCompleted',
                'type': 'double',
                'status': 'available',
                'error': 'string',
                'required': true,};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await databases.createFloatAttribute(
                databaseId: '[DATABASE_ID]',
                collectionId: '[COLLECTION_ID]',
                key: '',
                xrequired: true,
            );
            expect(response, isA<models.AttributeFloat>());

        });

        test('test method updateFloatAttribute()', () async {
            final Map<String, dynamic> data = {
                'key': 'percentageCompleted',
                'type': 'double',
                'status': 'available',
                'error': 'string',
                'required': true,};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await databases.updateFloatAttribute(
                databaseId: '[DATABASE_ID]',
                collectionId: '[COLLECTION_ID]',
                key: '',
                xrequired: true,
                min: 1.0,
                max: 1.0,
                xdefault: 1.0,
            );
            expect(response, isA<models.AttributeFloat>());

        });

        test('test method createIntegerAttribute()', () async {
            final Map<String, dynamic> data = {
                'key': 'count',
                'type': 'integer',
                'status': 'available',
                'error': 'string',
                'required': true,};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await databases.createIntegerAttribute(
                databaseId: '[DATABASE_ID]',
                collectionId: '[COLLECTION_ID]',
                key: '',
                xrequired: true,
            );
            expect(response, isA<models.AttributeInteger>());

        });

        test('test method updateIntegerAttribute()', () async {
            final Map<String, dynamic> data = {
                'key': 'count',
                'type': 'integer',
                'status': 'available',
                'error': 'string',
                'required': true,};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await databases.updateIntegerAttribute(
                databaseId: '[DATABASE_ID]',
                collectionId: '[COLLECTION_ID]',
                key: '',
                xrequired: true,
                min: 1,
                max: 1,
                xdefault: 1,
            );
            expect(response, isA<models.AttributeInteger>());

        });

        test('test method createIpAttribute()', () async {
            final Map<String, dynamic> data = {
                'key': 'ipAddress',
                'type': 'string',
                'status': 'available',
                'error': 'string',
                'required': true,
                'format': 'ip',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await databases.createIpAttribute(
                databaseId: '[DATABASE_ID]',
                collectionId: '[COLLECTION_ID]',
                key: '',
                xrequired: true,
            );
            expect(response, isA<models.AttributeIp>());

        });

        test('test method updateIpAttribute()', () async {
            final Map<String, dynamic> data = {
                'key': 'ipAddress',
                'type': 'string',
                'status': 'available',
                'error': 'string',
                'required': true,
                'format': 'ip',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await databases.updateIpAttribute(
                databaseId: '[DATABASE_ID]',
                collectionId: '[COLLECTION_ID]',
                key: '',
                xrequired: true,
                xdefault: '',
            );
            expect(response, isA<models.AttributeIp>());

        });

        test('test method createRelationshipAttribute()', () async {
            final Map<String, dynamic> data = {
                'key': 'fullName',
                'type': 'string',
                'status': 'available',
                'error': 'string',
                'required': true,
                'relatedCollection': 'collection',
                'relationType': 'oneToOne|oneToMany|manyToOne|manyToMany',
                'twoWay': true,
                'twoWayKey': 'string',
                'onDelete': 'restrict|cascade|setNull',
                'side': 'parent|child',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await databases.createRelationshipAttribute(
                databaseId: '[DATABASE_ID]',
                collectionId: '[COLLECTION_ID]',
                relatedCollectionId: '[RELATED_COLLECTION_ID]',
                type: 'oneToOne',
            );
            expect(response, isA<models.AttributeRelationship>());

        });

        test('test method createStringAttribute()', () async {
            final Map<String, dynamic> data = {
                'key': 'fullName',
                'type': 'string',
                'status': 'available',
                'error': 'string',
                'required': true,
                'size': 128,};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await databases.createStringAttribute(
                databaseId: '[DATABASE_ID]',
                collectionId: '[COLLECTION_ID]',
                key: '',
                size: 1,
                xrequired: true,
            );
            expect(response, isA<models.AttributeString>());

        });

        test('test method updateStringAttribute()', () async {
            final Map<String, dynamic> data = {
                'key': 'fullName',
                'type': 'string',
                'status': 'available',
                'error': 'string',
                'required': true,
                'size': 128,};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await databases.updateStringAttribute(
                databaseId: '[DATABASE_ID]',
                collectionId: '[COLLECTION_ID]',
                key: '',
                xrequired: true,
                xdefault: '[DEFAULT]',
            );
            expect(response, isA<models.AttributeString>());

        });

        test('test method createUrlAttribute()', () async {
            final Map<String, dynamic> data = {
                'key': 'githubUrl',
                'type': 'string',
                'status': 'available',
                'error': 'string',
                'required': true,
                'format': 'url',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await databases.createUrlAttribute(
                databaseId: '[DATABASE_ID]',
                collectionId: '[COLLECTION_ID]',
                key: '',
                xrequired: true,
            );
            expect(response, isA<models.AttributeUrl>());

        });

        test('test method updateUrlAttribute()', () async {
            final Map<String, dynamic> data = {
                'key': 'githubUrl',
                'type': 'string',
                'status': 'available',
                'error': 'string',
                'required': true,
                'format': 'url',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await databases.updateUrlAttribute(
                databaseId: '[DATABASE_ID]',
                collectionId: '[COLLECTION_ID]',
                key: '',
                xrequired: true,
                xdefault: 'https://example.com',
            );
            expect(response, isA<models.AttributeUrl>());

        });

        test('test method getAttribute()', () async {
            final data = '';

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await databases.getAttribute(
                databaseId: '[DATABASE_ID]',
                collectionId: '[COLLECTION_ID]',
                key: '',
            );
        });

        test('test method deleteAttribute()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await databases.deleteAttribute(
                databaseId: '[DATABASE_ID]',
                collectionId: '[COLLECTION_ID]',
                key: '',
            );
        });

        test('test method updateRelationshipAttribute()', () async {
            final Map<String, dynamic> data = {
                'key': 'fullName',
                'type': 'string',
                'status': 'available',
                'error': 'string',
                'required': true,
                'relatedCollection': 'collection',
                'relationType': 'oneToOne|oneToMany|manyToOne|manyToMany',
                'twoWay': true,
                'twoWayKey': 'string',
                'onDelete': 'restrict|cascade|setNull',
                'side': 'parent|child',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await databases.updateRelationshipAttribute(
                databaseId: '[DATABASE_ID]',
                collectionId: '[COLLECTION_ID]',
                key: '',
            );
            expect(response, isA<models.AttributeRelationship>());

        });

        test('test method listDocuments()', () async {
            final Map<String, dynamic> data = {
                'total': 5,
                'documents': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await databases.listDocuments(
                databaseId: '[DATABASE_ID]',
                collectionId: '[COLLECTION_ID]',
            );
            expect(response, isA<models.DocumentList>());

        });

        test('test method createDocument()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$collectionId': '5e5ea5c15117e',
                '\$databaseId': '5e5ea5c15117e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                '\$permissions': [],};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await databases.createDocument(
                databaseId: '[DATABASE_ID]',
                collectionId: '[COLLECTION_ID]',
                documentId: '[DOCUMENT_ID]',
                data: {},
            );
            expect(response, isA<models.Document>());

        });

        test('test method getDocument()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$collectionId': '5e5ea5c15117e',
                '\$databaseId': '5e5ea5c15117e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                '\$permissions': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await databases.getDocument(
                databaseId: '[DATABASE_ID]',
                collectionId: '[COLLECTION_ID]',
                documentId: '[DOCUMENT_ID]',
            );
            expect(response, isA<models.Document>());

        });

        test('test method updateDocument()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$collectionId': '5e5ea5c15117e',
                '\$databaseId': '5e5ea5c15117e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                '\$permissions': [],};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await databases.updateDocument(
                databaseId: '[DATABASE_ID]',
                collectionId: '[COLLECTION_ID]',
                documentId: '[DOCUMENT_ID]',
            );
            expect(response, isA<models.Document>());

        });

        test('test method deleteDocument()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await databases.deleteDocument(
                databaseId: '[DATABASE_ID]',
                collectionId: '[COLLECTION_ID]',
                documentId: '[DOCUMENT_ID]',
            );
        });

        test('test method listIndexes()', () async {
            final Map<String, dynamic> data = {
                'total': 5,
                'indexes': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await databases.listIndexes(
                databaseId: '[DATABASE_ID]',
                collectionId: '[COLLECTION_ID]',
            );
            expect(response, isA<models.IndexList>());

        });

        test('test method createIndex()', () async {
            final Map<String, dynamic> data = {
                'key': 'index1',
                'type': 'primary',
                'status': 'available',
                'error': 'string',
                'attributes': [],};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await databases.createIndex(
                databaseId: '[DATABASE_ID]',
                collectionId: '[COLLECTION_ID]',
                key: '',
                type: 'key',
                attributes: [],
            );
            expect(response, isA<models.Index>());

        });

        test('test method getIndex()', () async {
            final Map<String, dynamic> data = {
                'key': 'index1',
                'type': 'primary',
                'status': 'available',
                'error': 'string',
                'attributes': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await databases.getIndex(
                databaseId: '[DATABASE_ID]',
                collectionId: '[COLLECTION_ID]',
                key: '',
            );
            expect(response, isA<models.Index>());

        });

        test('test method deleteIndex()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await databases.deleteIndex(
                databaseId: '[DATABASE_ID]',
                collectionId: '[COLLECTION_ID]',
                key: '',
            );
        });

    });
}