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
    group('Organization test', () {
        late MockClient client;
        late Organization organization;

        setUp(() {
            client = MockClient();
            organization = Organization(client);
        });

        test('test method listKeys()', () async {

            final Map<String, dynamic> data = {
                'total': 5,
                'keys': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await organization.listKeys(
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


            final response = await organization.createKey(
                keyId: '<KEY_ID>',
                name: '<NAME>',
                scopes: [enums.OrganizationKeyScopes.projectsRead],
            );
            expect(response, isA<models.Key>());

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


            final response = await organization.getKey(
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


            final response = await organization.updateKey(
                keyId: '<KEY_ID>',
                name: '<NAME>',
                scopes: [enums.OrganizationKeyScopes.projectsRead],
            );
            expect(response, isA<models.Key>());

        });

        test('test method deleteKey()', () async {

            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await organization.deleteKey(
                keyId: '<KEY_ID>',
            );
        });

        test('test method listProjects()', () async {

            final Map<String, dynamic> data = {
                'total': 5,
                'projects': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await organization.listProjects(
            );
            expect(response, isA<models.ProjectList>());

        });

        test('test method createProject()', () async {

            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'New Project',
                'teamId': '1592981250',
                'region': 'fra',
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
                'authMethods': [],
                'services': [],
                'protocols': [],
                'blocks': [],
                'consoleAccessedAt': '2020-10-15T06:38:00.000+00:00',
                'oAuth2ServerEnabled': true,
                'oAuth2ServerAuthorizationUrl': 'https://cloud.appwrite.io/oauth2/.well-known/openid-configuration',
                'oAuth2ServerScopes': [],
                'oAuth2ServerAccessTokenDuration': 3600,
                'oAuth2ServerRefreshTokenDuration': 86400,
                'oAuth2ServerPublicAccessTokenDuration': 3600,
                'oAuth2ServerPublicRefreshTokenDuration': 2592000,
                'oAuth2ServerConfidentialPkce': true,
                'oAuth2ServerDiscoveryUrl': 'https://auth.example.com/.well-known/openid-configuration',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await organization.createProject(
                projectId: '',
                name: '<NAME>',
            );
            expect(response, isA<models.Project>());

        });

        test('test method getProject()', () async {

            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'New Project',
                'teamId': '1592981250',
                'region': 'fra',
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
                'authMethods': [],
                'services': [],
                'protocols': [],
                'blocks': [],
                'consoleAccessedAt': '2020-10-15T06:38:00.000+00:00',
                'oAuth2ServerEnabled': true,
                'oAuth2ServerAuthorizationUrl': 'https://cloud.appwrite.io/oauth2/.well-known/openid-configuration',
                'oAuth2ServerScopes': [],
                'oAuth2ServerAccessTokenDuration': 3600,
                'oAuth2ServerRefreshTokenDuration': 86400,
                'oAuth2ServerPublicAccessTokenDuration': 3600,
                'oAuth2ServerPublicRefreshTokenDuration': 2592000,
                'oAuth2ServerConfidentialPkce': true,
                'oAuth2ServerDiscoveryUrl': 'https://auth.example.com/.well-known/openid-configuration',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await organization.getProject(
                projectId: '<PROJECT_ID>',
            );
            expect(response, isA<models.Project>());

        });

        test('test method updateProject()', () async {

            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'New Project',
                'teamId': '1592981250',
                'region': 'fra',
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
                'authMethods': [],
                'services': [],
                'protocols': [],
                'blocks': [],
                'consoleAccessedAt': '2020-10-15T06:38:00.000+00:00',
                'oAuth2ServerEnabled': true,
                'oAuth2ServerAuthorizationUrl': 'https://cloud.appwrite.io/oauth2/.well-known/openid-configuration',
                'oAuth2ServerScopes': [],
                'oAuth2ServerAccessTokenDuration': 3600,
                'oAuth2ServerRefreshTokenDuration': 86400,
                'oAuth2ServerPublicAccessTokenDuration': 3600,
                'oAuth2ServerPublicRefreshTokenDuration': 2592000,
                'oAuth2ServerConfidentialPkce': true,
                'oAuth2ServerDiscoveryUrl': 'https://auth.example.com/.well-known/openid-configuration',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await organization.updateProject(
                projectId: '<PROJECT_ID>',
                name: '<NAME>',
            );
            expect(response, isA<models.Project>());

        });

        test('test method deleteProject()', () async {

            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await organization.deleteProject(
                projectId: '<PROJECT_ID>',
            );
        });

    });
}
