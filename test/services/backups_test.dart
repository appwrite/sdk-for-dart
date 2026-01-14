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

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await backups.listArchives();
      expect(response, isA<models.BackupArchiveList>());
    });

    test('test method createArchive()', () async {
      final Map<String, dynamic> data = {
        '\$id': '5e5ea5c16897e',
        '\$createdAt': '2020-10-15T06:38:00.000+00:00',
        '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
        'policyId': 'did8jx6ws45jana098ab7',
        'size': 100000,
        'status': 'completed',
        'startedAt': '2020-10-15T06:38:00.000+00:00',
        'migrationId': 'did8jx6ws45jana098ab7',
        'services': [],
        'resources': [],
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await backups.createArchive(
        services: [],
      );
      expect(response, isA<models.BackupArchive>());
    });

    test('test method getArchive()', () async {
      final Map<String, dynamic> data = {
        '\$id': '5e5ea5c16897e',
        '\$createdAt': '2020-10-15T06:38:00.000+00:00',
        '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
        'policyId': 'did8jx6ws45jana098ab7',
        'size': 100000,
        'status': 'completed',
        'startedAt': '2020-10-15T06:38:00.000+00:00',
        'migrationId': 'did8jx6ws45jana098ab7',
        'services': [],
        'resources': [],
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await backups.getArchive(
        archiveId: '<ARCHIVE_ID>',
      );
      expect(response, isA<models.BackupArchive>());
    });

    test('test method deleteArchive()', () async {
      final data = '';

      when(client.call(
        HttpMethod.delete,
      )).thenAnswer((_) async => Response(data: data));

      final response = await backups.deleteArchive(
        archiveId: '<ARCHIVE_ID>',
      );
    });

    test('test method listPolicies()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'policies': [],
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await backups.listPolicies();
      expect(response, isA<models.BackupPolicyList>());
    });

    test('test method createPolicy()', () async {
      final Map<String, dynamic> data = {
        '\$id': '5e5ea5c16897e',
        'name': 'Hourly backups',
        '\$createdAt': '2020-10-15T06:38:00.000+00:00',
        '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
        'services': [],
        'resources': [],
        'retention': 7,
        'schedule': '0 * * * *',
        'enabled': true,
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await backups.createPolicy(
        policyId: '<POLICY_ID>',
        services: [],
        retention: 1,
        schedule: '',
      );
      expect(response, isA<models.BackupPolicy>());
    });

    test('test method getPolicy()', () async {
      final Map<String, dynamic> data = {
        '\$id': '5e5ea5c16897e',
        'name': 'Hourly backups',
        '\$createdAt': '2020-10-15T06:38:00.000+00:00',
        '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
        'services': [],
        'resources': [],
        'retention': 7,
        'schedule': '0 * * * *',
        'enabled': true,
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await backups.getPolicy(
        policyId: '<POLICY_ID>',
      );
      expect(response, isA<models.BackupPolicy>());
    });

    test('test method updatePolicy()', () async {
      final Map<String, dynamic> data = {
        '\$id': '5e5ea5c16897e',
        'name': 'Hourly backups',
        '\$createdAt': '2020-10-15T06:38:00.000+00:00',
        '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
        'services': [],
        'resources': [],
        'retention': 7,
        'schedule': '0 * * * *',
        'enabled': true,
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await backups.updatePolicy(
        policyId: '<POLICY_ID>',
      );
      expect(response, isA<models.BackupPolicy>());
    });

    test('test method deletePolicy()', () async {
      final data = '';

      when(client.call(
        HttpMethod.delete,
      )).thenAnswer((_) async => Response(data: data));

      final response = await backups.deletePolicy(
        policyId: '<POLICY_ID>',
      );
    });

    test('test method createRestoration()', () async {
      final Map<String, dynamic> data = {
        '\$id': '5e5ea5c16897e',
        '\$createdAt': '2020-10-15T06:38:00.000+00:00',
        '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
        'archiveId': 'did8jx6ws45jana098ab7',
        'policyId': 'did8jx6ws45jana098ab7',
        'status': 'completed',
        'startedAt': '2020-10-15T06:38:00.000+00:00',
        'migrationId': 'did8jx6ws45jana098ab7',
        'services': [],
        'resources': [],
        'options': '{databases.database[{oldId, newId, newName}]}',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await backups.createRestoration(
        archiveId: '<ARCHIVE_ID>',
        services: [],
      );
      expect(response, isA<models.BackupRestoration>());
    });

    test('test method listRestorations()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'restorations': [],
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await backups.listRestorations();
      expect(response, isA<models.BackupRestorationList>());
    });

    test('test method getRestoration()', () async {
      final Map<String, dynamic> data = {
        '\$id': '5e5ea5c16897e',
        '\$createdAt': '2020-10-15T06:38:00.000+00:00',
        '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
        'archiveId': 'did8jx6ws45jana098ab7',
        'policyId': 'did8jx6ws45jana098ab7',
        'status': 'completed',
        'startedAt': '2020-10-15T06:38:00.000+00:00',
        'migrationId': 'did8jx6ws45jana098ab7',
        'services': [],
        'resources': [],
        'options': '{databases.database[{oldId, newId, newName}]}',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await backups.getRestoration(
        restorationId: '<RESTORATION_ID>',
      );
      expect(response, isA<models.BackupRestoration>());
    });
  });
}
