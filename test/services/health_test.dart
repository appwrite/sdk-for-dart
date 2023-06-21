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
    group('Health test', () {
        late MockClient client;
        late Health health;

        setUp(() {
            client = MockClient();
            health = Health(client);
        });

        test('test method get()', () async {
            final Map<String, dynamic> data = {
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
                'ping': 128,
                'status': 'pass',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await health.getCache(
            );
            expect(response, isA<models.HealthStatus>());

        });

        test('test method getDB()', () async {
            final Map<String, dynamic> data = {
                'ping': 128,
                'status': 'pass',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await health.getDB(
            );
            expect(response, isA<models.HealthStatus>());

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

        test('test method getStorageLocal()', () async {
            final Map<String, dynamic> data = {
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