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

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await webhooks.list();
      expect(response, isA<models.WebhookList>());
    });

    test('test method create()', () async {
      final Map<String, dynamic> data = {
        '\$id': '5e5ea5c16897e',
        '\$createdAt': '2020-10-15T06:38:00.000+00:00',
        '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
        'name': 'My Webhook',
        'url': 'https://example.com/webhook',
        'events': [],
        'security': true,
        'httpUser': 'username',
        'httpPass': 'password',
        'signatureKey': 'ad3d581ca230e2b7059c545e5a',
        'enabled': true,
        'logs': 'Failed to connect to remote server.',
        'attempts': 10,
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await webhooks.create(
        webhookId: '<WEBHOOK_ID>',
        url: '',
        name: '<NAME>',
        events: [],
      );
      expect(response, isA<models.Webhook>());
    });

    test('test method get()', () async {
      final Map<String, dynamic> data = {
        '\$id': '5e5ea5c16897e',
        '\$createdAt': '2020-10-15T06:38:00.000+00:00',
        '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
        'name': 'My Webhook',
        'url': 'https://example.com/webhook',
        'events': [],
        'security': true,
        'httpUser': 'username',
        'httpPass': 'password',
        'signatureKey': 'ad3d581ca230e2b7059c545e5a',
        'enabled': true,
        'logs': 'Failed to connect to remote server.',
        'attempts': 10,
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await webhooks.get(
        webhookId: '<WEBHOOK_ID>',
      );
      expect(response, isA<models.Webhook>());
    });

    test('test method update()', () async {
      final Map<String, dynamic> data = {
        '\$id': '5e5ea5c16897e',
        '\$createdAt': '2020-10-15T06:38:00.000+00:00',
        '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
        'name': 'My Webhook',
        'url': 'https://example.com/webhook',
        'events': [],
        'security': true,
        'httpUser': 'username',
        'httpPass': 'password',
        'signatureKey': 'ad3d581ca230e2b7059c545e5a',
        'enabled': true,
        'logs': 'Failed to connect to remote server.',
        'attempts': 10,
      };

      when(client.call(
        HttpMethod.put,
      )).thenAnswer((_) async => Response(data: data));

      final response = await webhooks.update(
        webhookId: '<WEBHOOK_ID>',
        name: '<NAME>',
        url: '',
        events: [],
      );
      expect(response, isA<models.Webhook>());
    });

    test('test method delete()', () async {
      final data = '';

      when(client.call(
        HttpMethod.delete,
      )).thenAnswer((_) async => Response(data: data));

      final response = await webhooks.delete(
        webhookId: '<WEBHOOK_ID>',
      );
    });

    test('test method updateSignature()', () async {
      final Map<String, dynamic> data = {
        '\$id': '5e5ea5c16897e',
        '\$createdAt': '2020-10-15T06:38:00.000+00:00',
        '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
        'name': 'My Webhook',
        'url': 'https://example.com/webhook',
        'events': [],
        'security': true,
        'httpUser': 'username',
        'httpPass': 'password',
        'signatureKey': 'ad3d581ca230e2b7059c545e5a',
        'enabled': true,
        'logs': 'Failed to connect to remote server.',
        'attempts': 10,
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await webhooks.updateSignature(
        webhookId: '<WEBHOOK_ID>',
      );
      expect(response, isA<models.Webhook>());
    });
  });
}
