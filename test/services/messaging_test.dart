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
  group('Messaging test', () {
    late MockClient client;
    late Messaging messaging;

    setUp(() {
      client = MockClient();
      messaging = Messaging(client);
    });

    test('test method listMessages()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'messages': [],
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

      final response = await messaging.listMessages(
        queries: [],
        search: "<SEARCH>",
        total: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/messaging/messages",
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
      expect(response, isA<models.MessageList>());
    });

    test('test method createEmail()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'providerType': "email",
        'topics': [],
        'users': [],
        'targets': [],
        'deliveredTotal': 1,
        'data': <String, dynamic>{},
        'status': "processing",
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

      final response = await messaging.createEmail(
        messageId: "<MESSAGE_ID>",
        subject: "<SUBJECT>",
        content: "<CONTENT>",
        topics: [],
        users: [],
        targets: [],
        cc: [],
        bcc: [],
        attachments: [],
        draft: false,
        html: false,
        scheduledAt: "2020-10-15T06:38:00.000+00:00",
        replyToEmail: "email@example.com",
        replyToName: "<REPLY_TO_NAME>",
        emails: [],
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/messaging/messages/email",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "messageId": "<MESSAGE_ID>",
        "subject": "<SUBJECT>",
        "content": "<CONTENT>",
        "topics": isA<List>(),
        "users": isA<List>(),
        "targets": isA<List>(),
        "cc": isA<List>(),
        "bcc": isA<List>(),
        "attachments": isA<List>(),
        "draft": false,
        "html": false,
        "scheduledAt": "2020-10-15T06:38:00.000+00:00",
        "replyToEmail": "email@example.com",
        "replyToName": "<REPLY_TO_NAME>",
        "emails": isA<List>(),
      });
      expect(response, isA<models.Message>());
    });

    test('test method updateEmail()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'providerType': "email",
        'topics': [],
        'users': [],
        'targets': [],
        'deliveredTotal': 1,
        'data': <String, dynamic>{},
        'status': "processing",
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

      final response = await messaging.updateEmail(
        messageId: "<MESSAGE_ID>",
        topics: [],
        users: [],
        targets: [],
        subject: "<SUBJECT>",
        content: "<CONTENT>",
        draft: false,
        html: false,
        cc: [],
        bcc: [],
        scheduledAt: "2020-10-15T06:38:00.000+00:00",
        attachments: [],
        replyToEmail: "email@example.com",
        replyToName: "<REPLY_TO_NAME>",
        emails: [],
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/messaging/messages/email/%3CMESSAGE_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "topics": isA<List>(),
        "users": isA<List>(),
        "targets": isA<List>(),
        "subject": "<SUBJECT>",
        "content": "<CONTENT>",
        "draft": false,
        "html": false,
        "cc": isA<List>(),
        "bcc": isA<List>(),
        "scheduledAt": "2020-10-15T06:38:00.000+00:00",
        "attachments": isA<List>(),
        "replyToEmail": "email@example.com",
        "replyToName": "<REPLY_TO_NAME>",
        "emails": isA<List>(),
      });
      expect(response, isA<models.Message>());
    });

    test('test method createPush()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'providerType': "email",
        'topics': [],
        'users': [],
        'targets': [],
        'deliveredTotal': 1,
        'data': <String, dynamic>{},
        'status': "processing",
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

      final response = await messaging.createPush(
        messageId: "<MESSAGE_ID>",
        title: "<TITLE>",
        body: "<BODY>",
        topics: [],
        users: [],
        targets: [],
        data: {},
        action: "<ACTION>",
        image: "<ID1:ID2>",
        icon: "<ICON>",
        sound: "<SOUND>",
        color: "<COLOR>",
        tag: "<TAG>",
        badge: 1,
        draft: false,
        scheduledAt: "2020-10-15T06:38:00.000+00:00",
        contentAvailable: false,
        critical: false,
        priority: enums.MessagePriority.normal,
        channelId: "<CHANNEL_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/messaging/messages/push",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "messageId": "<MESSAGE_ID>",
        "title": "<TITLE>",
        "body": "<BODY>",
        "topics": isA<List>(),
        "users": isA<List>(),
        "targets": isA<List>(),
        "data": isA<Map>(),
        "action": "<ACTION>",
        "image": "<ID1:ID2>",
        "icon": "<ICON>",
        "sound": "<SOUND>",
        "color": "<COLOR>",
        "tag": "<TAG>",
        "badge": 1,
        "draft": false,
        "scheduledAt": "2020-10-15T06:38:00.000+00:00",
        "contentAvailable": false,
        "critical": false,
        "priority": enums.MessagePriority.normal.value,
        "channelId": "<CHANNEL_ID>",
      });
      expect(response, isA<models.Message>());
    });

    test('test method updatePush()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'providerType': "email",
        'topics': [],
        'users': [],
        'targets': [],
        'deliveredTotal': 1,
        'data': <String, dynamic>{},
        'status': "processing",
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

      final response = await messaging.updatePush(
        messageId: "<MESSAGE_ID>",
        topics: [],
        users: [],
        targets: [],
        title: "<TITLE>",
        body: "<BODY>",
        data: {},
        action: "<ACTION>",
        image: "<ID1:ID2>",
        icon: "<ICON>",
        sound: "<SOUND>",
        color: "<COLOR>",
        tag: "<TAG>",
        badge: 1,
        draft: false,
        scheduledAt: "2020-10-15T06:38:00.000+00:00",
        contentAvailable: false,
        critical: false,
        priority: enums.MessagePriority.normal,
        channelId: "<CHANNEL_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/messaging/messages/push/%3CMESSAGE_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "topics": isA<List>(),
        "users": isA<List>(),
        "targets": isA<List>(),
        "title": "<TITLE>",
        "body": "<BODY>",
        "data": isA<Map>(),
        "action": "<ACTION>",
        "image": "<ID1:ID2>",
        "icon": "<ICON>",
        "sound": "<SOUND>",
        "color": "<COLOR>",
        "tag": "<TAG>",
        "badge": 1,
        "draft": false,
        "scheduledAt": "2020-10-15T06:38:00.000+00:00",
        "contentAvailable": false,
        "critical": false,
        "priority": enums.MessagePriority.normal.value,
        "channelId": "<CHANNEL_ID>",
      });
      expect(response, isA<models.Message>());
    });

    test('test method createSms()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'providerType': "email",
        'topics': [],
        'users': [],
        'targets': [],
        'deliveredTotal': 1,
        'data': <String, dynamic>{},
        'status': "processing",
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

      final response = await messaging.createSms(
        messageId: "<MESSAGE_ID>",
        content: "<CONTENT>",
        topics: [],
        users: [],
        targets: [],
        draft: false,
        scheduledAt: "2020-10-15T06:38:00.000+00:00",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/messaging/messages/sms",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "messageId": "<MESSAGE_ID>",
        "content": "<CONTENT>",
        "topics": isA<List>(),
        "users": isA<List>(),
        "targets": isA<List>(),
        "draft": false,
        "scheduledAt": "2020-10-15T06:38:00.000+00:00",
      });
      expect(response, isA<models.Message>());
    });

    test('test method createSMS()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'providerType': "email",
        'topics': [],
        'users': [],
        'targets': [],
        'deliveredTotal': 1,
        'data': <String, dynamic>{},
        'status': "processing",
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

      final response = await messaging.createSMS(
        messageId: "<MESSAGE_ID>",
        content: "<CONTENT>",
        topics: [],
        users: [],
        targets: [],
        draft: false,
        scheduledAt: "2020-10-15T06:38:00.000+00:00",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/messaging/messages/sms",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "messageId": "<MESSAGE_ID>",
        "content": "<CONTENT>",
        "topics": isA<List>(),
        "users": isA<List>(),
        "targets": isA<List>(),
        "draft": false,
        "scheduledAt": "2020-10-15T06:38:00.000+00:00",
      });
      expect(response, isA<models.Message>());
    });

    test('test method updateSms()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'providerType': "email",
        'topics': [],
        'users': [],
        'targets': [],
        'deliveredTotal': 1,
        'data': <String, dynamic>{},
        'status': "processing",
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

      final response = await messaging.updateSms(
        messageId: "<MESSAGE_ID>",
        topics: [],
        users: [],
        targets: [],
        content: "<CONTENT>",
        draft: false,
        scheduledAt: "2020-10-15T06:38:00.000+00:00",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/messaging/messages/sms/%3CMESSAGE_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "topics": isA<List>(),
        "users": isA<List>(),
        "targets": isA<List>(),
        "content": "<CONTENT>",
        "draft": false,
        "scheduledAt": "2020-10-15T06:38:00.000+00:00",
      });
      expect(response, isA<models.Message>());
    });

    test('test method updateSMS()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'providerType': "email",
        'topics': [],
        'users': [],
        'targets': [],
        'deliveredTotal': 1,
        'data': <String, dynamic>{},
        'status': "processing",
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

      final response = await messaging.updateSMS(
        messageId: "<MESSAGE_ID>",
        topics: [],
        users: [],
        targets: [],
        content: "<CONTENT>",
        draft: false,
        scheduledAt: "2020-10-15T06:38:00.000+00:00",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/messaging/messages/sms/%3CMESSAGE_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "topics": isA<List>(),
        "users": isA<List>(),
        "targets": isA<List>(),
        "content": "<CONTENT>",
        "draft": false,
        "scheduledAt": "2020-10-15T06:38:00.000+00:00",
      });
      expect(response, isA<models.Message>());
    });

    test('test method getMessage()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'providerType': "email",
        'topics': [],
        'users': [],
        'targets': [],
        'deliveredTotal': 1,
        'data': <String, dynamic>{},
        'status': "processing",
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

      final response = await messaging.getMessage(
        messageId: "<MESSAGE_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/messaging/messages/%3CMESSAGE_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.Message>());
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

      final response = await messaging.delete(
        messageId: "<MESSAGE_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.delete,
          path: "/messaging/messages/%3CMESSAGE_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
    });

    test('test method listTargets()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'targets': [],
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

      final response = await messaging.listTargets(
        messageId: "<MESSAGE_ID>",
        queries: [],
        total: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/messaging/messages/%3CMESSAGE_ID%3E/targets",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "queries": isA<List>(),
        "total": false,
      });
      expect(response, isA<models.TargetList>());
    });

    test('test method listProviders()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'providers': [],
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

      final response = await messaging.listProviders(
        queries: [],
        search: "<SEARCH>",
        total: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/messaging/providers",
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
      expect(response, isA<models.ProviderList>());
    });

    test('test method createApnsProvider()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Mailgun",
        'provider': "mailgun",
        'enabled': true,
        'type': "sms",
        'credentials': <String, dynamic>{},
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

      final response = await messaging.createApnsProvider(
        providerId: "<PROVIDER_ID>",
        name: "<NAME>",
        authKey: "<AUTH_KEY>",
        authKeyId: "<AUTH_KEY_ID>",
        teamId: "<TEAM_ID>",
        bundleId: "<BUNDLE_ID>",
        sandbox: false,
        enabled: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/messaging/providers/apns",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "providerId": "<PROVIDER_ID>",
        "name": "<NAME>",
        "authKey": "<AUTH_KEY>",
        "authKeyId": "<AUTH_KEY_ID>",
        "teamId": "<TEAM_ID>",
        "bundleId": "<BUNDLE_ID>",
        "sandbox": false,
        "enabled": false,
      });
      expect(response, isA<models.Provider>());
    });

    test('test method createAPNSProvider()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Mailgun",
        'provider': "mailgun",
        'enabled': true,
        'type': "sms",
        'credentials': <String, dynamic>{},
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

      final response = await messaging.createAPNSProvider(
        providerId: "<PROVIDER_ID>",
        name: "<NAME>",
        authKey: "<AUTH_KEY>",
        authKeyId: "<AUTH_KEY_ID>",
        teamId: "<TEAM_ID>",
        bundleId: "<BUNDLE_ID>",
        sandbox: false,
        enabled: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/messaging/providers/apns",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "providerId": "<PROVIDER_ID>",
        "name": "<NAME>",
        "authKey": "<AUTH_KEY>",
        "authKeyId": "<AUTH_KEY_ID>",
        "teamId": "<TEAM_ID>",
        "bundleId": "<BUNDLE_ID>",
        "sandbox": false,
        "enabled": false,
      });
      expect(response, isA<models.Provider>());
    });

    test('test method updateApnsProvider()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Mailgun",
        'provider': "mailgun",
        'enabled': true,
        'type': "sms",
        'credentials': <String, dynamic>{},
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

      final response = await messaging.updateApnsProvider(
        providerId: "<PROVIDER_ID>",
        name: "<NAME>",
        enabled: false,
        authKey: "<AUTH_KEY>",
        authKeyId: "<AUTH_KEY_ID>",
        teamId: "<TEAM_ID>",
        bundleId: "<BUNDLE_ID>",
        sandbox: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/messaging/providers/apns/%3CPROVIDER_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "<NAME>",
        "enabled": false,
        "authKey": "<AUTH_KEY>",
        "authKeyId": "<AUTH_KEY_ID>",
        "teamId": "<TEAM_ID>",
        "bundleId": "<BUNDLE_ID>",
        "sandbox": false,
      });
      expect(response, isA<models.Provider>());
    });

    test('test method updateAPNSProvider()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Mailgun",
        'provider': "mailgun",
        'enabled': true,
        'type': "sms",
        'credentials': <String, dynamic>{},
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

      final response = await messaging.updateAPNSProvider(
        providerId: "<PROVIDER_ID>",
        name: "<NAME>",
        enabled: false,
        authKey: "<AUTH_KEY>",
        authKeyId: "<AUTH_KEY_ID>",
        teamId: "<TEAM_ID>",
        bundleId: "<BUNDLE_ID>",
        sandbox: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/messaging/providers/apns/%3CPROVIDER_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "<NAME>",
        "enabled": false,
        "authKey": "<AUTH_KEY>",
        "authKeyId": "<AUTH_KEY_ID>",
        "teamId": "<TEAM_ID>",
        "bundleId": "<BUNDLE_ID>",
        "sandbox": false,
      });
      expect(response, isA<models.Provider>());
    });

    test('test method createAppwriteProvider()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Mailgun",
        'provider': "mailgun",
        'enabled': true,
        'type': "sms",
        'credentials': <String, dynamic>{},
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

      final response = await messaging.createAppwriteProvider(
        providerId: "<PROVIDER_ID>",
        name: "<NAME>",
        enabled: false,
        qos: 1,
        expiry: 1,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/messaging/providers/appwrite",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "providerId": "<PROVIDER_ID>",
        "name": "<NAME>",
        "enabled": false,
        "qos": 1,
        "expiry": 1,
      });
      expect(response, isA<models.Provider>());
    });

    test('test method updateAppwriteProvider()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Mailgun",
        'provider': "mailgun",
        'enabled': true,
        'type': "sms",
        'credentials': <String, dynamic>{},
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

      final response = await messaging.updateAppwriteProvider(
        providerId: "<PROVIDER_ID>",
        name: "<NAME>",
        enabled: false,
        qos: 1,
        expiry: 1,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/messaging/providers/appwrite/%3CPROVIDER_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "<NAME>",
        "enabled": false,
        "qos": 1,
        "expiry": 1,
      });
      expect(response, isA<models.Provider>());
    });

    test('test method createFcmProvider()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Mailgun",
        'provider': "mailgun",
        'enabled': true,
        'type': "sms",
        'credentials': <String, dynamic>{},
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

      final response = await messaging.createFcmProvider(
        providerId: "<PROVIDER_ID>",
        name: "<NAME>",
        serviceAccountJSON: {},
        enabled: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/messaging/providers/fcm",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "providerId": "<PROVIDER_ID>",
        "name": "<NAME>",
        "serviceAccountJSON": isA<Map>(),
        "enabled": false,
      });
      expect(response, isA<models.Provider>());
    });

    test('test method createFCMProvider()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Mailgun",
        'provider': "mailgun",
        'enabled': true,
        'type': "sms",
        'credentials': <String, dynamic>{},
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

      final response = await messaging.createFCMProvider(
        providerId: "<PROVIDER_ID>",
        name: "<NAME>",
        serviceAccountJSON: {},
        enabled: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/messaging/providers/fcm",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "providerId": "<PROVIDER_ID>",
        "name": "<NAME>",
        "serviceAccountJSON": isA<Map>(),
        "enabled": false,
      });
      expect(response, isA<models.Provider>());
    });

    test('test method updateFcmProvider()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Mailgun",
        'provider': "mailgun",
        'enabled': true,
        'type': "sms",
        'credentials': <String, dynamic>{},
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

      final response = await messaging.updateFcmProvider(
        providerId: "<PROVIDER_ID>",
        name: "<NAME>",
        enabled: false,
        serviceAccountJSON: {},
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/messaging/providers/fcm/%3CPROVIDER_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "<NAME>",
        "enabled": false,
        "serviceAccountJSON": isA<Map>(),
      });
      expect(response, isA<models.Provider>());
    });

    test('test method updateFCMProvider()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Mailgun",
        'provider': "mailgun",
        'enabled': true,
        'type': "sms",
        'credentials': <String, dynamic>{},
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

      final response = await messaging.updateFCMProvider(
        providerId: "<PROVIDER_ID>",
        name: "<NAME>",
        enabled: false,
        serviceAccountJSON: {},
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/messaging/providers/fcm/%3CPROVIDER_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "<NAME>",
        "enabled": false,
        "serviceAccountJSON": isA<Map>(),
      });
      expect(response, isA<models.Provider>());
    });

    test('test method createMailgunProvider()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Mailgun",
        'provider': "mailgun",
        'enabled': true,
        'type': "sms",
        'credentials': <String, dynamic>{},
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

      final response = await messaging.createMailgunProvider(
        providerId: "<PROVIDER_ID>",
        name: "<NAME>",
        apiKey: "<API_KEY>",
        domain: "example.com",
        isEuRegion: false,
        fromName: "<FROM_NAME>",
        fromEmail: "email@example.com",
        replyToName: "<REPLY_TO_NAME>",
        replyToEmail: "email@example.com",
        enabled: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/messaging/providers/mailgun",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "providerId": "<PROVIDER_ID>",
        "name": "<NAME>",
        "apiKey": "<API_KEY>",
        "domain": "example.com",
        "isEuRegion": false,
        "fromName": "<FROM_NAME>",
        "fromEmail": "email@example.com",
        "replyToName": "<REPLY_TO_NAME>",
        "replyToEmail": "email@example.com",
        "enabled": false,
      });
      expect(response, isA<models.Provider>());
    });

    test('test method updateMailgunProvider()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Mailgun",
        'provider': "mailgun",
        'enabled': true,
        'type': "sms",
        'credentials': <String, dynamic>{},
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

      final response = await messaging.updateMailgunProvider(
        providerId: "<PROVIDER_ID>",
        name: "<NAME>",
        apiKey: "<API_KEY>",
        domain: "example.com",
        isEuRegion: false,
        enabled: false,
        fromName: "<FROM_NAME>",
        fromEmail: "email@example.com",
        replyToName: "<REPLY_TO_NAME>",
        replyToEmail: "<REPLY_TO_EMAIL>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/messaging/providers/mailgun/%3CPROVIDER_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "<NAME>",
        "apiKey": "<API_KEY>",
        "domain": "example.com",
        "isEuRegion": false,
        "enabled": false,
        "fromName": "<FROM_NAME>",
        "fromEmail": "email@example.com",
        "replyToName": "<REPLY_TO_NAME>",
        "replyToEmail": "<REPLY_TO_EMAIL>",
      });
      expect(response, isA<models.Provider>());
    });

    test('test method createMsg91Provider()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Mailgun",
        'provider': "mailgun",
        'enabled': true,
        'type': "sms",
        'credentials': <String, dynamic>{},
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

      final response = await messaging.createMsg91Provider(
        providerId: "<PROVIDER_ID>",
        name: "<NAME>",
        templateId: "<TEMPLATE_ID>",
        senderId: "<SENDER_ID>",
        authKey: "<AUTH_KEY>",
        enabled: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/messaging/providers/msg91",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "providerId": "<PROVIDER_ID>",
        "name": "<NAME>",
        "templateId": "<TEMPLATE_ID>",
        "senderId": "<SENDER_ID>",
        "authKey": "<AUTH_KEY>",
        "enabled": false,
      });
      expect(response, isA<models.Provider>());
    });

    test('test method updateMsg91Provider()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Mailgun",
        'provider': "mailgun",
        'enabled': true,
        'type': "sms",
        'credentials': <String, dynamic>{},
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

      final response = await messaging.updateMsg91Provider(
        providerId: "<PROVIDER_ID>",
        name: "<NAME>",
        enabled: false,
        templateId: "<TEMPLATE_ID>",
        senderId: "<SENDER_ID>",
        authKey: "<AUTH_KEY>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/messaging/providers/msg91/%3CPROVIDER_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "<NAME>",
        "enabled": false,
        "templateId": "<TEMPLATE_ID>",
        "senderId": "<SENDER_ID>",
        "authKey": "<AUTH_KEY>",
      });
      expect(response, isA<models.Provider>());
    });

    test('test method createResendProvider()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Mailgun",
        'provider': "mailgun",
        'enabled': true,
        'type': "sms",
        'credentials': <String, dynamic>{},
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

      final response = await messaging.createResendProvider(
        providerId: "<PROVIDER_ID>",
        name: "<NAME>",
        apiKey: "<API_KEY>",
        fromName: "<FROM_NAME>",
        fromEmail: "email@example.com",
        replyToName: "<REPLY_TO_NAME>",
        replyToEmail: "email@example.com",
        enabled: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/messaging/providers/resend",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "providerId": "<PROVIDER_ID>",
        "name": "<NAME>",
        "apiKey": "<API_KEY>",
        "fromName": "<FROM_NAME>",
        "fromEmail": "email@example.com",
        "replyToName": "<REPLY_TO_NAME>",
        "replyToEmail": "email@example.com",
        "enabled": false,
      });
      expect(response, isA<models.Provider>());
    });

    test('test method updateResendProvider()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Mailgun",
        'provider': "mailgun",
        'enabled': true,
        'type': "sms",
        'credentials': <String, dynamic>{},
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

      final response = await messaging.updateResendProvider(
        providerId: "<PROVIDER_ID>",
        name: "<NAME>",
        enabled: false,
        apiKey: "<API_KEY>",
        fromName: "<FROM_NAME>",
        fromEmail: "email@example.com",
        replyToName: "<REPLY_TO_NAME>",
        replyToEmail: "<REPLY_TO_EMAIL>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/messaging/providers/resend/%3CPROVIDER_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "<NAME>",
        "enabled": false,
        "apiKey": "<API_KEY>",
        "fromName": "<FROM_NAME>",
        "fromEmail": "email@example.com",
        "replyToName": "<REPLY_TO_NAME>",
        "replyToEmail": "<REPLY_TO_EMAIL>",
      });
      expect(response, isA<models.Provider>());
    });

    test('test method createSendgridProvider()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Mailgun",
        'provider': "mailgun",
        'enabled': true,
        'type': "sms",
        'credentials': <String, dynamic>{},
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

      final response = await messaging.createSendgridProvider(
        providerId: "<PROVIDER_ID>",
        name: "<NAME>",
        apiKey: "<API_KEY>",
        fromName: "<FROM_NAME>",
        fromEmail: "email@example.com",
        replyToName: "<REPLY_TO_NAME>",
        replyToEmail: "email@example.com",
        enabled: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/messaging/providers/sendgrid",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "providerId": "<PROVIDER_ID>",
        "name": "<NAME>",
        "apiKey": "<API_KEY>",
        "fromName": "<FROM_NAME>",
        "fromEmail": "email@example.com",
        "replyToName": "<REPLY_TO_NAME>",
        "replyToEmail": "email@example.com",
        "enabled": false,
      });
      expect(response, isA<models.Provider>());
    });

    test('test method updateSendgridProvider()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Mailgun",
        'provider': "mailgun",
        'enabled': true,
        'type': "sms",
        'credentials': <String, dynamic>{},
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

      final response = await messaging.updateSendgridProvider(
        providerId: "<PROVIDER_ID>",
        name: "<NAME>",
        enabled: false,
        apiKey: "<API_KEY>",
        fromName: "<FROM_NAME>",
        fromEmail: "email@example.com",
        replyToName: "<REPLY_TO_NAME>",
        replyToEmail: "<REPLY_TO_EMAIL>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/messaging/providers/sendgrid/%3CPROVIDER_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "<NAME>",
        "enabled": false,
        "apiKey": "<API_KEY>",
        "fromName": "<FROM_NAME>",
        "fromEmail": "email@example.com",
        "replyToName": "<REPLY_TO_NAME>",
        "replyToEmail": "<REPLY_TO_EMAIL>",
      });
      expect(response, isA<models.Provider>());
    });

    test('test method createSesProvider()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Mailgun",
        'provider': "mailgun",
        'enabled': true,
        'type': "sms",
        'credentials': <String, dynamic>{},
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

      final response = await messaging.createSesProvider(
        providerId: "<PROVIDER_ID>",
        name: "<NAME>",
        accessKey: "<ACCESS_KEY>",
        secretKey: "<SECRET_KEY>",
        region: "<REGION>",
        fromName: "<FROM_NAME>",
        fromEmail: "email@example.com",
        replyToName: "<REPLY_TO_NAME>",
        replyToEmail: "email@example.com",
        enabled: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/messaging/providers/ses",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "providerId": "<PROVIDER_ID>",
        "name": "<NAME>",
        "accessKey": "<ACCESS_KEY>",
        "secretKey": "<SECRET_KEY>",
        "region": "<REGION>",
        "fromName": "<FROM_NAME>",
        "fromEmail": "email@example.com",
        "replyToName": "<REPLY_TO_NAME>",
        "replyToEmail": "email@example.com",
        "enabled": false,
      });
      expect(response, isA<models.Provider>());
    });

    test('test method updateSesProvider()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Mailgun",
        'provider': "mailgun",
        'enabled': true,
        'type': "sms",
        'credentials': <String, dynamic>{},
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

      final response = await messaging.updateSesProvider(
        providerId: "<PROVIDER_ID>",
        name: "<NAME>",
        enabled: false,
        accessKey: "<ACCESS_KEY>",
        secretKey: "<SECRET_KEY>",
        region: "<REGION>",
        fromName: "<FROM_NAME>",
        fromEmail: "email@example.com",
        replyToName: "<REPLY_TO_NAME>",
        replyToEmail: "<REPLY_TO_EMAIL>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/messaging/providers/ses/%3CPROVIDER_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "<NAME>",
        "enabled": false,
        "accessKey": "<ACCESS_KEY>",
        "secretKey": "<SECRET_KEY>",
        "region": "<REGION>",
        "fromName": "<FROM_NAME>",
        "fromEmail": "email@example.com",
        "replyToName": "<REPLY_TO_NAME>",
        "replyToEmail": "<REPLY_TO_EMAIL>",
      });
      expect(response, isA<models.Provider>());
    });

    test('test method createSmtpProvider()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Mailgun",
        'provider': "mailgun",
        'enabled': true,
        'type': "sms",
        'credentials': <String, dynamic>{},
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

      final response = await messaging.createSmtpProvider(
        providerId: "<PROVIDER_ID>",
        name: "<NAME>",
        host: "<HOST>",
        port: 1,
        username: "<USERNAME>",
        password: "password",
        encryption: enums.SmtpEncryption.none,
        autoTLS: false,
        mailer: "<MAILER>",
        fromName: "<FROM_NAME>",
        fromEmail: "email@example.com",
        replyToName: "<REPLY_TO_NAME>",
        replyToEmail: "email@example.com",
        enabled: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/messaging/providers/smtp",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "providerId": "<PROVIDER_ID>",
        "name": "<NAME>",
        "host": "<HOST>",
        "port": 1,
        "username": "<USERNAME>",
        "password": "password",
        "encryption": enums.SmtpEncryption.none.value,
        "autoTLS": false,
        "mailer": "<MAILER>",
        "fromName": "<FROM_NAME>",
        "fromEmail": "email@example.com",
        "replyToName": "<REPLY_TO_NAME>",
        "replyToEmail": "email@example.com",
        "enabled": false,
      });
      expect(response, isA<models.Provider>());
    });

    test('test method createSMTPProvider()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Mailgun",
        'provider': "mailgun",
        'enabled': true,
        'type': "sms",
        'credentials': <String, dynamic>{},
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

      final response = await messaging.createSMTPProvider(
        providerId: "<PROVIDER_ID>",
        name: "<NAME>",
        host: "<HOST>",
        port: 1,
        username: "<USERNAME>",
        password: "password",
        encryption: enums.SmtpEncryption.none,
        autoTLS: false,
        mailer: "<MAILER>",
        fromName: "<FROM_NAME>",
        fromEmail: "email@example.com",
        replyToName: "<REPLY_TO_NAME>",
        replyToEmail: "email@example.com",
        enabled: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/messaging/providers/smtp",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "providerId": "<PROVIDER_ID>",
        "name": "<NAME>",
        "host": "<HOST>",
        "port": 1,
        "username": "<USERNAME>",
        "password": "password",
        "encryption": enums.SmtpEncryption.none.value,
        "autoTLS": false,
        "mailer": "<MAILER>",
        "fromName": "<FROM_NAME>",
        "fromEmail": "email@example.com",
        "replyToName": "<REPLY_TO_NAME>",
        "replyToEmail": "email@example.com",
        "enabled": false,
      });
      expect(response, isA<models.Provider>());
    });

    test('test method updateSmtpProvider()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Mailgun",
        'provider': "mailgun",
        'enabled': true,
        'type': "sms",
        'credentials': <String, dynamic>{},
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

      final response = await messaging.updateSmtpProvider(
        providerId: "<PROVIDER_ID>",
        name: "<NAME>",
        host: "<HOST>",
        port: 1,
        username: "<USERNAME>",
        password: "password",
        encryption: enums.SmtpEncryption.none,
        autoTLS: false,
        mailer: "<MAILER>",
        fromName: "<FROM_NAME>",
        fromEmail: "email@example.com",
        replyToName: "<REPLY_TO_NAME>",
        replyToEmail: "<REPLY_TO_EMAIL>",
        enabled: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/messaging/providers/smtp/%3CPROVIDER_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "<NAME>",
        "host": "<HOST>",
        "port": 1,
        "username": "<USERNAME>",
        "password": "password",
        "encryption": enums.SmtpEncryption.none.value,
        "autoTLS": false,
        "mailer": "<MAILER>",
        "fromName": "<FROM_NAME>",
        "fromEmail": "email@example.com",
        "replyToName": "<REPLY_TO_NAME>",
        "replyToEmail": "<REPLY_TO_EMAIL>",
        "enabled": false,
      });
      expect(response, isA<models.Provider>());
    });

    test('test method updateSMTPProvider()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Mailgun",
        'provider': "mailgun",
        'enabled': true,
        'type': "sms",
        'credentials': <String, dynamic>{},
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

      final response = await messaging.updateSMTPProvider(
        providerId: "<PROVIDER_ID>",
        name: "<NAME>",
        host: "<HOST>",
        port: 1,
        username: "<USERNAME>",
        password: "password",
        encryption: enums.SmtpEncryption.none,
        autoTLS: false,
        mailer: "<MAILER>",
        fromName: "<FROM_NAME>",
        fromEmail: "email@example.com",
        replyToName: "<REPLY_TO_NAME>",
        replyToEmail: "<REPLY_TO_EMAIL>",
        enabled: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/messaging/providers/smtp/%3CPROVIDER_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "<NAME>",
        "host": "<HOST>",
        "port": 1,
        "username": "<USERNAME>",
        "password": "password",
        "encryption": enums.SmtpEncryption.none.value,
        "autoTLS": false,
        "mailer": "<MAILER>",
        "fromName": "<FROM_NAME>",
        "fromEmail": "email@example.com",
        "replyToName": "<REPLY_TO_NAME>",
        "replyToEmail": "<REPLY_TO_EMAIL>",
        "enabled": false,
      });
      expect(response, isA<models.Provider>());
    });

    test('test method createTelesignProvider()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Mailgun",
        'provider': "mailgun",
        'enabled': true,
        'type': "sms",
        'credentials': <String, dynamic>{},
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

      final response = await messaging.createTelesignProvider(
        providerId: "<PROVIDER_ID>",
        name: "<NAME>",
        from: "+12065550100",
        customerId: "<CUSTOMER_ID>",
        apiKey: "<API_KEY>",
        enabled: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/messaging/providers/telesign",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "providerId": "<PROVIDER_ID>",
        "name": "<NAME>",
        "from": "+12065550100",
        "customerId": "<CUSTOMER_ID>",
        "apiKey": "<API_KEY>",
        "enabled": false,
      });
      expect(response, isA<models.Provider>());
    });

    test('test method updateTelesignProvider()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Mailgun",
        'provider': "mailgun",
        'enabled': true,
        'type': "sms",
        'credentials': <String, dynamic>{},
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

      final response = await messaging.updateTelesignProvider(
        providerId: "<PROVIDER_ID>",
        name: "<NAME>",
        enabled: false,
        customerId: "<CUSTOMER_ID>",
        apiKey: "<API_KEY>",
        from: "<FROM>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/messaging/providers/telesign/%3CPROVIDER_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "<NAME>",
        "enabled": false,
        "customerId": "<CUSTOMER_ID>",
        "apiKey": "<API_KEY>",
        "from": "<FROM>",
      });
      expect(response, isA<models.Provider>());
    });

    test('test method createTextmagicProvider()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Mailgun",
        'provider': "mailgun",
        'enabled': true,
        'type': "sms",
        'credentials': <String, dynamic>{},
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

      final response = await messaging.createTextmagicProvider(
        providerId: "<PROVIDER_ID>",
        name: "<NAME>",
        from: "+12065550100",
        username: "<USERNAME>",
        apiKey: "<API_KEY>",
        enabled: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/messaging/providers/textmagic",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "providerId": "<PROVIDER_ID>",
        "name": "<NAME>",
        "from": "+12065550100",
        "username": "<USERNAME>",
        "apiKey": "<API_KEY>",
        "enabled": false,
      });
      expect(response, isA<models.Provider>());
    });

    test('test method updateTextmagicProvider()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Mailgun",
        'provider': "mailgun",
        'enabled': true,
        'type': "sms",
        'credentials': <String, dynamic>{},
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

      final response = await messaging.updateTextmagicProvider(
        providerId: "<PROVIDER_ID>",
        name: "<NAME>",
        enabled: false,
        username: "<USERNAME>",
        apiKey: "<API_KEY>",
        from: "<FROM>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/messaging/providers/textmagic/%3CPROVIDER_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "<NAME>",
        "enabled": false,
        "username": "<USERNAME>",
        "apiKey": "<API_KEY>",
        "from": "<FROM>",
      });
      expect(response, isA<models.Provider>());
    });

    test('test method createTwilioProvider()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Mailgun",
        'provider': "mailgun",
        'enabled': true,
        'type': "sms",
        'credentials': <String, dynamic>{},
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

      final response = await messaging.createTwilioProvider(
        providerId: "<PROVIDER_ID>",
        name: "<NAME>",
        from: "<FROM>",
        accountSid: "<ACCOUNT_SID>",
        authToken: "<AUTH_TOKEN>",
        enabled: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/messaging/providers/twilio",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "providerId": "<PROVIDER_ID>",
        "name": "<NAME>",
        "from": "<FROM>",
        "accountSid": "<ACCOUNT_SID>",
        "authToken": "<AUTH_TOKEN>",
        "enabled": false,
      });
      expect(response, isA<models.Provider>());
    });

    test('test method updateTwilioProvider()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Mailgun",
        'provider': "mailgun",
        'enabled': true,
        'type': "sms",
        'credentials': <String, dynamic>{},
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

      final response = await messaging.updateTwilioProvider(
        providerId: "<PROVIDER_ID>",
        name: "<NAME>",
        enabled: false,
        accountSid: "<ACCOUNT_SID>",
        authToken: "<AUTH_TOKEN>",
        from: "<FROM>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/messaging/providers/twilio/%3CPROVIDER_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "<NAME>",
        "enabled": false,
        "accountSid": "<ACCOUNT_SID>",
        "authToken": "<AUTH_TOKEN>",
        "from": "<FROM>",
      });
      expect(response, isA<models.Provider>());
    });

    test('test method createVonageProvider()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Mailgun",
        'provider': "mailgun",
        'enabled': true,
        'type': "sms",
        'credentials': <String, dynamic>{},
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

      final response = await messaging.createVonageProvider(
        providerId: "<PROVIDER_ID>",
        name: "<NAME>",
        from: "+12065550100",
        apiKey: "<API_KEY>",
        apiSecret: "<API_SECRET>",
        enabled: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/messaging/providers/vonage",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "providerId": "<PROVIDER_ID>",
        "name": "<NAME>",
        "from": "+12065550100",
        "apiKey": "<API_KEY>",
        "apiSecret": "<API_SECRET>",
        "enabled": false,
      });
      expect(response, isA<models.Provider>());
    });

    test('test method updateVonageProvider()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Mailgun",
        'provider': "mailgun",
        'enabled': true,
        'type': "sms",
        'credentials': <String, dynamic>{},
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

      final response = await messaging.updateVonageProvider(
        providerId: "<PROVIDER_ID>",
        name: "<NAME>",
        enabled: false,
        apiKey: "<API_KEY>",
        apiSecret: "<API_SECRET>",
        from: "<FROM>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/messaging/providers/vonage/%3CPROVIDER_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "<NAME>",
        "enabled": false,
        "apiKey": "<API_KEY>",
        "apiSecret": "<API_SECRET>",
        "from": "<FROM>",
      });
      expect(response, isA<models.Provider>());
    });

    test('test method getProvider()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Mailgun",
        'provider': "mailgun",
        'enabled': true,
        'type': "sms",
        'credentials': <String, dynamic>{},
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

      final response = await messaging.getProvider(
        providerId: "<PROVIDER_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/messaging/providers/%3CPROVIDER_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.Provider>());
    });

    test('test method deleteProvider()', () async {
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

      final response = await messaging.deleteProvider(
        providerId: "<PROVIDER_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.delete,
          path: "/messaging/providers/%3CPROVIDER_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
    });

    test('test method listTopics()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'topics': [],
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

      final response = await messaging.listTopics(
        queries: [],
        search: "<SEARCH>",
        total: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/messaging/topics",
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
      expect(response, isA<models.TopicList>());
    });

    test('test method createTopic()', () async {
      final Map<String, dynamic> data = {
        '\$id': "259125845563242502",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "events",
        'description': "Order status updates sent to customers.",
        'emailTotal': 100,
        'smsTotal': 100,
        'pushTotal': 100,
        'subscribe': [],
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

      final response = await messaging.createTopic(
        topicId: "<TOPIC_ID>",
        name: "<NAME>",
        subscribe: [],
        qos: 1,
        expiry: 1,
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/messaging/topics",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "topicId": "<TOPIC_ID>",
        "name": "<NAME>",
        "subscribe": isA<List>(),
        "qos": 1,
        "expiry": 1,
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.Topic>());
    });

    test('test method getTopic()', () async {
      final Map<String, dynamic> data = {
        '\$id': "259125845563242502",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "events",
        'description': "Order status updates sent to customers.",
        'emailTotal': 100,
        'smsTotal': 100,
        'pushTotal': 100,
        'subscribe': [],
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

      final response = await messaging.getTopic(
        topicId: "<TOPIC_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/messaging/topics/%3CTOPIC_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.Topic>());
    });

    test('test method updateTopic()', () async {
      final Map<String, dynamic> data = {
        '\$id': "259125845563242502",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "events",
        'description': "Order status updates sent to customers.",
        'emailTotal': 100,
        'smsTotal': 100,
        'pushTotal': 100,
        'subscribe': [],
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

      final response = await messaging.updateTopic(
        topicId: "<TOPIC_ID>",
        name: "<NAME>",
        subscribe: [],
        qos: 1,
        expiry: 1,
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/messaging/topics/%3CTOPIC_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "<NAME>",
        "subscribe": isA<List>(),
        "qos": 1,
        "expiry": 1,
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.Topic>());
    });

    test('test method deleteTopic()', () async {
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

      final response = await messaging.deleteTopic(
        topicId: "<TOPIC_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.delete,
          path: "/messaging/topics/%3CTOPIC_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
    });

    test('test method listSubscribers()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'subscribers': [],
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

      final response = await messaging.listSubscribers(
        topicId: "<TOPIC_ID>",
        queries: [],
        search: "<SEARCH>",
        total: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/messaging/topics/%3CTOPIC_ID%3E/subscribers",
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
      expect(response, isA<models.SubscriberList>());
    });

    test('test method createSubscriber()', () async {
      final Map<String, dynamic> data = {
        '\$id': "259125845563242502",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'targetId': "259125845563242502",
        'target': <String, dynamic>{
          '\$id': "259125845563242502",
          '\$createdAt': "2020-10-15T06:38:00.000+00:00",
          '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
          'name': "Apple iPhone 12",
          'userId': "259125845563242502",
          'providerType': "email",
          'identifier': "token",
          'expired': true,
        },
        'userId': "5e5ea5c16897e",
        'userName': "Aegon Targaryen",
        'topicId': "259125845563242502",
        'providerType': "email",
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

      final response = await messaging.createSubscriber(
        topicId: "<TOPIC_ID>",
        subscriberId: "<SUBSCRIBER_ID>",
        targetId: "<TARGET_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/messaging/topics/%3CTOPIC_ID%3E/subscribers",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "subscriberId": "<SUBSCRIBER_ID>",
        "targetId": "<TARGET_ID>",
      });
      expect(response, isA<models.Subscriber>());
    });

    test('test method getSubscriber()', () async {
      final Map<String, dynamic> data = {
        '\$id': "259125845563242502",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'targetId': "259125845563242502",
        'target': <String, dynamic>{
          '\$id': "259125845563242502",
          '\$createdAt': "2020-10-15T06:38:00.000+00:00",
          '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
          'name': "Apple iPhone 12",
          'userId': "259125845563242502",
          'providerType': "email",
          'identifier': "token",
          'expired': true,
        },
        'userId': "5e5ea5c16897e",
        'userName': "Aegon Targaryen",
        'topicId': "259125845563242502",
        'providerType': "email",
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

      final response = await messaging.getSubscriber(
        topicId: "<TOPIC_ID>",
        subscriberId: "<SUBSCRIBER_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/messaging/topics/%3CTOPIC_ID%3E/subscribers/%3CSUBSCRIBER_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.Subscriber>());
    });

    test('test method deleteSubscriber()', () async {
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

      final response = await messaging.deleteSubscriber(
        topicId: "<TOPIC_ID>",
        subscriberId: "<SUBSCRIBER_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.delete,
          path: "/messaging/topics/%3CTOPIC_ID%3E/subscribers/%3CSUBSCRIBER_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
    });
  });
}
