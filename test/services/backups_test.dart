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
  group('Backups test', () {
    late MockClient client;
    late Backups backups;

    setUp(() {
      client = MockClient();
      backups = Backups(client);
    });

    test('test method listArchives()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'archives': [],
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

      final response = await backups.listArchives(
        queries: [],
        total: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/backups/archives",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "queries": isA<List>(),
        "total": false,
      });
      expect(response, isA<models.BackupArchiveList>());
    });

    test('test method createArchive()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'policyId': "did8jx6ws45jana098ab7",
        'status': "completed",
        'migrationId': "did8jx6ws45jana098ab7",
        'services': [],
        'resources': [],
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

      final response = await backups.createArchive(
        services: [enums.BackupServices.databases],
        resourceId: "<RESOURCE_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/backups/archives",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "services": isA<List>(),
        "resourceId": "<RESOURCE_ID>",
      });
      expect(response, isA<models.BackupArchive>());
    });

    test('test method getArchive()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'policyId': "did8jx6ws45jana098ab7",
        'status': "completed",
        'migrationId': "did8jx6ws45jana098ab7",
        'services': [],
        'resources': [],
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

      final response = await backups.getArchive(
        archiveId: "<ARCHIVE_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/backups/archives/%3CARCHIVE_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.BackupArchive>());
    });

    test('test method deleteArchive()', () async {
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

      final response = await backups.deleteArchive(
        archiveId: "<ARCHIVE_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.delete,
          path: "/backups/archives/%3CARCHIVE_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
    });

    test('test method listPolicies()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'policies': [],
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

      final response = await backups.listPolicies(
        queries: [],
        total: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/backups/policies",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "queries": isA<List>(),
        "total": false,
      });
      expect(response, isA<models.BackupPolicyList>());
    });

    test('test method createPolicy()', () async {
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
        client.call(
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await backups.createPolicy(
        policyId: "<POLICY_ID>",
        services: [enums.BackupServices.databases],
        retention: 1,
        schedule: "schedule",
        name: "<NAME>",
        resourceId: "<RESOURCE_ID>",
        enabled: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/backups/policies",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "policyId": "<POLICY_ID>",
        "name": "<NAME>",
        "services": isA<List>(),
        "resourceId": "<RESOURCE_ID>",
        "enabled": false,
        "retention": 1,
        "schedule": "schedule",
      });
      expect(response, isA<models.BackupPolicy>());
    });

    test('test method getPolicy()', () async {
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
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await backups.getPolicy(
        policyId: "<POLICY_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/backups/policies/%3CPOLICY_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.BackupPolicy>());
    });

    test('test method updatePolicy()', () async {
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
        client.call(
          HttpMethod.patch,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await backups.updatePolicy(
        policyId: "<POLICY_ID>",
        name: "<NAME>",
        retention: 1,
        schedule: "schedule",
        enabled: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/backups/policies/%3CPOLICY_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "<NAME>",
        "retention": 1,
        "schedule": "schedule",
        "enabled": false,
      });
      expect(response, isA<models.BackupPolicy>());
    });

    test('test method deletePolicy()', () async {
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

      final response = await backups.deletePolicy(
        policyId: "<POLICY_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.delete,
          path: "/backups/policies/%3CPOLICY_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
    });

    test('test method createRestoration()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'archiveId': "did8jx6ws45jana098ab7",
        'policyId': "did8jx6ws45jana098ab7",
        'status': "completed",
        'migrationId': "did8jx6ws45jana098ab7",
        'services': [],
        'resources': [],
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

      final response = await backups.createRestoration(
        archiveId: "<ARCHIVE_ID>",
        services: [enums.BackupServices.databases],
        newResourceId: "<NEW_RESOURCE_ID>",
        newResourceName: "<NEW_RESOURCE_NAME>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/backups/restoration",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "archiveId": "<ARCHIVE_ID>",
        "services": isA<List>(),
        "newResourceId": "<NEW_RESOURCE_ID>",
        "newResourceName": "<NEW_RESOURCE_NAME>",
      });
      expect(response, isA<models.BackupRestoration>());
    });

    test('test method listRestorations()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'restorations': [],
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

      final response = await backups.listRestorations(
        queries: [],
        total: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/backups/restorations",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "queries": isA<List>(),
        "total": false,
      });
      expect(response, isA<models.BackupRestorationList>());
    });

    test('test method getRestoration()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'archiveId': "did8jx6ws45jana098ab7",
        'policyId': "did8jx6ws45jana098ab7",
        'status': "completed",
        'migrationId': "did8jx6ws45jana098ab7",
        'services': [],
        'resources': [],
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

      final response = await backups.getRestoration(
        restorationId: "<RESTORATION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/backups/restorations/%3CRESTORATION_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.BackupRestoration>());
    });
  });
}
