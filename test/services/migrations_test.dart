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
  group('Migrations test', () {
    late MockClient client;
    late Migrations migrations;

    setUp(() {
      client = MockClient();
      migrations = Migrations(client);
    });

    test('test method list()', () async {
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

      final response = await migrations.list(
        queries: [],
        search: "<SEARCH>",
        total: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/migrations",
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
      expect(response, isA<models.MigrationList>());
    });

    test('test method createAppwriteMigration()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'status': "pending",
        'stage': "init",
        'source': "Appwrite",
        'destination': "Appwrite",
        'resources': [],
        'resourceId': "collectionId",
        'resourceInternalId': "1",
        'resourceType': "collection",
        'parentResourceId': "databaseId",
        'parentResourceInternalId': "1",
        'parentResourceType': "database",
        'destinationResourceId': "databaseId",
        'destinationResourceInternalId': "1",
        'destinationResourceType': "database",
        'statusCounters': <String, dynamic>{},
        'resourceData': [],
        'errors': [],
        'options': <String, dynamic>{},
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

      final response = await migrations.createAppwriteMigration(
        resources: [enums.AppwriteMigrationResource.user],
        endpoint: "https://example.com",
        projectId: "<PROJECT_ID>",
        apiKey: "<API_KEY>",
        onDuplicate: enums.OnDuplicate.fail,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/migrations/appwrite",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "resources": isA<List>(),
        "endpoint": "https://example.com",
        "projectId": "<PROJECT_ID>",
        "apiKey": "<API_KEY>",
        "onDuplicate": enums.OnDuplicate.fail.value,
      });
      expect(response, isA<models.Migration>());
    });

    test('test method createCSVExport()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'status': "pending",
        'stage': "init",
        'source': "Appwrite",
        'destination': "Appwrite",
        'resources': [],
        'resourceId': "collectionId",
        'resourceInternalId': "1",
        'resourceType': "collection",
        'parentResourceId': "databaseId",
        'parentResourceInternalId': "1",
        'parentResourceType': "database",
        'destinationResourceId': "databaseId",
        'destinationResourceInternalId': "1",
        'destinationResourceType': "database",
        'statusCounters': <String, dynamic>{},
        'resourceData': [],
        'errors': [],
        'options': <String, dynamic>{},
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

      final response = await migrations.createCSVExport(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        filename: "<FILENAME>",
        columns: [],
        queries: [],
        delimiter: "<DELIMITER>",
        enclosure: "<ENCLOSURE>",
        escape: "<ESCAPE>",
        header: false,
        notify: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/migrations/csv/exports",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "databaseId": "<DATABASE_ID>",
        "collectionId": "<COLLECTION_ID>",
        "filename": "<FILENAME>",
        "columns": isA<List>(),
        "queries": isA<List>(),
        "delimiter": "<DELIMITER>",
        "enclosure": "<ENCLOSURE>",
        "escape": "<ESCAPE>",
        "header": false,
        "notify": false,
      });
      expect(response, isA<models.Migration>());
    });

    test('test method createCSVImport()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'status': "pending",
        'stage': "init",
        'source': "Appwrite",
        'destination': "Appwrite",
        'resources': [],
        'resourceId': "collectionId",
        'resourceInternalId': "1",
        'resourceType': "collection",
        'parentResourceId': "databaseId",
        'parentResourceInternalId': "1",
        'parentResourceType': "database",
        'destinationResourceId': "databaseId",
        'destinationResourceInternalId': "1",
        'destinationResourceType': "database",
        'statusCounters': <String, dynamic>{},
        'resourceData': [],
        'errors': [],
        'options': <String, dynamic>{},
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

      final response = await migrations.createCSVImport(
        bucketId: "<BUCKET_ID>",
        fileId: "<FILE_ID>",
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        internalFile: false,
        onDuplicate: enums.OnDuplicate.fail,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/migrations/csv/imports",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "bucketId": "<BUCKET_ID>",
        "fileId": "<FILE_ID>",
        "databaseId": "<DATABASE_ID>",
        "collectionId": "<COLLECTION_ID>",
        "internalFile": false,
        "onDuplicate": enums.OnDuplicate.fail.value,
      });
      expect(response, isA<models.Migration>());
    });

    test('test method createFirebaseMigration()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'status': "pending",
        'stage': "init",
        'source': "Appwrite",
        'destination': "Appwrite",
        'resources': [],
        'resourceId': "collectionId",
        'resourceInternalId': "1",
        'resourceType': "collection",
        'parentResourceId': "databaseId",
        'parentResourceInternalId': "1",
        'parentResourceType': "database",
        'destinationResourceId': "databaseId",
        'destinationResourceInternalId': "1",
        'destinationResourceType': "database",
        'statusCounters': <String, dynamic>{},
        'resourceData': [],
        'errors': [],
        'options': <String, dynamic>{},
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

      final response = await migrations.createFirebaseMigration(
        resources: [enums.FirebaseMigrationResource.user],
        serviceAccount: "<SERVICE_ACCOUNT>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/migrations/firebase",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "resources": isA<List>(),
        "serviceAccount": "<SERVICE_ACCOUNT>",
      });
      expect(response, isA<models.Migration>());
    });

    test('test method getFirebaseReport()', () async {
      final Map<String, dynamic> data = {
        'user': 20,
        'team': 20,
        'database': 20,
        'row': 20,
        'file': 20,
        'bucket': 20,
        'function': 20,
        'platform': 5,
        'api-key': 5,
        'project-variable': 5,
        'webhook': 5,
        'auth-methods': 1,
        'project-protocols': 1,
        'project-labels': 1,
        'project-services': 1,
        'policies': 1,
        'smtp': 1,
        'rule': 5,
        'project-email-template': 7,
        'project-environment': 2,
        'site': 5,
        'provider': 5,
        'topic': 10,
        'subscriber': 100,
        'message': 50,
        'size': 30000,
        'version': "1.4.0",
        'oauth2-provider': 5,
        'backup-policy': 5,
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

      final response = await migrations.getFirebaseReport(
        resources: [enums.FirebaseMigrationResource.user],
        serviceAccount: "<SERVICE_ACCOUNT>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/migrations/firebase/report",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "resources": isA<List>(),
        "serviceAccount": "<SERVICE_ACCOUNT>",
      });
      expect(response, isA<models.MigrationReport>());
    });

    test('test method createJSONExport()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'status': "pending",
        'stage': "init",
        'source': "Appwrite",
        'destination': "Appwrite",
        'resources': [],
        'resourceId': "collectionId",
        'resourceInternalId': "1",
        'resourceType': "collection",
        'parentResourceId': "databaseId",
        'parentResourceInternalId': "1",
        'parentResourceType': "database",
        'destinationResourceId': "databaseId",
        'destinationResourceInternalId': "1",
        'destinationResourceType': "database",
        'statusCounters': <String, dynamic>{},
        'resourceData': [],
        'errors': [],
        'options': <String, dynamic>{},
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

      final response = await migrations.createJSONExport(
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        filename: "<FILENAME>",
        columns: [],
        queries: [],
        notify: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/migrations/json/exports",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "databaseId": "<DATABASE_ID>",
        "collectionId": "<COLLECTION_ID>",
        "filename": "<FILENAME>",
        "columns": isA<List>(),
        "queries": isA<List>(),
        "notify": false,
      });
      expect(response, isA<models.Migration>());
    });

    test('test method createJSONImport()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'status': "pending",
        'stage': "init",
        'source': "Appwrite",
        'destination': "Appwrite",
        'resources': [],
        'resourceId': "collectionId",
        'resourceInternalId': "1",
        'resourceType': "collection",
        'parentResourceId': "databaseId",
        'parentResourceInternalId': "1",
        'parentResourceType': "database",
        'destinationResourceId': "databaseId",
        'destinationResourceInternalId': "1",
        'destinationResourceType': "database",
        'statusCounters': <String, dynamic>{},
        'resourceData': [],
        'errors': [],
        'options': <String, dynamic>{},
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

      final response = await migrations.createJSONImport(
        bucketId: "<BUCKET_ID>",
        fileId: "<FILE_ID>",
        databaseId: "<DATABASE_ID>",
        collectionId: "<COLLECTION_ID>",
        internalFile: false,
        onDuplicate: enums.OnDuplicate.fail,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/migrations/json/imports",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "bucketId": "<BUCKET_ID>",
        "fileId": "<FILE_ID>",
        "databaseId": "<DATABASE_ID>",
        "collectionId": "<COLLECTION_ID>",
        "internalFile": false,
        "onDuplicate": enums.OnDuplicate.fail.value,
      });
      expect(response, isA<models.Migration>());
    });

    test('test method createNHostMigration()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'status': "pending",
        'stage': "init",
        'source': "Appwrite",
        'destination': "Appwrite",
        'resources': [],
        'resourceId': "collectionId",
        'resourceInternalId': "1",
        'resourceType': "collection",
        'parentResourceId': "databaseId",
        'parentResourceInternalId': "1",
        'parentResourceType': "database",
        'destinationResourceId': "databaseId",
        'destinationResourceInternalId': "1",
        'destinationResourceType': "database",
        'statusCounters': <String, dynamic>{},
        'resourceData': [],
        'errors': [],
        'options': <String, dynamic>{},
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

      final response = await migrations.createNHostMigration(
        resources: [enums.NHostMigrationResource.user],
        subdomain: "<SUBDOMAIN>",
        region: "<REGION>",
        adminSecret: "<ADMIN_SECRET>",
        database: "<DATABASE>",
        username: "<USERNAME>",
        password: "password",
        port: 1,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/migrations/nhost",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "resources": isA<List>(),
        "subdomain": "<SUBDOMAIN>",
        "region": "<REGION>",
        "adminSecret": "<ADMIN_SECRET>",
        "database": "<DATABASE>",
        "username": "<USERNAME>",
        "password": "password",
        "port": 1,
      });
      expect(response, isA<models.Migration>());
    });

    test('test method getNHostReport()', () async {
      final Map<String, dynamic> data = {
        'user': 20,
        'team': 20,
        'database': 20,
        'row': 20,
        'file': 20,
        'bucket': 20,
        'function': 20,
        'platform': 5,
        'api-key': 5,
        'project-variable': 5,
        'webhook': 5,
        'auth-methods': 1,
        'project-protocols': 1,
        'project-labels': 1,
        'project-services': 1,
        'policies': 1,
        'smtp': 1,
        'rule': 5,
        'project-email-template': 7,
        'project-environment': 2,
        'site': 5,
        'provider': 5,
        'topic': 10,
        'subscriber': 100,
        'message': 50,
        'size': 30000,
        'version': "1.4.0",
        'oauth2-provider': 5,
        'backup-policy': 5,
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

      final response = await migrations.getNHostReport(
        resources: [enums.NHostMigrationResource.user],
        subdomain: "<SUBDOMAIN>",
        region: "<REGION>",
        adminSecret: "<ADMIN_SECRET>",
        database: "<DATABASE>",
        username: "<USERNAME>",
        password: "password",
        port: 1,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/migrations/nhost/report",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "resources": isA<List>(),
        "subdomain": "<SUBDOMAIN>",
        "region": "<REGION>",
        "adminSecret": "<ADMIN_SECRET>",
        "database": "<DATABASE>",
        "username": "<USERNAME>",
        "password": "password",
        "port": 1,
      });
      expect(response, isA<models.MigrationReport>());
    });

    test('test method createSupabaseMigration()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'status': "pending",
        'stage': "init",
        'source': "Appwrite",
        'destination': "Appwrite",
        'resources': [],
        'resourceId': "collectionId",
        'resourceInternalId': "1",
        'resourceType': "collection",
        'parentResourceId': "databaseId",
        'parentResourceInternalId': "1",
        'parentResourceType': "database",
        'destinationResourceId': "databaseId",
        'destinationResourceInternalId': "1",
        'destinationResourceType': "database",
        'statusCounters': <String, dynamic>{},
        'resourceData': [],
        'errors': [],
        'options': <String, dynamic>{},
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

      final response = await migrations.createSupabaseMigration(
        resources: [enums.SupabaseMigrationResource.user],
        endpoint: "https://example.com",
        apiKey: "<API_KEY>",
        databaseHost: "<DATABASE_HOST>",
        username: "<USERNAME>",
        password: "password",
        port: 1,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/migrations/supabase",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "resources": isA<List>(),
        "endpoint": "https://example.com",
        "apiKey": "<API_KEY>",
        "databaseHost": "<DATABASE_HOST>",
        "username": "<USERNAME>",
        "password": "password",
        "port": 1,
      });
      expect(response, isA<models.Migration>());
    });

    test('test method getSupabaseReport()', () async {
      final Map<String, dynamic> data = {
        'user': 20,
        'team': 20,
        'database': 20,
        'row': 20,
        'file': 20,
        'bucket': 20,
        'function': 20,
        'platform': 5,
        'api-key': 5,
        'project-variable': 5,
        'webhook': 5,
        'auth-methods': 1,
        'project-protocols': 1,
        'project-labels': 1,
        'project-services': 1,
        'policies': 1,
        'smtp': 1,
        'rule': 5,
        'project-email-template': 7,
        'project-environment': 2,
        'site': 5,
        'provider': 5,
        'topic': 10,
        'subscriber': 100,
        'message': 50,
        'size': 30000,
        'version': "1.4.0",
        'oauth2-provider': 5,
        'backup-policy': 5,
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

      final response = await migrations.getSupabaseReport(
        resources: [enums.SupabaseMigrationResource.user],
        endpoint: "https://example.com",
        apiKey: "<API_KEY>",
        databaseHost: "<DATABASE_HOST>",
        username: "<USERNAME>",
        password: "password",
        port: 1,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/migrations/supabase/report",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "resources": isA<List>(),
        "endpoint": "https://example.com",
        "apiKey": "<API_KEY>",
        "databaseHost": "<DATABASE_HOST>",
        "username": "<USERNAME>",
        "password": "password",
        "port": 1,
      });
      expect(response, isA<models.MigrationReport>());
    });

    test('test method get()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'status': "pending",
        'stage': "init",
        'source': "Appwrite",
        'destination': "Appwrite",
        'resources': [],
        'resourceId': "collectionId",
        'resourceInternalId': "1",
        'resourceType': "collection",
        'parentResourceId': "databaseId",
        'parentResourceInternalId': "1",
        'parentResourceType': "database",
        'destinationResourceId': "databaseId",
        'destinationResourceInternalId': "1",
        'destinationResourceType': "database",
        'statusCounters': <String, dynamic>{},
        'resourceData': [],
        'errors': [],
        'options': <String, dynamic>{},
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

      final response = await migrations.get(
        migrationId: "<MIGRATION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/migrations/%3CMIGRATION_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.Migration>());
    });

    test('test method retry()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'status': "pending",
        'stage': "init",
        'source': "Appwrite",
        'destination': "Appwrite",
        'resources': [],
        'resourceId': "collectionId",
        'resourceInternalId': "1",
        'resourceType': "collection",
        'parentResourceId': "databaseId",
        'parentResourceInternalId': "1",
        'parentResourceType': "database",
        'destinationResourceId': "databaseId",
        'destinationResourceInternalId': "1",
        'destinationResourceType': "database",
        'statusCounters': <String, dynamic>{},
        'resourceData': [],
        'errors': [],
        'options': <String, dynamic>{},
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

      final response = await migrations.retry(
        migrationId: "<MIGRATION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/migrations/%3CMIGRATION_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.Migration>());
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

      final response = await migrations.delete(
        migrationId: "<MIGRATION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.delete,
          path: "/migrations/%3CMIGRATION_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
    });
  });
}
