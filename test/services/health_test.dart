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
    group('Health test', () {
        late MockClient client;
        late Health health;

        setUp(() {
            client = MockClient();
            health = Health(client);
        });

        test('test method get()', () async {
            final Map<String, dynamic> data = {
                'name': 'database',
                'ping': 128,
                'status': 'pass',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await health.get(
            );
            expect(response, isA<models.HealthStatus>());

        });

        test('test method getAntivirus()', () async {
            final Map<String, dynamic> data = {
                'version': '1.0.0',
                'status': 'online',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await health.getAntivirus(
            );
            expect(response, isA<models.HealthAntivirus>());

        });

        test('test method getCache()', () async {
            final Map<String, dynamic> data = {
                'name': 'database',
                'ping': 128,
                'status': 'pass',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await health.getCache(
            );
            expect(response, isA<models.HealthStatus>());

        });

        test('test method getCertificate()', () async {
            final Map<String, dynamic> data = {
                'name': '/CN=www.google.com',
                'subjectSN': '',
                'issuerOrganisation': '',
                'validFrom': '1704200998',
                'validTo': '1711458597',
                'signatureTypeSN': 'RSA-SHA256',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await health.getCertificate(
            );
            expect(response, isA<models.HealthCertificate>());

        });

        test('test method getDB()', () async {
            final Map<String, dynamic> data = {
                'name': 'database',
                'ping': 128,
                'status': 'pass',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await health.getDB(
            );
            expect(response, isA<models.HealthStatus>());

        });

        test('test method getPubSub()', () async {
            final Map<String, dynamic> data = {
                'name': 'database',
                'ping': 128,
                'status': 'pass',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await health.getPubSub(
            );
            expect(response, isA<models.HealthStatus>());

        });

        test('test method getQueueBillingProjectAggregation()', () async {
            final Map<String, dynamic> data = {
                'size': 8,};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await health.getQueueBillingProjectAggregation(
            );
            expect(response, isA<models.HealthQueue>());

        });

        test('test method getQueueBillingTeamAggregation()', () async {
            final Map<String, dynamic> data = {
                'size': 8,};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await health.getQueueBillingTeamAggregation(
            );
            expect(response, isA<models.HealthQueue>());

        });

        test('test method getQueueBuilds()', () async {
            final Map<String, dynamic> data = {
                'size': 8,};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await health.getQueueBuilds(
            );
            expect(response, isA<models.HealthQueue>());

        });

        test('test method getQueuePriorityBuilds()', () async {
            final Map<String, dynamic> data = {
                'size': 8,};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await health.getQueuePriorityBuilds(
            );
            expect(response, isA<models.HealthQueue>());

        });

        test('test method getQueueCertificates()', () async {
            final Map<String, dynamic> data = {
                'size': 8,};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await health.getQueueCertificates(
            );
            expect(response, isA<models.HealthQueue>());

        });

        test('test method getQueueDatabases()', () async {
            final Map<String, dynamic> data = {
                'size': 8,};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await health.getQueueDatabases(
            );
            expect(response, isA<models.HealthQueue>());

        });

        test('test method getQueueDeletes()', () async {
            final Map<String, dynamic> data = {
                'size': 8,};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await health.getQueueDeletes(
            );
            expect(response, isA<models.HealthQueue>());

        });

        test('test method getFailedJobs()', () async {
            final Map<String, dynamic> data = {
                'size': 8,};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await health.getFailedJobs(
                name: enums.Name.v1Database,
            );
            expect(response, isA<models.HealthQueue>());

        });

        test('test method getQueueFunctions()', () async {
            final Map<String, dynamic> data = {
                'size': 8,};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await health.getQueueFunctions(
            );
            expect(response, isA<models.HealthQueue>());

        });

        test('test method getQueueLogs()', () async {
            final Map<String, dynamic> data = {
                'size': 8,};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await health.getQueueLogs(
            );
            expect(response, isA<models.HealthQueue>());

        });

        test('test method getQueueMails()', () async {
            final Map<String, dynamic> data = {
                'size': 8,};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await health.getQueueMails(
            );
            expect(response, isA<models.HealthQueue>());

        });

        test('test method getQueueMessaging()', () async {
            final Map<String, dynamic> data = {
                'size': 8,};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await health.getQueueMessaging(
            );
            expect(response, isA<models.HealthQueue>());

        });

        test('test method getQueueMigrations()', () async {
            final Map<String, dynamic> data = {
                'size': 8,};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await health.getQueueMigrations(
            );
            expect(response, isA<models.HealthQueue>());

        });

        test('test method getQueueRegionManager()', () async {
            final Map<String, dynamic> data = {
                'size': 8,};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await health.getQueueRegionManager(
            );
            expect(response, isA<models.HealthQueue>());

        });

        test('test method getQueueStatsResources()', () async {
            final Map<String, dynamic> data = {
                'size': 8,};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await health.getQueueStatsResources(
            );
            expect(response, isA<models.HealthQueue>());

        });

        test('test method getQueueUsage()', () async {
            final Map<String, dynamic> data = {
                'size': 8,};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await health.getQueueUsage(
            );
            expect(response, isA<models.HealthQueue>());

        });

        test('test method getQueueThreats()', () async {
            final Map<String, dynamic> data = {
                'size': 8,};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await health.getQueueThreats(
            );
            expect(response, isA<models.HealthQueue>());

        });

        test('test method getQueueWebhooks()', () async {
            final Map<String, dynamic> data = {
                'size': 8,};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await health.getQueueWebhooks(
            );
            expect(response, isA<models.HealthQueue>());

        });

        test('test method getStorage()', () async {
            final Map<String, dynamic> data = {
                'name': 'database',
                'ping': 128,
                'status': 'pass',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await health.getStorage(
            );
            expect(response, isA<models.HealthStatus>());

        });

        test('test method getStorageLocal()', () async {
            final Map<String, dynamic> data = {
                'name': 'database',
                'ping': 128,
                'status': 'pass',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await health.getStorageLocal(
            );
            expect(response, isA<models.HealthStatus>());

        });

        test('test method getTime()', () async {
            final Map<String, dynamic> data = {
                'remoteTime': 1639490751,
                'localTime': 1639490844,
                'diff': 93,};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await health.getTime(
            );
            expect(response, isA<models.HealthTime>());

        });

    });
}