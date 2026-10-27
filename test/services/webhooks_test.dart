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
  group('Webhooks test', () {
    late MockClient client;
    late Webhooks webhooks;

    setUp(() {
      client = MockClient();
      webhooks = Webhooks(client);
    });

    test('test method list()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'webhooks': [],
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

      final response = await webhooks.list(
        queries: [],
        total: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/webhooks",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "queries": isA<List>(),
        "total": false,
      });
      expect(response, isA<models.WebhookList>());
    });

    test('test method create()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "My Webhook",
        'description': "Notifies the billing service about new users.",
        'url': "https://example.com/webhook",
        'events': [],
        'tls': true,
        'authUsername': "username",
        'authPassword': "webhook-password",
        'secret': "ad3d581ca230e2b7059c545e5a",
        'enabled': true,
        'logs': "Failed to connect to remote server.",
        'attempts': 10,
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

      final response = await webhooks.create(
        webhookId: "<WEBHOOK_ID>",
        url: "https://example.com/webhook",
        name: "<NAME>",
        events: [],
        enabled: false,
        tls: false,
        authUsername: "<AUTH_USERNAME>",
        authPassword: "password",
        secret: "<SECRET>",
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/webhooks",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "webhookId": "<WEBHOOK_ID>",
        "url": "https://example.com/webhook",
        "name": "<NAME>",
        "events": isA<List>(),
        "enabled": false,
        "tls": false,
        "authUsername": "<AUTH_USERNAME>",
        "authPassword": "password",
        "secret": "<SECRET>",
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.Webhook>());
    });

    test('test method get()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "My Webhook",
        'description': "Notifies the billing service about new users.",
        'url': "https://example.com/webhook",
        'events': [],
        'tls': true,
        'authUsername': "username",
        'authPassword': "webhook-password",
        'secret': "ad3d581ca230e2b7059c545e5a",
        'enabled': true,
        'logs': "Failed to connect to remote server.",
        'attempts': 10,
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

      final response = await webhooks.get(
        webhookId: "<WEBHOOK_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/webhooks/%3CWEBHOOK_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.Webhook>());
    });

    test('test method update()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "My Webhook",
        'description': "Notifies the billing service about new users.",
        'url': "https://example.com/webhook",
        'events': [],
        'tls': true,
        'authUsername': "username",
        'authPassword': "webhook-password",
        'secret': "ad3d581ca230e2b7059c545e5a",
        'enabled': true,
        'logs': "Failed to connect to remote server.",
        'attempts': 10,
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

      final response = await webhooks.update(
        webhookId: "<WEBHOOK_ID>",
        name: "<NAME>",
        url: "https://example.com/webhook",
        events: [],
        enabled: false,
        tls: false,
        authUsername: "<AUTH_USERNAME>",
        authPassword: "password",
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.put,
          path: "/webhooks/%3CWEBHOOK_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "<NAME>",
        "url": "https://example.com/webhook",
        "events": isA<List>(),
        "enabled": false,
        "tls": false,
        "authUsername": "<AUTH_USERNAME>",
        "authPassword": "password",
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.Webhook>());
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

      final response = await webhooks.delete(
        webhookId: "<WEBHOOK_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.delete,
          path: "/webhooks/%3CWEBHOOK_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
    });

    test('test method updateSecret()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "My Webhook",
        'description': "Notifies the billing service about new users.",
        'url': "https://example.com/webhook",
        'events': [],
        'tls': true,
        'authUsername': "username",
        'authPassword': "webhook-password",
        'secret': "ad3d581ca230e2b7059c545e5a",
        'enabled': true,
        'logs': "Failed to connect to remote server.",
        'attempts': 10,
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

      final response = await webhooks.updateSecret(
        webhookId: "<WEBHOOK_ID>",
        secret: "<SECRET>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/webhooks/%3CWEBHOOK_ID%3E/secret",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "secret": "<SECRET>",
      });
      expect(response, isA<models.Webhook>());
    });
  });
}
