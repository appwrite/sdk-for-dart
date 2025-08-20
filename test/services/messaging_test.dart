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
                'messages': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.listMessages(
            );
            expect(response, isA<models.MessageList>());

        });

        test('test method createEmail()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'providerType': 'email',
                'topics': [],
                'users': [],
                'targets': [],
                'deliveredTotal': 1,
                'data': <String, dynamic>{},
                'status': 'Message status can be one of the following: draft, processing, scheduled, sent, or failed.',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.createEmail(
                messageId: '<MESSAGE_ID>',
                subject: '<SUBJECT>',
                content: '<CONTENT>',
            );
            expect(response, isA<models.Message>());

        });

        test('test method updateEmail()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'providerType': 'email',
                'topics': [],
                'users': [],
                'targets': [],
                'deliveredTotal': 1,
                'data': <String, dynamic>{},
                'status': 'Message status can be one of the following: draft, processing, scheduled, sent, or failed.',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.updateEmail(
                messageId: '<MESSAGE_ID>',
            );
            expect(response, isA<models.Message>());

        });

        test('test method createPush()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'providerType': 'email',
                'topics': [],
                'users': [],
                'targets': [],
                'deliveredTotal': 1,
                'data': <String, dynamic>{},
                'status': 'Message status can be one of the following: draft, processing, scheduled, sent, or failed.',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.createPush(
                messageId: '<MESSAGE_ID>',
            );
            expect(response, isA<models.Message>());

        });

        test('test method updatePush()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'providerType': 'email',
                'topics': [],
                'users': [],
                'targets': [],
                'deliveredTotal': 1,
                'data': <String, dynamic>{},
                'status': 'Message status can be one of the following: draft, processing, scheduled, sent, or failed.',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.updatePush(
                messageId: '<MESSAGE_ID>',
            );
            expect(response, isA<models.Message>());

        });

        test('test method createSms()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'providerType': 'email',
                'topics': [],
                'users': [],
                'targets': [],
                'deliveredTotal': 1,
                'data': <String, dynamic>{},
                'status': 'Message status can be one of the following: draft, processing, scheduled, sent, or failed.',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.createSms(
                messageId: '<MESSAGE_ID>',
                content: '<CONTENT>',
            );
            expect(response, isA<models.Message>());

        });

        test('test method updateSms()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'providerType': 'email',
                'topics': [],
                'users': [],
                'targets': [],
                'deliveredTotal': 1,
                'data': <String, dynamic>{},
                'status': 'Message status can be one of the following: draft, processing, scheduled, sent, or failed.',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.updateSms(
                messageId: '<MESSAGE_ID>',
            );
            expect(response, isA<models.Message>());

        });

        test('test method getMessage()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'providerType': 'email',
                'topics': [],
                'users': [],
                'targets': [],
                'deliveredTotal': 1,
                'data': <String, dynamic>{},
                'status': 'Message status can be one of the following: draft, processing, scheduled, sent, or failed.',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.getMessage(
                messageId: '<MESSAGE_ID>',
            );
            expect(response, isA<models.Message>());

        });

        test('test method delete()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.delete(
                messageId: '<MESSAGE_ID>',
            );
        });

        test('test method listMessageLogs()', () async {
            final Map<String, dynamic> data = {
                'total': 5,
                'logs': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.listMessageLogs(
                messageId: '<MESSAGE_ID>',
            );
            expect(response, isA<models.LogList>());

        });

        test('test method listTargets()', () async {
            final Map<String, dynamic> data = {
                'total': 5,
                'targets': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.listTargets(
                messageId: '<MESSAGE_ID>',
            );
            expect(response, isA<models.TargetList>());

        });

        test('test method listProviders()', () async {
            final Map<String, dynamic> data = {
                'total': 5,
                'providers': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.listProviders(
            );
            expect(response, isA<models.ProviderList>());

        });

        test('test method createApnsProvider()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'Mailgun',
                'provider': 'mailgun',
                'enabled': true,
                'type': 'sms',
                'credentials': <String, dynamic>{},};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.createApnsProvider(
                providerId: '<PROVIDER_ID>',
                name: '<NAME>',
            );
            expect(response, isA<models.Provider>());

        });

        test('test method updateApnsProvider()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'Mailgun',
                'provider': 'mailgun',
                'enabled': true,
                'type': 'sms',
                'credentials': <String, dynamic>{},};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.updateApnsProvider(
                providerId: '<PROVIDER_ID>',
            );
            expect(response, isA<models.Provider>());

        });

        test('test method createFcmProvider()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'Mailgun',
                'provider': 'mailgun',
                'enabled': true,
                'type': 'sms',
                'credentials': <String, dynamic>{},};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.createFcmProvider(
                providerId: '<PROVIDER_ID>',
                name: '<NAME>',
            );
            expect(response, isA<models.Provider>());

        });

        test('test method updateFcmProvider()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'Mailgun',
                'provider': 'mailgun',
                'enabled': true,
                'type': 'sms',
                'credentials': <String, dynamic>{},};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.updateFcmProvider(
                providerId: '<PROVIDER_ID>',
            );
            expect(response, isA<models.Provider>());

        });

        test('test method createMailgunProvider()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'Mailgun',
                'provider': 'mailgun',
                'enabled': true,
                'type': 'sms',
                'credentials': <String, dynamic>{},};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.createMailgunProvider(
                providerId: '<PROVIDER_ID>',
                name: '<NAME>',
            );
            expect(response, isA<models.Provider>());

        });

        test('test method updateMailgunProvider()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'Mailgun',
                'provider': 'mailgun',
                'enabled': true,
                'type': 'sms',
                'credentials': <String, dynamic>{},};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.updateMailgunProvider(
                providerId: '<PROVIDER_ID>',
            );
            expect(response, isA<models.Provider>());

        });

        test('test method createMsg91Provider()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'Mailgun',
                'provider': 'mailgun',
                'enabled': true,
                'type': 'sms',
                'credentials': <String, dynamic>{},};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.createMsg91Provider(
                providerId: '<PROVIDER_ID>',
                name: '<NAME>',
            );
            expect(response, isA<models.Provider>());

        });

        test('test method updateMsg91Provider()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'Mailgun',
                'provider': 'mailgun',
                'enabled': true,
                'type': 'sms',
                'credentials': <String, dynamic>{},};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.updateMsg91Provider(
                providerId: '<PROVIDER_ID>',
            );
            expect(response, isA<models.Provider>());

        });

        test('test method createSendgridProvider()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'Mailgun',
                'provider': 'mailgun',
                'enabled': true,
                'type': 'sms',
                'credentials': <String, dynamic>{},};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.createSendgridProvider(
                providerId: '<PROVIDER_ID>',
                name: '<NAME>',
            );
            expect(response, isA<models.Provider>());

        });

        test('test method updateSendgridProvider()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'Mailgun',
                'provider': 'mailgun',
                'enabled': true,
                'type': 'sms',
                'credentials': <String, dynamic>{},};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.updateSendgridProvider(
                providerId: '<PROVIDER_ID>',
            );
            expect(response, isA<models.Provider>());

        });

        test('test method createSmtpProvider()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'Mailgun',
                'provider': 'mailgun',
                'enabled': true,
                'type': 'sms',
                'credentials': <String, dynamic>{},};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.createSmtpProvider(
                providerId: '<PROVIDER_ID>',
                name: '<NAME>',
                host: '<HOST>',
            );
            expect(response, isA<models.Provider>());

        });

        test('test method updateSmtpProvider()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'Mailgun',
                'provider': 'mailgun',
                'enabled': true,
                'type': 'sms',
                'credentials': <String, dynamic>{},};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.updateSmtpProvider(
                providerId: '<PROVIDER_ID>',
            );
            expect(response, isA<models.Provider>());

        });

        test('test method createTelesignProvider()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'Mailgun',
                'provider': 'mailgun',
                'enabled': true,
                'type': 'sms',
                'credentials': <String, dynamic>{},};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.createTelesignProvider(
                providerId: '<PROVIDER_ID>',
                name: '<NAME>',
            );
            expect(response, isA<models.Provider>());

        });

        test('test method updateTelesignProvider()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'Mailgun',
                'provider': 'mailgun',
                'enabled': true,
                'type': 'sms',
                'credentials': <String, dynamic>{},};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.updateTelesignProvider(
                providerId: '<PROVIDER_ID>',
            );
            expect(response, isA<models.Provider>());

        });

        test('test method createTextmagicProvider()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'Mailgun',
                'provider': 'mailgun',
                'enabled': true,
                'type': 'sms',
                'credentials': <String, dynamic>{},};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.createTextmagicProvider(
                providerId: '<PROVIDER_ID>',
                name: '<NAME>',
            );
            expect(response, isA<models.Provider>());

        });

        test('test method updateTextmagicProvider()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'Mailgun',
                'provider': 'mailgun',
                'enabled': true,
                'type': 'sms',
                'credentials': <String, dynamic>{},};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.updateTextmagicProvider(
                providerId: '<PROVIDER_ID>',
            );
            expect(response, isA<models.Provider>());

        });

        test('test method createTwilioProvider()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'Mailgun',
                'provider': 'mailgun',
                'enabled': true,
                'type': 'sms',
                'credentials': <String, dynamic>{},};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.createTwilioProvider(
                providerId: '<PROVIDER_ID>',
                name: '<NAME>',
            );
            expect(response, isA<models.Provider>());

        });

        test('test method updateTwilioProvider()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'Mailgun',
                'provider': 'mailgun',
                'enabled': true,
                'type': 'sms',
                'credentials': <String, dynamic>{},};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.updateTwilioProvider(
                providerId: '<PROVIDER_ID>',
            );
            expect(response, isA<models.Provider>());

        });

        test('test method createVonageProvider()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'Mailgun',
                'provider': 'mailgun',
                'enabled': true,
                'type': 'sms',
                'credentials': <String, dynamic>{},};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.createVonageProvider(
                providerId: '<PROVIDER_ID>',
                name: '<NAME>',
            );
            expect(response, isA<models.Provider>());

        });

        test('test method updateVonageProvider()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'Mailgun',
                'provider': 'mailgun',
                'enabled': true,
                'type': 'sms',
                'credentials': <String, dynamic>{},};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.updateVonageProvider(
                providerId: '<PROVIDER_ID>',
            );
            expect(response, isA<models.Provider>());

        });

        test('test method getProvider()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'Mailgun',
                'provider': 'mailgun',
                'enabled': true,
                'type': 'sms',
                'credentials': <String, dynamic>{},};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.getProvider(
                providerId: '<PROVIDER_ID>',
            );
            expect(response, isA<models.Provider>());

        });

        test('test method deleteProvider()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.deleteProvider(
                providerId: '<PROVIDER_ID>',
            );
        });

        test('test method listProviderLogs()', () async {
            final Map<String, dynamic> data = {
                'total': 5,
                'logs': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.listProviderLogs(
                providerId: '<PROVIDER_ID>',
            );
            expect(response, isA<models.LogList>());

        });

        test('test method listSubscriberLogs()', () async {
            final Map<String, dynamic> data = {
                'total': 5,
                'logs': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.listSubscriberLogs(
                subscriberId: '<SUBSCRIBER_ID>',
            );
            expect(response, isA<models.LogList>());

        });

        test('test method listTopics()', () async {
            final Map<String, dynamic> data = {
                'total': 5,
                'topics': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.listTopics(
            );
            expect(response, isA<models.TopicList>());

        });

        test('test method createTopic()', () async {
            final Map<String, dynamic> data = {
                '\$id': '259125845563242502',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'events',
                'emailTotal': 100,
                'smsTotal': 100,
                'pushTotal': 100,
                'subscribe': [],};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.createTopic(
                topicId: '<TOPIC_ID>',
                name: '<NAME>',
            );
            expect(response, isA<models.Topic>());

        });

        test('test method getTopic()', () async {
            final Map<String, dynamic> data = {
                '\$id': '259125845563242502',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'events',
                'emailTotal': 100,
                'smsTotal': 100,
                'pushTotal': 100,
                'subscribe': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.getTopic(
                topicId: '<TOPIC_ID>',
            );
            expect(response, isA<models.Topic>());

        });

        test('test method updateTopic()', () async {
            final Map<String, dynamic> data = {
                '\$id': '259125845563242502',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'events',
                'emailTotal': 100,
                'smsTotal': 100,
                'pushTotal': 100,
                'subscribe': [],};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.updateTopic(
                topicId: '<TOPIC_ID>',
            );
            expect(response, isA<models.Topic>());

        });

        test('test method deleteTopic()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.deleteTopic(
                topicId: '<TOPIC_ID>',
            );
        });

        test('test method listTopicLogs()', () async {
            final Map<String, dynamic> data = {
                'total': 5,
                'logs': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.listTopicLogs(
                topicId: '<TOPIC_ID>',
            );
            expect(response, isA<models.LogList>());

        });

        test('test method listSubscribers()', () async {
            final Map<String, dynamic> data = {
                'total': 5,
                'subscribers': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.listSubscribers(
                topicId: '<TOPIC_ID>',
            );
            expect(response, isA<models.SubscriberList>());

        });

        test('test method createSubscriber()', () async {
            final Map<String, dynamic> data = {
                '\$id': '259125845563242502',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'targetId': '259125845563242502',
                'target': <String, dynamic>{
    '\$id': '259125845563242502',
    '\$createdAt': '2020-10-15T06:38:00.000+00:00',
    '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
    'name': 'Apple iPhone 12',
    'userId': '259125845563242502',
    'providerType': 'email',
    'identifier': 'token',
    'expired': true,
  },
                'userId': '5e5ea5c16897e',
                'userName': 'Aegon Targaryen',
                'topicId': '259125845563242502',
                'providerType': 'email',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.createSubscriber(
                topicId: '<TOPIC_ID>',
                subscriberId: '<SUBSCRIBER_ID>',
                targetId: '<TARGET_ID>',
            );
            expect(response, isA<models.Subscriber>());

        });

        test('test method getSubscriber()', () async {
            final Map<String, dynamic> data = {
                '\$id': '259125845563242502',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'targetId': '259125845563242502',
                'target': <String, dynamic>{
    '\$id': '259125845563242502',
    '\$createdAt': '2020-10-15T06:38:00.000+00:00',
    '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
    'name': 'Apple iPhone 12',
    'userId': '259125845563242502',
    'providerType': 'email',
    'identifier': 'token',
    'expired': true,
  },
                'userId': '5e5ea5c16897e',
                'userName': 'Aegon Targaryen',
                'topicId': '259125845563242502',
                'providerType': 'email',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.getSubscriber(
                topicId: '<TOPIC_ID>',
                subscriberId: '<SUBSCRIBER_ID>',
            );
            expect(response, isA<models.Subscriber>());

        });

        test('test method deleteSubscriber()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await messaging.deleteSubscriber(
                topicId: '<TOPIC_ID>',
                subscriberId: '<SUBSCRIBER_ID>',
            );
        });

    });
}