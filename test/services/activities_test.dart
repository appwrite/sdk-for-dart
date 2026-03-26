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
    group('Activities test', () {
        late MockClient client;
        late Activities activities;

        setUp(() {
            client = MockClient();
            activities = Activities(client);
        });

        test('test method listEvents()', () async {
            final Map<String, dynamic> data = {
                'total': 5,
                'events': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await activities.listEvents(
            );
            expect(response, isA<models.ActivityEventList>());

        });

        test('test method getEvent()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                'userType': 'user',
                'userId': '610fc2f985ee0',
                'userEmail': 'john@appwrite.io',
                'userName': 'John Doe',
                'resourceParent': 'database/ID',
                'resourceType': 'collection',
                'resourceId': '610fc2f985ee0',
                'resource': 'collections/610fc2f985ee0',
                'event': 'account.sessions.create',
                'userAgent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36',
                'ip': '127.0.0.1',
                'mode': 'admin',
                'country': 'US',
                'time': '2020-10-15T06:38:00.000+00:00',
                'projectId': '610fc2f985ee0',
                'teamId': '610fc2f985ee0',
                'hostname': 'appwrite.io',
                'osCode': 'Mac',
                'osName': 'Mac',
                'osVersion': 'Mac',
                'clientType': 'browser',
                'clientCode': 'CM',
                'clientName': 'Chrome Mobile iOS',
                'clientVersion': '84.0',
                'clientEngine': 'WebKit',
                'clientEngineVersion': '605.1.15',
                'deviceName': 'smartphone',
                'deviceBrand': 'Google',
                'deviceModel': 'Nexus 5',
                'countryCode': 'US',
                'countryName': 'United States',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await activities.getEvent(
                eventId: '<EVENT_ID>',
            );
            expect(response, isA<models.ActivityEvent>());

        });

    });
}