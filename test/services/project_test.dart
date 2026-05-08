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
    group('Project test', () {
        late MockClient client;
        late Project project;

        setUp(() {
            client = MockClient();
            project = Project(client);
        });

        test('test method delete()', () async {

            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.delete(
            );
        });

        test('test method updateAuthMethod()', () async {

            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'New Project',
                'description': 'This is a new project.',
                'teamId': '1592981250',
                'logo': '5f5c451b403cb',
                'url': '5f5c451b403cb',
                'legalName': 'Company LTD.',
                'legalCountry': 'US',
                'legalState': 'New York',
                'legalCity': 'New York City.',
                'legalAddress': '620 Eighth Avenue, New York, NY 10018',
                'legalTaxId': '131102020',
                'authDuration': 60,
                'authLimit': 100,
                'authSessionsLimit': 10,
                'authPasswordHistory': 5,
                'authPasswordDictionary': true,
                'authPersonalDataCheck': true,
                'authDisposableEmails': true,
                'authCanonicalEmails': true,
                'authFreeEmails': true,
                'authMockNumbers': [],
                'authSessionAlerts': true,
                'authMembershipsUserName': true,
                'authMembershipsUserEmail': true,
                'authMembershipsMfa': true,
                'authMembershipsUserId': true,
                'authMembershipsUserPhone': true,
                'authInvalidateSessions': true,
                'oAuthProviders': [],
                'platforms': [],
                'webhooks': [],
                'keys': [],
                'devKeys': [],
                'smtpEnabled': true,
                'smtpSenderName': 'John Appwrite',
                'smtpSenderEmail': 'john@appwrite.io',
                'smtpReplyToName': 'Support Team',
                'smtpReplyToEmail': 'support@appwrite.io',
                'smtpHost': 'mail.appwrite.io',
                'smtpPort': 25,
                'smtpUsername': 'emailuser',
                'smtpPassword': '',
                'smtpSecure': 'tls',
                'pingCount': 1,
                'pingedAt': '2020-10-15T06:38:00.000+00:00',
                'labels': [],
                'status': 'active',
                'authEmailPassword': true,
                'authUsersAuthMagicURL': true,
                'authEmailOtp': true,
                'authAnonymous': true,
                'authInvites': true,
                'authJWT': true,
                'authPhone': true,
                'serviceStatusForAccount': true,
                'serviceStatusForAvatars': true,
                'serviceStatusForDatabases': true,
                'serviceStatusForTablesdb': true,
                'serviceStatusForLocale': true,
                'serviceStatusForHealth': true,
                'serviceStatusForProject': true,
                'serviceStatusForStorage': true,
                'serviceStatusForTeams': true,
                'serviceStatusForUsers': true,
                'serviceStatusForVcs': true,
                'serviceStatusForSites': true,
                'serviceStatusForFunctions': true,
                'serviceStatusForProxy': true,
                'serviceStatusForGraphql': true,
                'serviceStatusForMigrations': true,
                'serviceStatusForMessaging': true,
                'protocolStatusForRest': true,
                'protocolStatusForGraphql': true,
                'protocolStatusForWebsocket': true,
                'region': 'fra',
                'billingLimits': <String, dynamic>{
    'bandwidth': 5,
    'storage': 150,
    'users': 200000,
    'executions': 750000,
    'GBHours': 100,
    'imageTransformations': 100,
    'authPhone': 10,
    'budgetLimit': 100,
  },
                'blocks': [],
                'consoleAccessedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateAuthMethod(
                methodId: enums.AuthMethod.emailPassword,
                enabled: true,
            );
            expect(response, isA<models.Project>());

        });

        test('test method listKeys()', () async {

            final Map<String, dynamic> data = {
                'total': 5,
                'keys': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.listKeys(
            );
            expect(response, isA<models.KeyList>());

        });

        test('test method createKey()', () async {

            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'My API Key',
                'expire': '2020-10-15T06:38:00.000+00:00',
                'scopes': [],
                'secret': '919c2d18fb5d4...a2ae413da83346ad2',
                'accessedAt': '2020-10-15T06:38:00.000+00:00',
                'sdks': [],};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.createKey(
                keyId: '<KEY_ID>',
                name: '<NAME>',
                scopes: [enums.Scopes.projectRead],
            );
            expect(response, isA<models.Key>());

        });

        test('test method createEphemeralKey()', () async {

            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'My API Key',
                'expire': '2020-10-15T06:38:00.000+00:00',
                'scopes': [],
                'secret': '919c2d18fb5d4...a2ae413da83346ad2',
                'accessedAt': '2020-10-15T06:38:00.000+00:00',
                'sdks': [],};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.createEphemeralKey(
                scopes: [enums.Scopes.projectRead],
                duration: 1,
            );
            expect(response, isA<models.EphemeralKey>());

        });

        test('test method getKey()', () async {

            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'My API Key',
                'expire': '2020-10-15T06:38:00.000+00:00',
                'scopes': [],
                'secret': '919c2d18fb5d4...a2ae413da83346ad2',
                'accessedAt': '2020-10-15T06:38:00.000+00:00',
                'sdks': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.getKey(
                keyId: '<KEY_ID>',
            );
            expect(response, isA<models.Key>());

        });

        test('test method updateKey()', () async {

            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'My API Key',
                'expire': '2020-10-15T06:38:00.000+00:00',
                'scopes': [],
                'secret': '919c2d18fb5d4...a2ae413da83346ad2',
                'accessedAt': '2020-10-15T06:38:00.000+00:00',
                'sdks': [],};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateKey(
                keyId: '<KEY_ID>',
                name: '<NAME>',
                scopes: [enums.Scopes.projectRead],
            );
            expect(response, isA<models.Key>());

        });

        test('test method deleteKey()', () async {

            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.deleteKey(
                keyId: '<KEY_ID>',
            );
        });

        test('test method updateLabels()', () async {

            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'New Project',
                'description': 'This is a new project.',
                'teamId': '1592981250',
                'logo': '5f5c451b403cb',
                'url': '5f5c451b403cb',
                'legalName': 'Company LTD.',
                'legalCountry': 'US',
                'legalState': 'New York',
                'legalCity': 'New York City.',
                'legalAddress': '620 Eighth Avenue, New York, NY 10018',
                'legalTaxId': '131102020',
                'authDuration': 60,
                'authLimit': 100,
                'authSessionsLimit': 10,
                'authPasswordHistory': 5,
                'authPasswordDictionary': true,
                'authPersonalDataCheck': true,
                'authDisposableEmails': true,
                'authCanonicalEmails': true,
                'authFreeEmails': true,
                'authMockNumbers': [],
                'authSessionAlerts': true,
                'authMembershipsUserName': true,
                'authMembershipsUserEmail': true,
                'authMembershipsMfa': true,
                'authMembershipsUserId': true,
                'authMembershipsUserPhone': true,
                'authInvalidateSessions': true,
                'oAuthProviders': [],
                'platforms': [],
                'webhooks': [],
                'keys': [],
                'devKeys': [],
                'smtpEnabled': true,
                'smtpSenderName': 'John Appwrite',
                'smtpSenderEmail': 'john@appwrite.io',
                'smtpReplyToName': 'Support Team',
                'smtpReplyToEmail': 'support@appwrite.io',
                'smtpHost': 'mail.appwrite.io',
                'smtpPort': 25,
                'smtpUsername': 'emailuser',
                'smtpPassword': '',
                'smtpSecure': 'tls',
                'pingCount': 1,
                'pingedAt': '2020-10-15T06:38:00.000+00:00',
                'labels': [],
                'status': 'active',
                'authEmailPassword': true,
                'authUsersAuthMagicURL': true,
                'authEmailOtp': true,
                'authAnonymous': true,
                'authInvites': true,
                'authJWT': true,
                'authPhone': true,
                'serviceStatusForAccount': true,
                'serviceStatusForAvatars': true,
                'serviceStatusForDatabases': true,
                'serviceStatusForTablesdb': true,
                'serviceStatusForLocale': true,
                'serviceStatusForHealth': true,
                'serviceStatusForProject': true,
                'serviceStatusForStorage': true,
                'serviceStatusForTeams': true,
                'serviceStatusForUsers': true,
                'serviceStatusForVcs': true,
                'serviceStatusForSites': true,
                'serviceStatusForFunctions': true,
                'serviceStatusForProxy': true,
                'serviceStatusForGraphql': true,
                'serviceStatusForMigrations': true,
                'serviceStatusForMessaging': true,
                'protocolStatusForRest': true,
                'protocolStatusForGraphql': true,
                'protocolStatusForWebsocket': true,
                'region': 'fra',
                'billingLimits': <String, dynamic>{
    'bandwidth': 5,
    'storage': 150,
    'users': 200000,
    'executions': 750000,
    'GBHours': 100,
    'imageTransformations': 100,
    'authPhone': 10,
    'budgetLimit': 100,
  },
                'blocks': [],
                'consoleAccessedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateLabels(
                labels: [],
            );
            expect(response, isA<models.Project>());

        });

        test('test method listMockPhones()', () async {

            final Map<String, dynamic> data = {
                'total': 5,
                'mockNumbers': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.listMockPhones(
            );
            expect(response, isA<models.MockNumberList>());

        });

        test('test method createMockPhone()', () async {

            final Map<String, dynamic> data = {
                'number': '+1612842323',
                'otp': '123456',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.createMockPhone(
                number: '+12065550100',
                otp: '<OTP>',
            );
            expect(response, isA<models.MockNumber>());

        });

        test('test method getMockPhone()', () async {

            final Map<String, dynamic> data = {
                'number': '+1612842323',
                'otp': '123456',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.getMockPhone(
                number: '+12065550100',
            );
            expect(response, isA<models.MockNumber>());

        });

        test('test method updateMockPhone()', () async {

            final Map<String, dynamic> data = {
                'number': '+1612842323',
                'otp': '123456',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateMockPhone(
                number: '+12065550100',
                otp: '<OTP>',
            );
            expect(response, isA<models.MockNumber>());

        });

        test('test method deleteMockPhone()', () async {

            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.deleteMockPhone(
                number: '+12065550100',
            );
        });

        test('test method listOAuth2Providers()', () async {

            final Map<String, dynamic> data = {
                'total': 5,
                'providers': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.listOAuth2Providers(
            );
            expect(response, isA<models.OAuth2ProviderList>());

        });

        test('test method updateOAuth2Amazon()', () async {

            final Map<String, dynamic> data = {
                '\$id': 'github',
                'enabled': true,
                'clientId': 'amzn1.application-oa2-client.87400c00000000000000000000063d5b2',
                'clientSecret': '<CLIENT_SECRET>',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateOAuth2Amazon(
            );
            expect(response, isA<models.OAuth2Amazon>());

        });

        test('test method updateOAuth2Apple()', () async {

            final Map<String, dynamic> data = {
                '\$id': 'apple',
                'enabled': true,
                'serviceId': 'ip.appwrite.app.web',
                'keyId': 'P4000000N8',
                'teamId': 'D4000000R6',
                'p8File': '-----BEGIN PRIVATE KEY-----MIGTAg...jy2Xbna-----END PRIVATE KEY-----',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateOAuth2Apple(
            );
            expect(response, isA<models.OAuth2Apple>());

        });

        test('test method updateOAuth2Auth0()', () async {

            final Map<String, dynamic> data = {
                '\$id': 'github',
                'enabled': true,
                'clientId': 'OaOkIA000000000000000000005KLSYq',
                'clientSecret': '<CLIENT_SECRET>',
                'endpoint': 'example.us.auth0.com',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateOAuth2Auth0(
            );
            expect(response, isA<models.OAuth2Auth0>());

        });

        test('test method updateOAuth2Authentik()', () async {

            final Map<String, dynamic> data = {
                '\$id': 'github',
                'enabled': true,
                'clientId': 'dTKOPa0000000000000000000000000000e7G8hv',
                'clientSecret': '<CLIENT_SECRET>',
                'endpoint': 'example.authentik.com',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateOAuth2Authentik(
            );
            expect(response, isA<models.OAuth2Authentik>());

        });

        test('test method updateOAuth2Autodesk()', () async {

            final Map<String, dynamic> data = {
                '\$id': 'github',
                'enabled': true,
                'clientId': '5zw90v00000000000000000000kVYXN7',
                'clientSecret': '<CLIENT_SECRET>',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateOAuth2Autodesk(
            );
            expect(response, isA<models.OAuth2Autodesk>());

        });

        test('test method updateOAuth2Bitbucket()', () async {

            final Map<String, dynamic> data = {
                '\$id': 'github',
                'enabled': true,
                'key': 'Knt70000000000ByRc',
                'secret': '<CLIENT_SECRET>',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateOAuth2Bitbucket(
            );
            expect(response, isA<models.OAuth2Bitbucket>());

        });

        test('test method updateOAuth2Bitly()', () async {

            final Map<String, dynamic> data = {
                '\$id': 'github',
                'enabled': true,
                'clientId': 'd95151000000000000000000000000000067af9b',
                'clientSecret': '<CLIENT_SECRET>',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateOAuth2Bitly(
            );
            expect(response, isA<models.OAuth2Bitly>());

        });

        test('test method updateOAuth2Box()', () async {

            final Map<String, dynamic> data = {
                '\$id': 'github',
                'enabled': true,
                'clientId': 'deglcs00000000000000000000x2og6y',
                'clientSecret': '<CLIENT_SECRET>',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateOAuth2Box(
            );
            expect(response, isA<models.OAuth2Box>());

        });

        test('test method updateOAuth2Dailymotion()', () async {

            final Map<String, dynamic> data = {
                '\$id': 'github',
                'enabled': true,
                'apiKey': '07a9000000000000067f',
                'apiSecret': '<CLIENT_SECRET>',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateOAuth2Dailymotion(
            );
            expect(response, isA<models.OAuth2Dailymotion>());

        });

        test('test method updateOAuth2Discord()', () async {

            final Map<String, dynamic> data = {
                '\$id': 'github',
                'enabled': true,
                'clientId': '950722000000343754',
                'clientSecret': '<CLIENT_SECRET>',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateOAuth2Discord(
            );
            expect(response, isA<models.OAuth2Discord>());

        });

        test('test method updateOAuth2Disqus()', () async {

            final Map<String, dynamic> data = {
                '\$id': 'github',
                'enabled': true,
                'publicKey': 'cgegH70000000000000000000000000000000000000000000000000000Hr1nYX',
                'secretKey': '<CLIENT_SECRET>',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateOAuth2Disqus(
            );
            expect(response, isA<models.OAuth2Disqus>());

        });

        test('test method updateOAuth2Dropbox()', () async {

            final Map<String, dynamic> data = {
                '\$id': 'github',
                'enabled': true,
                'appKey': 'jl000000000009t',
                'appSecret': '<CLIENT_SECRET>',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateOAuth2Dropbox(
            );
            expect(response, isA<models.OAuth2Dropbox>());

        });

        test('test method updateOAuth2Etsy()', () async {

            final Map<String, dynamic> data = {
                '\$id': 'github',
                'enabled': true,
                'keyString': 'nsgzxh0000000000008j85a2',
                'sharedSecret': '<CLIENT_SECRET>',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateOAuth2Etsy(
            );
            expect(response, isA<models.OAuth2Etsy>());

        });

        test('test method updateOAuth2Facebook()', () async {

            final Map<String, dynamic> data = {
                '\$id': 'github',
                'enabled': true,
                'appId': '260600000007694',
                'appSecret': '<CLIENT_SECRET>',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateOAuth2Facebook(
            );
            expect(response, isA<models.OAuth2Facebook>());

        });

        test('test method updateOAuth2Figma()', () async {

            final Map<String, dynamic> data = {
                '\$id': 'github',
                'enabled': true,
                'clientId': 'byay5H0000000000VtiI40',
                'clientSecret': '<CLIENT_SECRET>',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateOAuth2Figma(
            );
            expect(response, isA<models.OAuth2Figma>());

        });

        test('test method updateOAuth2FusionAuth()', () async {

            final Map<String, dynamic> data = {
                '\$id': 'github',
                'enabled': true,
                'clientId': 'b2222c00-0000-0000-0000-000000862097',
                'clientSecret': '<CLIENT_SECRET>',
                'endpoint': 'example.fusionauth.io',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateOAuth2FusionAuth(
            );
            expect(response, isA<models.OAuth2FusionAuth>());

        });

        test('test method updateOAuth2GitHub()', () async {

            final Map<String, dynamic> data = {
                '\$id': 'github',
                'enabled': true,
                'clientId': 'e4d87900000000540733',
                'clientSecret': '<CLIENT_SECRET>',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateOAuth2GitHub(
            );
            expect(response, isA<models.OAuth2Github>());

        });

        test('test method updateOAuth2Gitlab()', () async {

            final Map<String, dynamic> data = {
                '\$id': 'github',
                'enabled': true,
                'applicationId': 'd41ffe0000000000000000000000000000000000000000000000000000d5e252',
                'secret': '<CLIENT_SECRET>',
                'endpoint': 'https://gitlab.com',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateOAuth2Gitlab(
            );
            expect(response, isA<models.OAuth2Gitlab>());

        });

        test('test method updateOAuth2Google()', () async {

            final Map<String, dynamic> data = {
                '\$id': 'github',
                'enabled': true,
                'clientId': '120000000095-92ifjb00000000000000000000g7ijfb.apps.googleusercontent.com',
                'clientSecret': '<CLIENT_SECRET>',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateOAuth2Google(
            );
            expect(response, isA<models.OAuth2Google>());

        });

        test('test method updateOAuth2Keycloak()', () async {

            final Map<String, dynamic> data = {
                '\$id': 'github',
                'enabled': true,
                'clientId': 'appwrite-o0000000st-app',
                'clientSecret': '<CLIENT_SECRET>',
                'endpoint': 'keycloak.example.com',
                'realmName': 'appwrite-realm',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateOAuth2Keycloak(
            );
            expect(response, isA<models.OAuth2Keycloak>());

        });

        test('test method updateOAuth2Kick()', () async {

            final Map<String, dynamic> data = {
                '\$id': 'github',
                'enabled': true,
                'clientId': '01KQ7C00000000000001MFHS32',
                'clientSecret': '<CLIENT_SECRET>',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateOAuth2Kick(
            );
            expect(response, isA<models.OAuth2Kick>());

        });

        test('test method updateOAuth2Linkedin()', () async {

            final Map<String, dynamic> data = {
                '\$id': 'github',
                'enabled': true,
                'clientId': '770000000000dv',
                'primaryClientSecret': '<CLIENT_SECRET>',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateOAuth2Linkedin(
            );
            expect(response, isA<models.OAuth2Linkedin>());

        });

        test('test method updateOAuth2Microsoft()', () async {

            final Map<String, dynamic> data = {
                '\$id': 'github',
                'enabled': true,
                'applicationId': '00001111-aaaa-2222-bbbb-3333cccc4444',
                'applicationSecret': '<CLIENT_SECRET>',
                'tenant': 'common',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateOAuth2Microsoft(
            );
            expect(response, isA<models.OAuth2Microsoft>());

        });

        test('test method updateOAuth2Notion()', () async {

            final Map<String, dynamic> data = {
                '\$id': 'github',
                'enabled': true,
                'oauthClientId': '341d8700-0000-0000-0000-000000446ee3',
                'oauthClientSecret': '<CLIENT_SECRET>',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateOAuth2Notion(
            );
            expect(response, isA<models.OAuth2Notion>());

        });

        test('test method updateOAuth2Oidc()', () async {

            final Map<String, dynamic> data = {
                '\$id': 'github',
                'enabled': true,
                'clientId': 'qibI2x0000000000000000000000000006L2YFoG',
                'clientSecret': '<CLIENT_SECRET>',
                'wellKnownURL': 'https://myoauth.com/.well-known/openid-configuration',
                'authorizationURL': 'https://myoauth.com/oauth2/authorize',
                'tokenURL': 'https://myoauth.com/oauth2/token',
                'userInfoURL': 'https://myoauth.com/oauth2/userinfo',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateOAuth2Oidc(
            );
            expect(response, isA<models.OAuth2Oidc>());

        });

        test('test method updateOAuth2Okta()', () async {

            final Map<String, dynamic> data = {
                '\$id': 'github',
                'enabled': true,
                'clientId': '0oa00000000000000698',
                'clientSecret': '<CLIENT_SECRET>',
                'domain': 'trial-6400025.okta.com',
                'authorizationServerId': 'aus000000000000000h7z',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateOAuth2Okta(
            );
            expect(response, isA<models.OAuth2Okta>());

        });

        test('test method updateOAuth2Paypal()', () async {

            final Map<String, dynamic> data = {
                '\$id': 'github',
                'enabled': true,
                'clientId': 'AdhIEG7-000000000000-0000000000000000000000000000000-0000000000000000000000-2pyB',
                'secretKey': '<CLIENT_SECRET>',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateOAuth2Paypal(
            );
            expect(response, isA<models.OAuth2Paypal>());

        });

        test('test method updateOAuth2PaypalSandbox()', () async {

            final Map<String, dynamic> data = {
                '\$id': 'github',
                'enabled': true,
                'clientId': 'AdhIEG7-000000000000-0000000000000000000000000000000-0000000000000000000000-2pyB',
                'secretKey': '<CLIENT_SECRET>',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateOAuth2PaypalSandbox(
            );
            expect(response, isA<models.OAuth2Paypal>());

        });

        test('test method updateOAuth2Podio()', () async {

            final Map<String, dynamic> data = {
                '\$id': 'github',
                'enabled': true,
                'clientId': 'appwrite-oauth-test-app',
                'clientSecret': '<CLIENT_SECRET>',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateOAuth2Podio(
            );
            expect(response, isA<models.OAuth2Podio>());

        });

        test('test method updateOAuth2Salesforce()', () async {

            final Map<String, dynamic> data = {
                '\$id': 'github',
                'enabled': true,
                'customerKey': '3MVG9I0000000000000000000000000000000000000000000000000000000000000000000000000C5Aejq',
                'customerSecret': '<CLIENT_SECRET>',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateOAuth2Salesforce(
            );
            expect(response, isA<models.OAuth2Salesforce>());

        });

        test('test method updateOAuth2Slack()', () async {

            final Map<String, dynamic> data = {
                '\$id': 'github',
                'enabled': true,
                'clientId': '23000000089.15000000000023',
                'clientSecret': '<CLIENT_SECRET>',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateOAuth2Slack(
            );
            expect(response, isA<models.OAuth2Slack>());

        });

        test('test method updateOAuth2Spotify()', () async {

            final Map<String, dynamic> data = {
                '\$id': 'github',
                'enabled': true,
                'clientId': '6ec271000000000000000000009beace',
                'clientSecret': '<CLIENT_SECRET>',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateOAuth2Spotify(
            );
            expect(response, isA<models.OAuth2Spotify>());

        });

        test('test method updateOAuth2Stripe()', () async {

            final Map<String, dynamic> data = {
                '\$id': 'github',
                'enabled': true,
                'clientId': 'ca_UKibXX0000000000000000000006byvR',
                'apiSecretKey': '<CLIENT_SECRET>',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateOAuth2Stripe(
            );
            expect(response, isA<models.OAuth2Stripe>());

        });

        test('test method updateOAuth2Tradeshift()', () async {

            final Map<String, dynamic> data = {
                '\$id': 'github',
                'enabled': true,
                'oauth2ClientId': 'appwrite-test-org.appwrite-test-app',
                'oauth2ClientSecret': '<CLIENT_SECRET>',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateOAuth2Tradeshift(
            );
            expect(response, isA<models.OAuth2Tradeshift>());

        });

        test('test method updateOAuth2TradeshiftSandbox()', () async {

            final Map<String, dynamic> data = {
                '\$id': 'github',
                'enabled': true,
                'oauth2ClientId': 'appwrite-test-org.appwrite-test-app',
                'oauth2ClientSecret': '<CLIENT_SECRET>',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateOAuth2TradeshiftSandbox(
            );
            expect(response, isA<models.OAuth2Tradeshift>());

        });

        test('test method updateOAuth2Twitch()', () async {

            final Map<String, dynamic> data = {
                '\$id': 'github',
                'enabled': true,
                'clientId': 'vvi0in000000000000000000ikmt9p',
                'clientSecret': '<CLIENT_SECRET>',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateOAuth2Twitch(
            );
            expect(response, isA<models.OAuth2Twitch>());

        });

        test('test method updateOAuth2WordPress()', () async {

            final Map<String, dynamic> data = {
                '\$id': 'github',
                'enabled': true,
                'clientId': '130005',
                'clientSecret': '<CLIENT_SECRET>',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateOAuth2WordPress(
            );
            expect(response, isA<models.OAuth2WordPress>());

        });

        test('test method updateOAuth2X()', () async {

            final Map<String, dynamic> data = {
                '\$id': 'github',
                'enabled': true,
                'customerKey': 'slzZV0000000000000NFLaWT',
                'secretKey': '<CLIENT_SECRET>',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateOAuth2X(
            );
            expect(response, isA<models.OAuth2X>());

        });

        test('test method updateOAuth2Yahoo()', () async {

            final Map<String, dynamic> data = {
                '\$id': 'github',
                'enabled': true,
                'clientId': 'dj0yJm000000000000000000000000000000000000000000000000000000000000000000000000000000000000Z4PWRm',
                'clientSecret': '<CLIENT_SECRET>',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateOAuth2Yahoo(
            );
            expect(response, isA<models.OAuth2Yahoo>());

        });

        test('test method updateOAuth2Yandex()', () async {

            final Map<String, dynamic> data = {
                '\$id': 'github',
                'enabled': true,
                'clientId': '6a8a6a0000000000000000000091483c',
                'clientSecret': '<CLIENT_SECRET>',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateOAuth2Yandex(
            );
            expect(response, isA<models.OAuth2Yandex>());

        });

        test('test method updateOAuth2Zoho()', () async {

            final Map<String, dynamic> data = {
                '\$id': 'github',
                'enabled': true,
                'clientId': '1000.83C178000000000000000000RPNX0B',
                'clientSecret': '<CLIENT_SECRET>',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateOAuth2Zoho(
            );
            expect(response, isA<models.OAuth2Zoho>());

        });

        test('test method updateOAuth2Zoom()', () async {

            final Map<String, dynamic> data = {
                '\$id': 'github',
                'enabled': true,
                'clientId': 'QMAC00000000000000w0AQ',
                'clientSecret': '<CLIENT_SECRET>',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateOAuth2Zoom(
            );
            expect(response, isA<models.OAuth2Zoom>());

        });

        test('test method getOAuth2Provider()', () async {

            final Map<String, dynamic> data = {
                '\$id': 'github',
                'enabled': true,
                'applicationId': '00001111-aaaa-2222-bbbb-3333cccc4444',
                'applicationSecret': '<CLIENT_SECRET>',
                'tenant': 'common',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.getOAuth2Provider(
                providerId: enums.OAuthProvider.amazon,
            );
            expect(response, isA<models.OAuth2Microsoft>());

        });

        test('test method listPlatforms()', () async {

            final Map<String, dynamic> data = {
                'total': 5,
                'platforms': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.listPlatforms(
            );
            expect(response, isA<models.PlatformList>());

        });

        test('test method createAndroidPlatform()', () async {

            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'My Web App',
                'type': 'web',
                'applicationId': 'com.company.appname',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.createAndroidPlatform(
                platformId: '<PLATFORM_ID>',
                name: '<NAME>',
                applicationId: '<APPLICATION_ID>',
            );
            expect(response, isA<models.PlatformAndroid>());

        });

        test('test method updateAndroidPlatform()', () async {

            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'My Web App',
                'type': 'web',
                'applicationId': 'com.company.appname',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateAndroidPlatform(
                platformId: '<PLATFORM_ID>',
                name: '<NAME>',
                applicationId: '<APPLICATION_ID>',
            );
            expect(response, isA<models.PlatformAndroid>());

        });

        test('test method createApplePlatform()', () async {

            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'My Web App',
                'type': 'web',
                'bundleIdentifier': 'com.company.appname',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.createApplePlatform(
                platformId: '<PLATFORM_ID>',
                name: '<NAME>',
                bundleIdentifier: '<BUNDLE_IDENTIFIER>',
            );
            expect(response, isA<models.PlatformApple>());

        });

        test('test method updateApplePlatform()', () async {

            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'My Web App',
                'type': 'web',
                'bundleIdentifier': 'com.company.appname',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateApplePlatform(
                platformId: '<PLATFORM_ID>',
                name: '<NAME>',
                bundleIdentifier: '<BUNDLE_IDENTIFIER>',
            );
            expect(response, isA<models.PlatformApple>());

        });

        test('test method createLinuxPlatform()', () async {

            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'My Web App',
                'type': 'web',
                'packageName': 'com.company.appname',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.createLinuxPlatform(
                platformId: '<PLATFORM_ID>',
                name: '<NAME>',
                packageName: '<PACKAGE_NAME>',
            );
            expect(response, isA<models.PlatformLinux>());

        });

        test('test method updateLinuxPlatform()', () async {

            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'My Web App',
                'type': 'web',
                'packageName': 'com.company.appname',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateLinuxPlatform(
                platformId: '<PLATFORM_ID>',
                name: '<NAME>',
                packageName: '<PACKAGE_NAME>',
            );
            expect(response, isA<models.PlatformLinux>());

        });

        test('test method createWebPlatform()', () async {

            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'My Web App',
                'type': 'web',
                'hostname': 'app.example.com',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.createWebPlatform(
                platformId: '<PLATFORM_ID>',
                name: '<NAME>',
                hostname: 'app.example.com',
            );
            expect(response, isA<models.PlatformWeb>());

        });

        test('test method updateWebPlatform()', () async {

            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'My Web App',
                'type': 'web',
                'hostname': 'app.example.com',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateWebPlatform(
                platformId: '<PLATFORM_ID>',
                name: '<NAME>',
                hostname: 'app.example.com',
            );
            expect(response, isA<models.PlatformWeb>());

        });

        test('test method createWindowsPlatform()', () async {

            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'My Web App',
                'type': 'web',
                'packageIdentifierName': 'com.company.appname',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.createWindowsPlatform(
                platformId: '<PLATFORM_ID>',
                name: '<NAME>',
                packageIdentifierName: '<PACKAGE_IDENTIFIER_NAME>',
            );
            expect(response, isA<models.PlatformWindows>());

        });

        test('test method updateWindowsPlatform()', () async {

            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'My Web App',
                'type': 'web',
                'packageIdentifierName': 'com.company.appname',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateWindowsPlatform(
                platformId: '<PLATFORM_ID>',
                name: '<NAME>',
                packageIdentifierName: '<PACKAGE_IDENTIFIER_NAME>',
            );
            expect(response, isA<models.PlatformWindows>());

        });

        test('test method getPlatform()', () async {

            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'My Web App',
                'type': 'web',
                'packageName': 'com.company.appname',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.getPlatform(
                platformId: '<PLATFORM_ID>',
            );
            expect(response, isA<models.PlatformLinux>());

        });

        test('test method deletePlatform()', () async {

            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.deletePlatform(
                platformId: '<PLATFORM_ID>',
            );
        });

        test('test method listPolicies()', () async {

            final Map<String, dynamic> data = {
                'total': 9,
                'policies': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.listPolicies(
            );
            expect(response, isA<models.PolicyList>());

        });

        test('test method updateMembershipPrivacyPolicy()', () async {

            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'New Project',
                'description': 'This is a new project.',
                'teamId': '1592981250',
                'logo': '5f5c451b403cb',
                'url': '5f5c451b403cb',
                'legalName': 'Company LTD.',
                'legalCountry': 'US',
                'legalState': 'New York',
                'legalCity': 'New York City.',
                'legalAddress': '620 Eighth Avenue, New York, NY 10018',
                'legalTaxId': '131102020',
                'authDuration': 60,
                'authLimit': 100,
                'authSessionsLimit': 10,
                'authPasswordHistory': 5,
                'authPasswordDictionary': true,
                'authPersonalDataCheck': true,
                'authDisposableEmails': true,
                'authCanonicalEmails': true,
                'authFreeEmails': true,
                'authMockNumbers': [],
                'authSessionAlerts': true,
                'authMembershipsUserName': true,
                'authMembershipsUserEmail': true,
                'authMembershipsMfa': true,
                'authMembershipsUserId': true,
                'authMembershipsUserPhone': true,
                'authInvalidateSessions': true,
                'oAuthProviders': [],
                'platforms': [],
                'webhooks': [],
                'keys': [],
                'devKeys': [],
                'smtpEnabled': true,
                'smtpSenderName': 'John Appwrite',
                'smtpSenderEmail': 'john@appwrite.io',
                'smtpReplyToName': 'Support Team',
                'smtpReplyToEmail': 'support@appwrite.io',
                'smtpHost': 'mail.appwrite.io',
                'smtpPort': 25,
                'smtpUsername': 'emailuser',
                'smtpPassword': '',
                'smtpSecure': 'tls',
                'pingCount': 1,
                'pingedAt': '2020-10-15T06:38:00.000+00:00',
                'labels': [],
                'status': 'active',
                'authEmailPassword': true,
                'authUsersAuthMagicURL': true,
                'authEmailOtp': true,
                'authAnonymous': true,
                'authInvites': true,
                'authJWT': true,
                'authPhone': true,
                'serviceStatusForAccount': true,
                'serviceStatusForAvatars': true,
                'serviceStatusForDatabases': true,
                'serviceStatusForTablesdb': true,
                'serviceStatusForLocale': true,
                'serviceStatusForHealth': true,
                'serviceStatusForProject': true,
                'serviceStatusForStorage': true,
                'serviceStatusForTeams': true,
                'serviceStatusForUsers': true,
                'serviceStatusForVcs': true,
                'serviceStatusForSites': true,
                'serviceStatusForFunctions': true,
                'serviceStatusForProxy': true,
                'serviceStatusForGraphql': true,
                'serviceStatusForMigrations': true,
                'serviceStatusForMessaging': true,
                'protocolStatusForRest': true,
                'protocolStatusForGraphql': true,
                'protocolStatusForWebsocket': true,
                'region': 'fra',
                'billingLimits': <String, dynamic>{
    'bandwidth': 5,
    'storage': 150,
    'users': 200000,
    'executions': 750000,
    'GBHours': 100,
    'imageTransformations': 100,
    'authPhone': 10,
    'budgetLimit': 100,
  },
                'blocks': [],
                'consoleAccessedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateMembershipPrivacyPolicy(
            );
            expect(response, isA<models.Project>());

        });

        test('test method updatePasswordDictionaryPolicy()', () async {

            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'New Project',
                'description': 'This is a new project.',
                'teamId': '1592981250',
                'logo': '5f5c451b403cb',
                'url': '5f5c451b403cb',
                'legalName': 'Company LTD.',
                'legalCountry': 'US',
                'legalState': 'New York',
                'legalCity': 'New York City.',
                'legalAddress': '620 Eighth Avenue, New York, NY 10018',
                'legalTaxId': '131102020',
                'authDuration': 60,
                'authLimit': 100,
                'authSessionsLimit': 10,
                'authPasswordHistory': 5,
                'authPasswordDictionary': true,
                'authPersonalDataCheck': true,
                'authDisposableEmails': true,
                'authCanonicalEmails': true,
                'authFreeEmails': true,
                'authMockNumbers': [],
                'authSessionAlerts': true,
                'authMembershipsUserName': true,
                'authMembershipsUserEmail': true,
                'authMembershipsMfa': true,
                'authMembershipsUserId': true,
                'authMembershipsUserPhone': true,
                'authInvalidateSessions': true,
                'oAuthProviders': [],
                'platforms': [],
                'webhooks': [],
                'keys': [],
                'devKeys': [],
                'smtpEnabled': true,
                'smtpSenderName': 'John Appwrite',
                'smtpSenderEmail': 'john@appwrite.io',
                'smtpReplyToName': 'Support Team',
                'smtpReplyToEmail': 'support@appwrite.io',
                'smtpHost': 'mail.appwrite.io',
                'smtpPort': 25,
                'smtpUsername': 'emailuser',
                'smtpPassword': '',
                'smtpSecure': 'tls',
                'pingCount': 1,
                'pingedAt': '2020-10-15T06:38:00.000+00:00',
                'labels': [],
                'status': 'active',
                'authEmailPassword': true,
                'authUsersAuthMagicURL': true,
                'authEmailOtp': true,
                'authAnonymous': true,
                'authInvites': true,
                'authJWT': true,
                'authPhone': true,
                'serviceStatusForAccount': true,
                'serviceStatusForAvatars': true,
                'serviceStatusForDatabases': true,
                'serviceStatusForTablesdb': true,
                'serviceStatusForLocale': true,
                'serviceStatusForHealth': true,
                'serviceStatusForProject': true,
                'serviceStatusForStorage': true,
                'serviceStatusForTeams': true,
                'serviceStatusForUsers': true,
                'serviceStatusForVcs': true,
                'serviceStatusForSites': true,
                'serviceStatusForFunctions': true,
                'serviceStatusForProxy': true,
                'serviceStatusForGraphql': true,
                'serviceStatusForMigrations': true,
                'serviceStatusForMessaging': true,
                'protocolStatusForRest': true,
                'protocolStatusForGraphql': true,
                'protocolStatusForWebsocket': true,
                'region': 'fra',
                'billingLimits': <String, dynamic>{
    'bandwidth': 5,
    'storage': 150,
    'users': 200000,
    'executions': 750000,
    'GBHours': 100,
    'imageTransformations': 100,
    'authPhone': 10,
    'budgetLimit': 100,
  },
                'blocks': [],
                'consoleAccessedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updatePasswordDictionaryPolicy(
                enabled: true,
            );
            expect(response, isA<models.Project>());

        });

        test('test method updatePasswordHistoryPolicy()', () async {

            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'New Project',
                'description': 'This is a new project.',
                'teamId': '1592981250',
                'logo': '5f5c451b403cb',
                'url': '5f5c451b403cb',
                'legalName': 'Company LTD.',
                'legalCountry': 'US',
                'legalState': 'New York',
                'legalCity': 'New York City.',
                'legalAddress': '620 Eighth Avenue, New York, NY 10018',
                'legalTaxId': '131102020',
                'authDuration': 60,
                'authLimit': 100,
                'authSessionsLimit': 10,
                'authPasswordHistory': 5,
                'authPasswordDictionary': true,
                'authPersonalDataCheck': true,
                'authDisposableEmails': true,
                'authCanonicalEmails': true,
                'authFreeEmails': true,
                'authMockNumbers': [],
                'authSessionAlerts': true,
                'authMembershipsUserName': true,
                'authMembershipsUserEmail': true,
                'authMembershipsMfa': true,
                'authMembershipsUserId': true,
                'authMembershipsUserPhone': true,
                'authInvalidateSessions': true,
                'oAuthProviders': [],
                'platforms': [],
                'webhooks': [],
                'keys': [],
                'devKeys': [],
                'smtpEnabled': true,
                'smtpSenderName': 'John Appwrite',
                'smtpSenderEmail': 'john@appwrite.io',
                'smtpReplyToName': 'Support Team',
                'smtpReplyToEmail': 'support@appwrite.io',
                'smtpHost': 'mail.appwrite.io',
                'smtpPort': 25,
                'smtpUsername': 'emailuser',
                'smtpPassword': '',
                'smtpSecure': 'tls',
                'pingCount': 1,
                'pingedAt': '2020-10-15T06:38:00.000+00:00',
                'labels': [],
                'status': 'active',
                'authEmailPassword': true,
                'authUsersAuthMagicURL': true,
                'authEmailOtp': true,
                'authAnonymous': true,
                'authInvites': true,
                'authJWT': true,
                'authPhone': true,
                'serviceStatusForAccount': true,
                'serviceStatusForAvatars': true,
                'serviceStatusForDatabases': true,
                'serviceStatusForTablesdb': true,
                'serviceStatusForLocale': true,
                'serviceStatusForHealth': true,
                'serviceStatusForProject': true,
                'serviceStatusForStorage': true,
                'serviceStatusForTeams': true,
                'serviceStatusForUsers': true,
                'serviceStatusForVcs': true,
                'serviceStatusForSites': true,
                'serviceStatusForFunctions': true,
                'serviceStatusForProxy': true,
                'serviceStatusForGraphql': true,
                'serviceStatusForMigrations': true,
                'serviceStatusForMessaging': true,
                'protocolStatusForRest': true,
                'protocolStatusForGraphql': true,
                'protocolStatusForWebsocket': true,
                'region': 'fra',
                'billingLimits': <String, dynamic>{
    'bandwidth': 5,
    'storage': 150,
    'users': 200000,
    'executions': 750000,
    'GBHours': 100,
    'imageTransformations': 100,
    'authPhone': 10,
    'budgetLimit': 100,
  },
                'blocks': [],
                'consoleAccessedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updatePasswordHistoryPolicy(
                total: 1,
            );
            expect(response, isA<models.Project>());

        });

        test('test method updatePasswordPersonalDataPolicy()', () async {

            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'New Project',
                'description': 'This is a new project.',
                'teamId': '1592981250',
                'logo': '5f5c451b403cb',
                'url': '5f5c451b403cb',
                'legalName': 'Company LTD.',
                'legalCountry': 'US',
                'legalState': 'New York',
                'legalCity': 'New York City.',
                'legalAddress': '620 Eighth Avenue, New York, NY 10018',
                'legalTaxId': '131102020',
                'authDuration': 60,
                'authLimit': 100,
                'authSessionsLimit': 10,
                'authPasswordHistory': 5,
                'authPasswordDictionary': true,
                'authPersonalDataCheck': true,
                'authDisposableEmails': true,
                'authCanonicalEmails': true,
                'authFreeEmails': true,
                'authMockNumbers': [],
                'authSessionAlerts': true,
                'authMembershipsUserName': true,
                'authMembershipsUserEmail': true,
                'authMembershipsMfa': true,
                'authMembershipsUserId': true,
                'authMembershipsUserPhone': true,
                'authInvalidateSessions': true,
                'oAuthProviders': [],
                'platforms': [],
                'webhooks': [],
                'keys': [],
                'devKeys': [],
                'smtpEnabled': true,
                'smtpSenderName': 'John Appwrite',
                'smtpSenderEmail': 'john@appwrite.io',
                'smtpReplyToName': 'Support Team',
                'smtpReplyToEmail': 'support@appwrite.io',
                'smtpHost': 'mail.appwrite.io',
                'smtpPort': 25,
                'smtpUsername': 'emailuser',
                'smtpPassword': '',
                'smtpSecure': 'tls',
                'pingCount': 1,
                'pingedAt': '2020-10-15T06:38:00.000+00:00',
                'labels': [],
                'status': 'active',
                'authEmailPassword': true,
                'authUsersAuthMagicURL': true,
                'authEmailOtp': true,
                'authAnonymous': true,
                'authInvites': true,
                'authJWT': true,
                'authPhone': true,
                'serviceStatusForAccount': true,
                'serviceStatusForAvatars': true,
                'serviceStatusForDatabases': true,
                'serviceStatusForTablesdb': true,
                'serviceStatusForLocale': true,
                'serviceStatusForHealth': true,
                'serviceStatusForProject': true,
                'serviceStatusForStorage': true,
                'serviceStatusForTeams': true,
                'serviceStatusForUsers': true,
                'serviceStatusForVcs': true,
                'serviceStatusForSites': true,
                'serviceStatusForFunctions': true,
                'serviceStatusForProxy': true,
                'serviceStatusForGraphql': true,
                'serviceStatusForMigrations': true,
                'serviceStatusForMessaging': true,
                'protocolStatusForRest': true,
                'protocolStatusForGraphql': true,
                'protocolStatusForWebsocket': true,
                'region': 'fra',
                'billingLimits': <String, dynamic>{
    'bandwidth': 5,
    'storage': 150,
    'users': 200000,
    'executions': 750000,
    'GBHours': 100,
    'imageTransformations': 100,
    'authPhone': 10,
    'budgetLimit': 100,
  },
                'blocks': [],
                'consoleAccessedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updatePasswordPersonalDataPolicy(
                enabled: true,
            );
            expect(response, isA<models.Project>());

        });

        test('test method updateSessionAlertPolicy()', () async {

            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'New Project',
                'description': 'This is a new project.',
                'teamId': '1592981250',
                'logo': '5f5c451b403cb',
                'url': '5f5c451b403cb',
                'legalName': 'Company LTD.',
                'legalCountry': 'US',
                'legalState': 'New York',
                'legalCity': 'New York City.',
                'legalAddress': '620 Eighth Avenue, New York, NY 10018',
                'legalTaxId': '131102020',
                'authDuration': 60,
                'authLimit': 100,
                'authSessionsLimit': 10,
                'authPasswordHistory': 5,
                'authPasswordDictionary': true,
                'authPersonalDataCheck': true,
                'authDisposableEmails': true,
                'authCanonicalEmails': true,
                'authFreeEmails': true,
                'authMockNumbers': [],
                'authSessionAlerts': true,
                'authMembershipsUserName': true,
                'authMembershipsUserEmail': true,
                'authMembershipsMfa': true,
                'authMembershipsUserId': true,
                'authMembershipsUserPhone': true,
                'authInvalidateSessions': true,
                'oAuthProviders': [],
                'platforms': [],
                'webhooks': [],
                'keys': [],
                'devKeys': [],
                'smtpEnabled': true,
                'smtpSenderName': 'John Appwrite',
                'smtpSenderEmail': 'john@appwrite.io',
                'smtpReplyToName': 'Support Team',
                'smtpReplyToEmail': 'support@appwrite.io',
                'smtpHost': 'mail.appwrite.io',
                'smtpPort': 25,
                'smtpUsername': 'emailuser',
                'smtpPassword': '',
                'smtpSecure': 'tls',
                'pingCount': 1,
                'pingedAt': '2020-10-15T06:38:00.000+00:00',
                'labels': [],
                'status': 'active',
                'authEmailPassword': true,
                'authUsersAuthMagicURL': true,
                'authEmailOtp': true,
                'authAnonymous': true,
                'authInvites': true,
                'authJWT': true,
                'authPhone': true,
                'serviceStatusForAccount': true,
                'serviceStatusForAvatars': true,
                'serviceStatusForDatabases': true,
                'serviceStatusForTablesdb': true,
                'serviceStatusForLocale': true,
                'serviceStatusForHealth': true,
                'serviceStatusForProject': true,
                'serviceStatusForStorage': true,
                'serviceStatusForTeams': true,
                'serviceStatusForUsers': true,
                'serviceStatusForVcs': true,
                'serviceStatusForSites': true,
                'serviceStatusForFunctions': true,
                'serviceStatusForProxy': true,
                'serviceStatusForGraphql': true,
                'serviceStatusForMigrations': true,
                'serviceStatusForMessaging': true,
                'protocolStatusForRest': true,
                'protocolStatusForGraphql': true,
                'protocolStatusForWebsocket': true,
                'region': 'fra',
                'billingLimits': <String, dynamic>{
    'bandwidth': 5,
    'storage': 150,
    'users': 200000,
    'executions': 750000,
    'GBHours': 100,
    'imageTransformations': 100,
    'authPhone': 10,
    'budgetLimit': 100,
  },
                'blocks': [],
                'consoleAccessedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateSessionAlertPolicy(
                enabled: true,
            );
            expect(response, isA<models.Project>());

        });

        test('test method updateSessionDurationPolicy()', () async {

            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'New Project',
                'description': 'This is a new project.',
                'teamId': '1592981250',
                'logo': '5f5c451b403cb',
                'url': '5f5c451b403cb',
                'legalName': 'Company LTD.',
                'legalCountry': 'US',
                'legalState': 'New York',
                'legalCity': 'New York City.',
                'legalAddress': '620 Eighth Avenue, New York, NY 10018',
                'legalTaxId': '131102020',
                'authDuration': 60,
                'authLimit': 100,
                'authSessionsLimit': 10,
                'authPasswordHistory': 5,
                'authPasswordDictionary': true,
                'authPersonalDataCheck': true,
                'authDisposableEmails': true,
                'authCanonicalEmails': true,
                'authFreeEmails': true,
                'authMockNumbers': [],
                'authSessionAlerts': true,
                'authMembershipsUserName': true,
                'authMembershipsUserEmail': true,
                'authMembershipsMfa': true,
                'authMembershipsUserId': true,
                'authMembershipsUserPhone': true,
                'authInvalidateSessions': true,
                'oAuthProviders': [],
                'platforms': [],
                'webhooks': [],
                'keys': [],
                'devKeys': [],
                'smtpEnabled': true,
                'smtpSenderName': 'John Appwrite',
                'smtpSenderEmail': 'john@appwrite.io',
                'smtpReplyToName': 'Support Team',
                'smtpReplyToEmail': 'support@appwrite.io',
                'smtpHost': 'mail.appwrite.io',
                'smtpPort': 25,
                'smtpUsername': 'emailuser',
                'smtpPassword': '',
                'smtpSecure': 'tls',
                'pingCount': 1,
                'pingedAt': '2020-10-15T06:38:00.000+00:00',
                'labels': [],
                'status': 'active',
                'authEmailPassword': true,
                'authUsersAuthMagicURL': true,
                'authEmailOtp': true,
                'authAnonymous': true,
                'authInvites': true,
                'authJWT': true,
                'authPhone': true,
                'serviceStatusForAccount': true,
                'serviceStatusForAvatars': true,
                'serviceStatusForDatabases': true,
                'serviceStatusForTablesdb': true,
                'serviceStatusForLocale': true,
                'serviceStatusForHealth': true,
                'serviceStatusForProject': true,
                'serviceStatusForStorage': true,
                'serviceStatusForTeams': true,
                'serviceStatusForUsers': true,
                'serviceStatusForVcs': true,
                'serviceStatusForSites': true,
                'serviceStatusForFunctions': true,
                'serviceStatusForProxy': true,
                'serviceStatusForGraphql': true,
                'serviceStatusForMigrations': true,
                'serviceStatusForMessaging': true,
                'protocolStatusForRest': true,
                'protocolStatusForGraphql': true,
                'protocolStatusForWebsocket': true,
                'region': 'fra',
                'billingLimits': <String, dynamic>{
    'bandwidth': 5,
    'storage': 150,
    'users': 200000,
    'executions': 750000,
    'GBHours': 100,
    'imageTransformations': 100,
    'authPhone': 10,
    'budgetLimit': 100,
  },
                'blocks': [],
                'consoleAccessedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateSessionDurationPolicy(
                duration: 1,
            );
            expect(response, isA<models.Project>());

        });

        test('test method updateSessionInvalidationPolicy()', () async {

            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'New Project',
                'description': 'This is a new project.',
                'teamId': '1592981250',
                'logo': '5f5c451b403cb',
                'url': '5f5c451b403cb',
                'legalName': 'Company LTD.',
                'legalCountry': 'US',
                'legalState': 'New York',
                'legalCity': 'New York City.',
                'legalAddress': '620 Eighth Avenue, New York, NY 10018',
                'legalTaxId': '131102020',
                'authDuration': 60,
                'authLimit': 100,
                'authSessionsLimit': 10,
                'authPasswordHistory': 5,
                'authPasswordDictionary': true,
                'authPersonalDataCheck': true,
                'authDisposableEmails': true,
                'authCanonicalEmails': true,
                'authFreeEmails': true,
                'authMockNumbers': [],
                'authSessionAlerts': true,
                'authMembershipsUserName': true,
                'authMembershipsUserEmail': true,
                'authMembershipsMfa': true,
                'authMembershipsUserId': true,
                'authMembershipsUserPhone': true,
                'authInvalidateSessions': true,
                'oAuthProviders': [],
                'platforms': [],
                'webhooks': [],
                'keys': [],
                'devKeys': [],
                'smtpEnabled': true,
                'smtpSenderName': 'John Appwrite',
                'smtpSenderEmail': 'john@appwrite.io',
                'smtpReplyToName': 'Support Team',
                'smtpReplyToEmail': 'support@appwrite.io',
                'smtpHost': 'mail.appwrite.io',
                'smtpPort': 25,
                'smtpUsername': 'emailuser',
                'smtpPassword': '',
                'smtpSecure': 'tls',
                'pingCount': 1,
                'pingedAt': '2020-10-15T06:38:00.000+00:00',
                'labels': [],
                'status': 'active',
                'authEmailPassword': true,
                'authUsersAuthMagicURL': true,
                'authEmailOtp': true,
                'authAnonymous': true,
                'authInvites': true,
                'authJWT': true,
                'authPhone': true,
                'serviceStatusForAccount': true,
                'serviceStatusForAvatars': true,
                'serviceStatusForDatabases': true,
                'serviceStatusForTablesdb': true,
                'serviceStatusForLocale': true,
                'serviceStatusForHealth': true,
                'serviceStatusForProject': true,
                'serviceStatusForStorage': true,
                'serviceStatusForTeams': true,
                'serviceStatusForUsers': true,
                'serviceStatusForVcs': true,
                'serviceStatusForSites': true,
                'serviceStatusForFunctions': true,
                'serviceStatusForProxy': true,
                'serviceStatusForGraphql': true,
                'serviceStatusForMigrations': true,
                'serviceStatusForMessaging': true,
                'protocolStatusForRest': true,
                'protocolStatusForGraphql': true,
                'protocolStatusForWebsocket': true,
                'region': 'fra',
                'billingLimits': <String, dynamic>{
    'bandwidth': 5,
    'storage': 150,
    'users': 200000,
    'executions': 750000,
    'GBHours': 100,
    'imageTransformations': 100,
    'authPhone': 10,
    'budgetLimit': 100,
  },
                'blocks': [],
                'consoleAccessedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateSessionInvalidationPolicy(
                enabled: true,
            );
            expect(response, isA<models.Project>());

        });

        test('test method updateSessionLimitPolicy()', () async {

            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'New Project',
                'description': 'This is a new project.',
                'teamId': '1592981250',
                'logo': '5f5c451b403cb',
                'url': '5f5c451b403cb',
                'legalName': 'Company LTD.',
                'legalCountry': 'US',
                'legalState': 'New York',
                'legalCity': 'New York City.',
                'legalAddress': '620 Eighth Avenue, New York, NY 10018',
                'legalTaxId': '131102020',
                'authDuration': 60,
                'authLimit': 100,
                'authSessionsLimit': 10,
                'authPasswordHistory': 5,
                'authPasswordDictionary': true,
                'authPersonalDataCheck': true,
                'authDisposableEmails': true,
                'authCanonicalEmails': true,
                'authFreeEmails': true,
                'authMockNumbers': [],
                'authSessionAlerts': true,
                'authMembershipsUserName': true,
                'authMembershipsUserEmail': true,
                'authMembershipsMfa': true,
                'authMembershipsUserId': true,
                'authMembershipsUserPhone': true,
                'authInvalidateSessions': true,
                'oAuthProviders': [],
                'platforms': [],
                'webhooks': [],
                'keys': [],
                'devKeys': [],
                'smtpEnabled': true,
                'smtpSenderName': 'John Appwrite',
                'smtpSenderEmail': 'john@appwrite.io',
                'smtpReplyToName': 'Support Team',
                'smtpReplyToEmail': 'support@appwrite.io',
                'smtpHost': 'mail.appwrite.io',
                'smtpPort': 25,
                'smtpUsername': 'emailuser',
                'smtpPassword': '',
                'smtpSecure': 'tls',
                'pingCount': 1,
                'pingedAt': '2020-10-15T06:38:00.000+00:00',
                'labels': [],
                'status': 'active',
                'authEmailPassword': true,
                'authUsersAuthMagicURL': true,
                'authEmailOtp': true,
                'authAnonymous': true,
                'authInvites': true,
                'authJWT': true,
                'authPhone': true,
                'serviceStatusForAccount': true,
                'serviceStatusForAvatars': true,
                'serviceStatusForDatabases': true,
                'serviceStatusForTablesdb': true,
                'serviceStatusForLocale': true,
                'serviceStatusForHealth': true,
                'serviceStatusForProject': true,
                'serviceStatusForStorage': true,
                'serviceStatusForTeams': true,
                'serviceStatusForUsers': true,
                'serviceStatusForVcs': true,
                'serviceStatusForSites': true,
                'serviceStatusForFunctions': true,
                'serviceStatusForProxy': true,
                'serviceStatusForGraphql': true,
                'serviceStatusForMigrations': true,
                'serviceStatusForMessaging': true,
                'protocolStatusForRest': true,
                'protocolStatusForGraphql': true,
                'protocolStatusForWebsocket': true,
                'region': 'fra',
                'billingLimits': <String, dynamic>{
    'bandwidth': 5,
    'storage': 150,
    'users': 200000,
    'executions': 750000,
    'GBHours': 100,
    'imageTransformations': 100,
    'authPhone': 10,
    'budgetLimit': 100,
  },
                'blocks': [],
                'consoleAccessedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateSessionLimitPolicy(
                total: 1,
            );
            expect(response, isA<models.Project>());

        });

        test('test method updateUserLimitPolicy()', () async {

            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'New Project',
                'description': 'This is a new project.',
                'teamId': '1592981250',
                'logo': '5f5c451b403cb',
                'url': '5f5c451b403cb',
                'legalName': 'Company LTD.',
                'legalCountry': 'US',
                'legalState': 'New York',
                'legalCity': 'New York City.',
                'legalAddress': '620 Eighth Avenue, New York, NY 10018',
                'legalTaxId': '131102020',
                'authDuration': 60,
                'authLimit': 100,
                'authSessionsLimit': 10,
                'authPasswordHistory': 5,
                'authPasswordDictionary': true,
                'authPersonalDataCheck': true,
                'authDisposableEmails': true,
                'authCanonicalEmails': true,
                'authFreeEmails': true,
                'authMockNumbers': [],
                'authSessionAlerts': true,
                'authMembershipsUserName': true,
                'authMembershipsUserEmail': true,
                'authMembershipsMfa': true,
                'authMembershipsUserId': true,
                'authMembershipsUserPhone': true,
                'authInvalidateSessions': true,
                'oAuthProviders': [],
                'platforms': [],
                'webhooks': [],
                'keys': [],
                'devKeys': [],
                'smtpEnabled': true,
                'smtpSenderName': 'John Appwrite',
                'smtpSenderEmail': 'john@appwrite.io',
                'smtpReplyToName': 'Support Team',
                'smtpReplyToEmail': 'support@appwrite.io',
                'smtpHost': 'mail.appwrite.io',
                'smtpPort': 25,
                'smtpUsername': 'emailuser',
                'smtpPassword': '',
                'smtpSecure': 'tls',
                'pingCount': 1,
                'pingedAt': '2020-10-15T06:38:00.000+00:00',
                'labels': [],
                'status': 'active',
                'authEmailPassword': true,
                'authUsersAuthMagicURL': true,
                'authEmailOtp': true,
                'authAnonymous': true,
                'authInvites': true,
                'authJWT': true,
                'authPhone': true,
                'serviceStatusForAccount': true,
                'serviceStatusForAvatars': true,
                'serviceStatusForDatabases': true,
                'serviceStatusForTablesdb': true,
                'serviceStatusForLocale': true,
                'serviceStatusForHealth': true,
                'serviceStatusForProject': true,
                'serviceStatusForStorage': true,
                'serviceStatusForTeams': true,
                'serviceStatusForUsers': true,
                'serviceStatusForVcs': true,
                'serviceStatusForSites': true,
                'serviceStatusForFunctions': true,
                'serviceStatusForProxy': true,
                'serviceStatusForGraphql': true,
                'serviceStatusForMigrations': true,
                'serviceStatusForMessaging': true,
                'protocolStatusForRest': true,
                'protocolStatusForGraphql': true,
                'protocolStatusForWebsocket': true,
                'region': 'fra',
                'billingLimits': <String, dynamic>{
    'bandwidth': 5,
    'storage': 150,
    'users': 200000,
    'executions': 750000,
    'GBHours': 100,
    'imageTransformations': 100,
    'authPhone': 10,
    'budgetLimit': 100,
  },
                'blocks': [],
                'consoleAccessedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateUserLimitPolicy(
                total: 1,
            );
            expect(response, isA<models.Project>());

        });

        test('test method getPolicy()', () async {

            final Map<String, dynamic> data = {
                '\$id': 'password-dictionary',
                'userId': true,
                'userEmail': true,
                'userPhone': true,
                'userName': true,
                'userMFA': true,};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.getPolicy(
                policyId: enums.ProjectPolicy.passwordDictionary,
            );
            expect(response, isA<models.PolicyMembershipPrivacy>());

        });

        test('test method updateProtocol()', () async {

            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'New Project',
                'description': 'This is a new project.',
                'teamId': '1592981250',
                'logo': '5f5c451b403cb',
                'url': '5f5c451b403cb',
                'legalName': 'Company LTD.',
                'legalCountry': 'US',
                'legalState': 'New York',
                'legalCity': 'New York City.',
                'legalAddress': '620 Eighth Avenue, New York, NY 10018',
                'legalTaxId': '131102020',
                'authDuration': 60,
                'authLimit': 100,
                'authSessionsLimit': 10,
                'authPasswordHistory': 5,
                'authPasswordDictionary': true,
                'authPersonalDataCheck': true,
                'authDisposableEmails': true,
                'authCanonicalEmails': true,
                'authFreeEmails': true,
                'authMockNumbers': [],
                'authSessionAlerts': true,
                'authMembershipsUserName': true,
                'authMembershipsUserEmail': true,
                'authMembershipsMfa': true,
                'authMembershipsUserId': true,
                'authMembershipsUserPhone': true,
                'authInvalidateSessions': true,
                'oAuthProviders': [],
                'platforms': [],
                'webhooks': [],
                'keys': [],
                'devKeys': [],
                'smtpEnabled': true,
                'smtpSenderName': 'John Appwrite',
                'smtpSenderEmail': 'john@appwrite.io',
                'smtpReplyToName': 'Support Team',
                'smtpReplyToEmail': 'support@appwrite.io',
                'smtpHost': 'mail.appwrite.io',
                'smtpPort': 25,
                'smtpUsername': 'emailuser',
                'smtpPassword': '',
                'smtpSecure': 'tls',
                'pingCount': 1,
                'pingedAt': '2020-10-15T06:38:00.000+00:00',
                'labels': [],
                'status': 'active',
                'authEmailPassword': true,
                'authUsersAuthMagicURL': true,
                'authEmailOtp': true,
                'authAnonymous': true,
                'authInvites': true,
                'authJWT': true,
                'authPhone': true,
                'serviceStatusForAccount': true,
                'serviceStatusForAvatars': true,
                'serviceStatusForDatabases': true,
                'serviceStatusForTablesdb': true,
                'serviceStatusForLocale': true,
                'serviceStatusForHealth': true,
                'serviceStatusForProject': true,
                'serviceStatusForStorage': true,
                'serviceStatusForTeams': true,
                'serviceStatusForUsers': true,
                'serviceStatusForVcs': true,
                'serviceStatusForSites': true,
                'serviceStatusForFunctions': true,
                'serviceStatusForProxy': true,
                'serviceStatusForGraphql': true,
                'serviceStatusForMigrations': true,
                'serviceStatusForMessaging': true,
                'protocolStatusForRest': true,
                'protocolStatusForGraphql': true,
                'protocolStatusForWebsocket': true,
                'region': 'fra',
                'billingLimits': <String, dynamic>{
    'bandwidth': 5,
    'storage': 150,
    'users': 200000,
    'executions': 750000,
    'GBHours': 100,
    'imageTransformations': 100,
    'authPhone': 10,
    'budgetLimit': 100,
  },
                'blocks': [],
                'consoleAccessedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateProtocol(
                protocolId: enums.ProtocolId.rest,
                enabled: true,
            );
            expect(response, isA<models.Project>());

        });

        test('test method updateService()', () async {

            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'New Project',
                'description': 'This is a new project.',
                'teamId': '1592981250',
                'logo': '5f5c451b403cb',
                'url': '5f5c451b403cb',
                'legalName': 'Company LTD.',
                'legalCountry': 'US',
                'legalState': 'New York',
                'legalCity': 'New York City.',
                'legalAddress': '620 Eighth Avenue, New York, NY 10018',
                'legalTaxId': '131102020',
                'authDuration': 60,
                'authLimit': 100,
                'authSessionsLimit': 10,
                'authPasswordHistory': 5,
                'authPasswordDictionary': true,
                'authPersonalDataCheck': true,
                'authDisposableEmails': true,
                'authCanonicalEmails': true,
                'authFreeEmails': true,
                'authMockNumbers': [],
                'authSessionAlerts': true,
                'authMembershipsUserName': true,
                'authMembershipsUserEmail': true,
                'authMembershipsMfa': true,
                'authMembershipsUserId': true,
                'authMembershipsUserPhone': true,
                'authInvalidateSessions': true,
                'oAuthProviders': [],
                'platforms': [],
                'webhooks': [],
                'keys': [],
                'devKeys': [],
                'smtpEnabled': true,
                'smtpSenderName': 'John Appwrite',
                'smtpSenderEmail': 'john@appwrite.io',
                'smtpReplyToName': 'Support Team',
                'smtpReplyToEmail': 'support@appwrite.io',
                'smtpHost': 'mail.appwrite.io',
                'smtpPort': 25,
                'smtpUsername': 'emailuser',
                'smtpPassword': '',
                'smtpSecure': 'tls',
                'pingCount': 1,
                'pingedAt': '2020-10-15T06:38:00.000+00:00',
                'labels': [],
                'status': 'active',
                'authEmailPassword': true,
                'authUsersAuthMagicURL': true,
                'authEmailOtp': true,
                'authAnonymous': true,
                'authInvites': true,
                'authJWT': true,
                'authPhone': true,
                'serviceStatusForAccount': true,
                'serviceStatusForAvatars': true,
                'serviceStatusForDatabases': true,
                'serviceStatusForTablesdb': true,
                'serviceStatusForLocale': true,
                'serviceStatusForHealth': true,
                'serviceStatusForProject': true,
                'serviceStatusForStorage': true,
                'serviceStatusForTeams': true,
                'serviceStatusForUsers': true,
                'serviceStatusForVcs': true,
                'serviceStatusForSites': true,
                'serviceStatusForFunctions': true,
                'serviceStatusForProxy': true,
                'serviceStatusForGraphql': true,
                'serviceStatusForMigrations': true,
                'serviceStatusForMessaging': true,
                'protocolStatusForRest': true,
                'protocolStatusForGraphql': true,
                'protocolStatusForWebsocket': true,
                'region': 'fra',
                'billingLimits': <String, dynamic>{
    'bandwidth': 5,
    'storage': 150,
    'users': 200000,
    'executions': 750000,
    'GBHours': 100,
    'imageTransformations': 100,
    'authPhone': 10,
    'budgetLimit': 100,
  },
                'blocks': [],
                'consoleAccessedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateService(
                serviceId: enums.ServiceId.account,
                enabled: true,
            );
            expect(response, isA<models.Project>());

        });

        test('test method updateSMTP()', () async {

            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'New Project',
                'description': 'This is a new project.',
                'teamId': '1592981250',
                'logo': '5f5c451b403cb',
                'url': '5f5c451b403cb',
                'legalName': 'Company LTD.',
                'legalCountry': 'US',
                'legalState': 'New York',
                'legalCity': 'New York City.',
                'legalAddress': '620 Eighth Avenue, New York, NY 10018',
                'legalTaxId': '131102020',
                'authDuration': 60,
                'authLimit': 100,
                'authSessionsLimit': 10,
                'authPasswordHistory': 5,
                'authPasswordDictionary': true,
                'authPersonalDataCheck': true,
                'authDisposableEmails': true,
                'authCanonicalEmails': true,
                'authFreeEmails': true,
                'authMockNumbers': [],
                'authSessionAlerts': true,
                'authMembershipsUserName': true,
                'authMembershipsUserEmail': true,
                'authMembershipsMfa': true,
                'authMembershipsUserId': true,
                'authMembershipsUserPhone': true,
                'authInvalidateSessions': true,
                'oAuthProviders': [],
                'platforms': [],
                'webhooks': [],
                'keys': [],
                'devKeys': [],
                'smtpEnabled': true,
                'smtpSenderName': 'John Appwrite',
                'smtpSenderEmail': 'john@appwrite.io',
                'smtpReplyToName': 'Support Team',
                'smtpReplyToEmail': 'support@appwrite.io',
                'smtpHost': 'mail.appwrite.io',
                'smtpPort': 25,
                'smtpUsername': 'emailuser',
                'smtpPassword': '',
                'smtpSecure': 'tls',
                'pingCount': 1,
                'pingedAt': '2020-10-15T06:38:00.000+00:00',
                'labels': [],
                'status': 'active',
                'authEmailPassword': true,
                'authUsersAuthMagicURL': true,
                'authEmailOtp': true,
                'authAnonymous': true,
                'authInvites': true,
                'authJWT': true,
                'authPhone': true,
                'serviceStatusForAccount': true,
                'serviceStatusForAvatars': true,
                'serviceStatusForDatabases': true,
                'serviceStatusForTablesdb': true,
                'serviceStatusForLocale': true,
                'serviceStatusForHealth': true,
                'serviceStatusForProject': true,
                'serviceStatusForStorage': true,
                'serviceStatusForTeams': true,
                'serviceStatusForUsers': true,
                'serviceStatusForVcs': true,
                'serviceStatusForSites': true,
                'serviceStatusForFunctions': true,
                'serviceStatusForProxy': true,
                'serviceStatusForGraphql': true,
                'serviceStatusForMigrations': true,
                'serviceStatusForMessaging': true,
                'protocolStatusForRest': true,
                'protocolStatusForGraphql': true,
                'protocolStatusForWebsocket': true,
                'region': 'fra',
                'billingLimits': <String, dynamic>{
    'bandwidth': 5,
    'storage': 150,
    'users': 200000,
    'executions': 750000,
    'GBHours': 100,
    'imageTransformations': 100,
    'authPhone': 10,
    'budgetLimit': 100,
  },
                'blocks': [],
                'consoleAccessedAt': '2020-10-15T06:38:00.000+00:00',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateSMTP(
            );
            expect(response, isA<models.Project>());

        });

        test('test method createSMTPTest()', () async {

            final data = '';

            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.createSMTPTest(
                emails: [],
            );
        });

        test('test method listEmailTemplates()', () async {

            final Map<String, dynamic> data = {
                'total': 5,
                'templates': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.listEmailTemplates(
            );
            expect(response, isA<models.EmailTemplateList>());

        });

        test('test method updateEmailTemplate()', () async {

            final Map<String, dynamic> data = {
                'templateId': 'verification',
                'locale': 'en_us',
                'message': 'Click on the link to verify your account.',
                'senderName': 'My User',
                'senderEmail': 'mail@appwrite.io',
                'replyToEmail': 'emails@appwrite.io',
                'replyToName': 'Support Team',
                'subject': 'Please verify your email address',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateEmailTemplate(
                templateId: enums.EmailTemplateType.verification,
            );
            expect(response, isA<models.EmailTemplate>());

        });

        test('test method getEmailTemplate()', () async {

            final Map<String, dynamic> data = {
                'templateId': 'verification',
                'locale': 'en_us',
                'message': 'Click on the link to verify your account.',
                'senderName': 'My User',
                'senderEmail': 'mail@appwrite.io',
                'replyToEmail': 'emails@appwrite.io',
                'replyToName': 'Support Team',
                'subject': 'Please verify your email address',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.getEmailTemplate(
                templateId: enums.EmailTemplateType.verification,
            );
            expect(response, isA<models.EmailTemplate>());

        });

        test('test method listVariables()', () async {

            final Map<String, dynamic> data = {
                'total': 5,
                'variables': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.listVariables(
            );
            expect(response, isA<models.VariableList>());

        });

        test('test method createVariable()', () async {

            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'key': 'API_KEY',
                'value': 'myPa\$\$word1',
                'secret': true,
                'resourceType': 'function',
                'resourceId': 'myAwesomeFunction',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.createVariable(
                variableId: '<VARIABLE_ID>',
                key: '<KEY>',
                value: '<VALUE>',
            );
            expect(response, isA<models.Variable>());

        });

        test('test method getVariable()', () async {

            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'key': 'API_KEY',
                'value': 'myPa\$\$word1',
                'secret': true,
                'resourceType': 'function',
                'resourceId': 'myAwesomeFunction',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.getVariable(
                variableId: '<VARIABLE_ID>',
            );
            expect(response, isA<models.Variable>());

        });

        test('test method updateVariable()', () async {

            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'key': 'API_KEY',
                'value': 'myPa\$\$word1',
                'secret': true,
                'resourceType': 'function',
                'resourceId': 'myAwesomeFunction',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.updateVariable(
                variableId: '<VARIABLE_ID>',
            );
            expect(response, isA<models.Variable>());

        });

        test('test method deleteVariable()', () async {

            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await project.deleteVariable(
                variableId: '<VARIABLE_ID>',
            );
        });

    });
}
