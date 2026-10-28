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
        'events': [],
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

      final response = await activities.listEvents(
        queries: [],
        total: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/activities/events",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "queries": isA<List>(),
        "total": false,
      });
      expect(response, isA<models.ActivityEventList>());
    });

    test('test method getEvent()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        'actorType': "user",
        'actorId': "610fc2f985ee0",
        'actorEmail': "john@appwrite.io",
        'actorName': "John Doe",
        'resourceParent': "database/ID",
        'resourceType': "collection",
        'resourceId': "610fc2f985ee0",
        'resource': "collections/610fc2f985ee0",
        'event': "account.sessions.create",
        'userAgent':
            "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36",
        'ip': "127.0.0.1",
        'mode': "admin",
        'country': "US",
        'continentCode': "NA",
        'city': "Mountain View",
        'subdivisions': "California",
        'isp': "Google",
        'autonomousSystemNumber': "15169",
        'autonomousSystemOrganization': "GOOGLE",
        'connectionType': "cable",
        'connectionUsageType': "residential",
        'connectionOrganization': "Google LLC",
        'time': "2020-10-15T06:38:00.000+00:00",
        'projectId': "610fc2f985ee0",
        'teamId': "610fc2f985ee0",
        'hostname': "appwrite.io",
        'sdk': "web",
        'sdkVersion': "14.0.0",
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

      final response = await activities.getEvent(
        eventId: "<EVENT_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/activities/events/%3CEVENT_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.ActivityEvent>());
    });
  });
}
