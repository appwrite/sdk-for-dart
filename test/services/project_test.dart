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
  Future<String?> webAuth(Uri? url) async {
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
  group('Project test', () {
    late MockClient client;
    late Project project;

    setUp(() {
      client = MockClient();
      project = Project(client);
    });

    test('test method get()', () async {
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
        'smtpPassword': 'smtp-password',
        'smtpSecure': 'tls',
        'pingCount': 1,
        'pingedAt': '2020-10-15T06:38:00.000+00:00',
        'labels': [],
        'status': 'active',
        'onboarding': <String, dynamic>{},
        'authMethods': [],
        'services': [],
        'protocols': [],
        'blocks': [],
        'consoleAccessedAt': '2020-10-15T06:38:00.000+00:00',
        'wafEnabled': true,
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.get();
      expect(response, isA<models.Project>());
    });

    test('test method delete()', () async {
      final data = '';

      when(client.call(
        HttpMethod.delete,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.delete();
    });

    test('test method updateAuthMethod()', () async {
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
        'smtpPassword': 'smtp-password',
        'smtpSecure': 'tls',
        'pingCount': 1,
        'pingedAt': '2020-10-15T06:38:00.000+00:00',
        'labels': [],
        'status': 'active',
        'onboarding': <String, dynamic>{},
        'authMethods': [],
        'services': [],
        'protocols': [],
        'blocks': [],
        'consoleAccessedAt': '2020-10-15T06:38:00.000+00:00',
        'wafEnabled': true,
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateAuthMethod(
        methodId: enums.ProjectAuthMethodId.emailPassword,
        enabled: true,
      );
      expect(response, isA<models.Project>());
    });

    test('test method listKeys()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'keys': [],
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.listKeys();
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
        'sdks': [],
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.createKey(
        keyId: '<KEY_ID>',
        name: '<NAME>',
        scopes: [enums.ProjectKeyScopes.projectRead],
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
        'sdks': [],
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.createEphemeralKey(
        scopes: [enums.ProjectKeyScopes.projectRead],
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
        'sdks': [],
      };

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
        'sdks': [],
      };

      when(client.call(
        HttpMethod.put,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateKey(
        keyId: '<KEY_ID>',
        name: '<NAME>',
        scopes: [enums.ProjectKeyScopes.projectRead],
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
        'smtpPassword': 'smtp-password',
        'smtpSecure': 'tls',
        'pingCount': 1,
        'pingedAt': '2020-10-15T06:38:00.000+00:00',
        'labels': [],
        'status': 'active',
        'onboarding': <String, dynamic>{},
        'authMethods': [],
        'services': [],
        'protocols': [],
        'blocks': [],
        'consoleAccessedAt': '2020-10-15T06:38:00.000+00:00',
        'wafEnabled': true,
      };

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
        'mockNumbers': [],
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.listMockPhones();
      expect(response, isA<models.MockNumberList>());
    });

    test('test method createMockPhone()', () async {
      final Map<String, dynamic> data = {
        'number': '+1612842323',
        'otp': '123456',
        '\$createdAt': '2020-10-15T06:38:00.000+00:00',
        '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
      };

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
        '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
      };

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
        '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
      };

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
        'providers': [],
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.listOAuth2Providers();
      expect(response, isA<models.OAuth2ProviderList>());
    });

    test('test method updateOAuth2Server()', () async {
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
        'smtpPassword': 'smtp-password',
        'smtpSecure': 'tls',
        'pingCount': 1,
        'pingedAt': '2020-10-15T06:38:00.000+00:00',
        'labels': [],
        'status': 'active',
        'onboarding': <String, dynamic>{},
        'authMethods': [],
        'services': [],
        'protocols': [],
        'blocks': [],
        'consoleAccessedAt': '2020-10-15T06:38:00.000+00:00',
        'wafEnabled': true,
      };

      when(client.call(
        HttpMethod.put,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateOAuth2Server(
        enabled: true,
        authorizationUrl: 'https://example.com',
      );
      expect(response, isA<models.Project>());
    });

    test('test method updateOAuth2Amazon()', () async {
      final Map<String, dynamic> data = {
        '\$id': 'github',
        'enabled': true,
        'clientId':
            'amzn1.application-oa2-client.87400c00000000000000000000063d5b2',
        'clientSecret':
            '79ffe4000000000000000000000000000000000000000000000000000002de55',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateOAuth2Amazon();
      expect(response, isA<models.OAuth2Amazon>());
    });

    test('test method updateOAuth2Apple()', () async {
      final Map<String, dynamic> data = {
        '\$id': 'apple',
        'enabled': true,
        'serviceId': 'ip.appwrite.app.web',
        'keyId': 'P4000000N8',
        'teamId': 'D4000000R6',
        'p8File':
            '-----BEGIN PRIVATE KEY-----MIGTAg...jy2Xbna-----END PRIVATE KEY-----',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateOAuth2Apple();
      expect(response, isA<models.OAuth2Apple>());
    });

    test('test method updateOAuth2Appwrite()', () async {
      final Map<String, dynamic> data = {
        '\$id': 'github',
        'enabled': true,
        'clientId': '6a42000000000000b5a0',
        'clientSecret':
            'b86afd000000000000000000000000000000000000000000000000000ced5f93',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateOAuth2Appwrite();
      expect(response, isA<models.OAuth2Appwrite>());
    });

    test('test method updateOAuth2Auth0()', () async {
      final Map<String, dynamic> data = {
        '\$id': 'github',
        'enabled': true,
        'clientId': 'OaOkIA000000000000000000005KLSYq',
        'clientSecret':
            'zXz0000-00000000000000000000000000000-00000000000000000000PJafnF',
        'endpoint': 'example.us.auth0.com',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateOAuth2Auth0();
      expect(response, isA<models.OAuth2Auth0>());
    });

    test('test method updateOAuth2Authentik()', () async {
      final Map<String, dynamic> data = {
        '\$id': 'github',
        'enabled': true,
        'clientId': 'dTKOPa0000000000000000000000000000e7G8hv',
        'clientSecret':
            'ntQadq000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000Hp5WK',
        'endpoint': 'example.authentik.com',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateOAuth2Authentik();
      expect(response, isA<models.OAuth2Authentik>());
    });

    test('test method updateOAuth2Autodesk()', () async {
      final Map<String, dynamic> data = {
        '\$id': 'github',
        'enabled': true,
        'clientId': '5zw90v00000000000000000000kVYXN7',
        'clientSecret': '7I000000000000MW',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateOAuth2Autodesk();
      expect(response, isA<models.OAuth2Autodesk>());
    });

    test('test method updateOAuth2Bitbucket()', () async {
      final Map<String, dynamic> data = {
        '\$id': 'github',
        'enabled': true,
        'key': 'Knt70000000000ByRc',
        'secret': 'NMfLZJ00000000000000000000TLQdDx',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateOAuth2Bitbucket();
      expect(response, isA<models.OAuth2Bitbucket>());
    });

    test('test method updateOAuth2Bitly()', () async {
      final Map<String, dynamic> data = {
        '\$id': 'github',
        'enabled': true,
        'clientId': 'd95151000000000000000000000000000067af9b',
        'clientSecret': 'a13e250000000000000000000000000000d73095',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateOAuth2Bitly();
      expect(response, isA<models.OAuth2Bitly>());
    });

    test('test method updateOAuth2Box()', () async {
      final Map<String, dynamic> data = {
        '\$id': 'github',
        'enabled': true,
        'clientId': 'deglcs00000000000000000000x2og6y',
        'clientSecret': 'OKM1f100000000000000000000eshEif',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateOAuth2Box();
      expect(response, isA<models.OAuth2Box>());
    });

    test('test method updateOAuth2Dailymotion()', () async {
      final Map<String, dynamic> data = {
        '\$id': 'github',
        'enabled': true,
        'apiKey': '07a9000000000000067f',
        'apiSecret': 'a399a90000000000000000000000000000d90639',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateOAuth2Dailymotion();
      expect(response, isA<models.OAuth2Dailymotion>());
    });

    test('test method updateOAuth2Discord()', () async {
      final Map<String, dynamic> data = {
        '\$id': 'github',
        'enabled': true,
        'clientId': '950722000000343754',
        'clientSecret': 'YmPXnM000000000000000000002zFg5D',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateOAuth2Discord();
      expect(response, isA<models.OAuth2Discord>());
    });

    test('test method updateOAuth2Disqus()', () async {
      final Map<String, dynamic> data = {
        '\$id': 'github',
        'enabled': true,
        'publicKey':
            'cgegH70000000000000000000000000000000000000000000000000000Hr1nYX',
        'secretKey':
            'W7Bykj00000000000000000000000000000000000000000000000000003o43w9',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateOAuth2Disqus();
      expect(response, isA<models.OAuth2Disqus>());
    });

    test('test method updateOAuth2Dropbox()', () async {
      final Map<String, dynamic> data = {
        '\$id': 'github',
        'enabled': true,
        'appKey': 'jl000000000009t',
        'appSecret': 'g200000000000vw',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateOAuth2Dropbox();
      expect(response, isA<models.OAuth2Dropbox>());
    });

    test('test method updateOAuth2Etsy()', () async {
      final Map<String, dynamic> data = {
        '\$id': 'github',
        'enabled': true,
        'keyString': 'nsgzxh0000000000008j85a2',
        'sharedSecret': 'tp000000ru',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateOAuth2Etsy();
      expect(response, isA<models.OAuth2Etsy>());
    });

    test('test method updateOAuth2Facebook()', () async {
      final Map<String, dynamic> data = {
        '\$id': 'github',
        'enabled': true,
        'appId': '260600000007694',
        'appSecret': '2d0b2800000000000000000000d38af4',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateOAuth2Facebook();
      expect(response, isA<models.OAuth2Facebook>());
    });

    test('test method updateOAuth2Figma()', () async {
      final Map<String, dynamic> data = {
        '\$id': 'github',
        'enabled': true,
        'clientId': 'byay5H0000000000VtiI40',
        'clientSecret': 'yEpOYn0000000000000000004iIsU5',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateOAuth2Figma();
      expect(response, isA<models.OAuth2Figma>());
    });

    test('test method updateOAuth2FusionAuth()', () async {
      final Map<String, dynamic> data = {
        '\$id': 'github',
        'enabled': true,
        'clientId': 'b2222c00-0000-0000-0000-000000862097',
        'clientSecret': 'Jx4s0C0000000000000000000000000000000wGqLsc',
        'endpoint': 'example.fusionauth.io',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateOAuth2FusionAuth();
      expect(response, isA<models.OAuth2FusionAuth>());
    });

    test('test method updateOAuth2GitHub()', () async {
      final Map<String, dynamic> data = {
        '\$id': 'github',
        'enabled': true,
        'clientId': 'e4d87900000000540733',
        'clientSecret': '5e07c00000000000000000000000000000198bcc',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateOAuth2GitHub();
      expect(response, isA<models.OAuth2Github>());
    });

    test('test method updateOAuth2Gitlab()', () async {
      final Map<String, dynamic> data = {
        '\$id': 'github',
        'enabled': true,
        'applicationId':
            'd41ffe0000000000000000000000000000000000000000000000000000d5e252',
        'secret':
            'gloas-838cfa0000000000000000000000000000000000000000000000000000ecbb38',
        'endpoint': 'https://gitlab.com',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateOAuth2Gitlab();
      expect(response, isA<models.OAuth2Gitlab>());
    });

    test('test method updateOAuth2Google()', () async {
      final Map<String, dynamic> data = {
        '\$id': 'github',
        'enabled': true,
        'clientId':
            '120000000095-92ifjb00000000000000000000g7ijfb.apps.googleusercontent.com',
        'clientSecret': 'GOCSPX-2k8gsR0000000000000000VNahJj',
        'prompt': [],
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateOAuth2Google();
      expect(response, isA<models.OAuth2Google>());
    });

    test('test method updateOAuth2Keycloak()', () async {
      final Map<String, dynamic> data = {
        '\$id': 'github',
        'enabled': true,
        'clientId': 'appwrite-o0000000st-app',
        'clientSecret': 'jdjrJd00000000000000000000HUsaZO',
        'endpoint': 'keycloak.example.com',
        'realmName': 'appwrite-realm',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateOAuth2Keycloak();
      expect(response, isA<models.OAuth2Keycloak>());
    });

    test('test method updateOAuth2Kick()', () async {
      final Map<String, dynamic> data = {
        '\$id': 'github',
        'enabled': true,
        'clientId': '01KQ7C00000000000001MFHS32',
        'clientSecret':
            '34ac5600000000000000000000000000000000000000000000000000e830c8b',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateOAuth2Kick();
      expect(response, isA<models.OAuth2Kick>());
    });

    test('test method updateOAuth2Linkedin()', () async {
      final Map<String, dynamic> data = {
        '\$id': 'github',
        'enabled': true,
        'clientId': '770000000000dv',
        'primaryClientSecret': 'WPL_AP1.2Bf0000000000000./HtlYw==',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateOAuth2Linkedin();
      expect(response, isA<models.OAuth2Linkedin>());
    });

    test('test method updateOAuth2Microsoft()', () async {
      final Map<String, dynamic> data = {
        '\$id': 'github',
        'enabled': true,
        'applicationId': '00001111-aaaa-2222-bbbb-3333cccc4444',
        'applicationSecret': 'A1bC2dE3fH4iJ5kL6mN7oP8qR9sT0u',
        'tenant': 'common',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateOAuth2Microsoft();
      expect(response, isA<models.OAuth2Microsoft>());
    });

    test('test method updateOAuth2Notion()', () async {
      final Map<String, dynamic> data = {
        '\$id': 'github',
        'enabled': true,
        'oauthClientId': '341d8700-0000-0000-0000-000000446ee3',
        'oauthClientSecret':
            'secret_dLUr4b000000000000000000000000000000lFHAa9',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateOAuth2Notion();
      expect(response, isA<models.OAuth2Notion>());
    });

    test('test method updateOAuth2Oidc()', () async {
      final Map<String, dynamic> data = {
        '\$id': 'github',
        'enabled': true,
        'clientId': 'qibI2x0000000000000000000000000006L2YFoG',
        'clientSecret':
            'Ah68ed000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003qpcHV',
        'wellKnownURL': 'https://myoauth.com/.well-known/openid-configuration',
        'authorizationURL': 'https://myoauth.com/oauth2/authorize',
        'tokenURL': 'https://myoauth.com/oauth2/token',
        'userInfoURL': 'https://myoauth.com/oauth2/userinfo',
        'prompt': [],
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateOAuth2Oidc();
      expect(response, isA<models.OAuth2Oidc>());
    });

    test('test method updateOAuth2Okta()', () async {
      final Map<String, dynamic> data = {
        '\$id': 'github',
        'enabled': true,
        'clientId': '0oa00000000000000698',
        'clientSecret':
            'Kiq0000000000000000000000000000000000000-00000000000H2L5-3SJ-vRV',
        'domain': 'trial-6400025.okta.com',
        'authorizationServerId': 'aus000000000000000h7z',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateOAuth2Okta();
      expect(response, isA<models.OAuth2Okta>());
    });

    test('test method updateOAuth2Paypal()', () async {
      final Map<String, dynamic> data = {
        '\$id': 'github',
        'enabled': true,
        'clientId':
            'AdhIEG7-000000000000-0000000000000000000000000000000-0000000000000000000000-2pyB',
        'secretKey':
            'EH8KCXtew--000000000000000000000000000000000000000_C-1_5UP_000000000000000CB7KDp',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateOAuth2Paypal();
      expect(response, isA<models.OAuth2Paypal>());
    });

    test('test method updateOAuth2PaypalSandbox()', () async {
      final Map<String, dynamic> data = {
        '\$id': 'github',
        'enabled': true,
        'clientId':
            'AdhIEG7-000000000000-0000000000000000000000000000000-0000000000000000000000-2pyB',
        'secretKey':
            'EH8KCXtew--000000000000000000000000000000000000000_C-1_5UP_000000000000000CB7KDp',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateOAuth2PaypalSandbox();
      expect(response, isA<models.OAuth2Paypal>());
    });

    test('test method updateOAuth2Podio()', () async {
      final Map<String, dynamic> data = {
        '\$id': 'github',
        'enabled': true,
        'clientId': 'appwrite-oauth-test-app',
        'clientSecret':
            'Rn247T0000000000000000000000000000000000000000000000000000W2zWTN',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateOAuth2Podio();
      expect(response, isA<models.OAuth2Podio>());
    });

    test('test method updateOAuth2Salesforce()', () async {
      final Map<String, dynamic> data = {
        '\$id': 'github',
        'enabled': true,
        'customerKey':
            '3MVG9I0000000000000000000000000000000000000000000000000000000000000000000000000C5Aejq',
        'customerSecret': '3w000000000000e2',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateOAuth2Salesforce();
      expect(response, isA<models.OAuth2Salesforce>());
    });

    test('test method updateOAuth2Slack()', () async {
      final Map<String, dynamic> data = {
        '\$id': 'github',
        'enabled': true,
        'clientId': '23000000089.15000000000023',
        'clientSecret': '81656000000000000000000000f3d2fd',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateOAuth2Slack();
      expect(response, isA<models.OAuth2Slack>());
    });

    test('test method updateOAuth2Spotify()', () async {
      final Map<String, dynamic> data = {
        '\$id': 'github',
        'enabled': true,
        'clientId': '6ec271000000000000000000009beace',
        'clientSecret': 'db068a000000000000000000008b5b9f',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateOAuth2Spotify();
      expect(response, isA<models.OAuth2Spotify>());
    });

    test('test method updateOAuth2Stripe()', () async {
      final Map<String, dynamic> data = {
        '\$id': 'github',
        'enabled': true,
        'clientId': 'ca_UKibXX0000000000000000000006byvR',
        'apiSecretKey':
            'sk_51SfOd000000000000000000000000000000000000000000000000000000000000000000000000000000000000000QGWYfp',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateOAuth2Stripe();
      expect(response, isA<models.OAuth2Stripe>());
    });

    test('test method updateOAuth2Tradeshift()', () async {
      final Map<String, dynamic> data = {
        '\$id': 'github',
        'enabled': true,
        'oauth2ClientId': 'appwrite-test-org.appwrite-test-app',
        'oauth2ClientSecret': '7cb52700-0000-0000-0000-000000ca5b83',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateOAuth2Tradeshift();
      expect(response, isA<models.OAuth2Tradeshift>());
    });

    test('test method updateOAuth2TradeshiftSandbox()', () async {
      final Map<String, dynamic> data = {
        '\$id': 'github',
        'enabled': true,
        'oauth2ClientId': 'appwrite-test-org.appwrite-test-app',
        'oauth2ClientSecret': '7cb52700-0000-0000-0000-000000ca5b83',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateOAuth2TradeshiftSandbox();
      expect(response, isA<models.OAuth2Tradeshift>());
    });

    test('test method updateOAuth2Twitch()', () async {
      final Map<String, dynamic> data = {
        '\$id': 'github',
        'enabled': true,
        'clientId': 'vvi0in000000000000000000ikmt9p',
        'clientSecret': 'pmapue000000000000000000zylw3v',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateOAuth2Twitch();
      expect(response, isA<models.OAuth2Twitch>());
    });

    test('test method updateOAuth2WordPress()', () async {
      final Map<String, dynamic> data = {
        '\$id': 'github',
        'enabled': true,
        'clientId': '130005',
        'clientSecret':
            'PlBfJS0000000000000000000000000000000000000000000000000000EdUZJk',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateOAuth2WordPress();
      expect(response, isA<models.OAuth2WordPress>());
    });

    test('test method updateOAuth2X()', () async {
      final Map<String, dynamic> data = {
        '\$id': 'github',
        'enabled': true,
        'customerKey': 'slzZV0000000000000NFLaWT',
        'secretKey': 'tkEPkp00000000000000000000000000000000000000FTxbI9',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateOAuth2X();
      expect(response, isA<models.OAuth2X>());
    });

    test('test method updateOAuth2Yahoo()', () async {
      final Map<String, dynamic> data = {
        '\$id': 'github',
        'enabled': true,
        'clientId':
            'dj0yJm000000000000000000000000000000000000000000000000000000000000000000000000000000000000Z4PWRm',
        'clientSecret': 'cf978f0000000000000000000000000000c5e2e9',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateOAuth2Yahoo();
      expect(response, isA<models.OAuth2Yahoo>());
    });

    test('test method updateOAuth2Yandex()', () async {
      final Map<String, dynamic> data = {
        '\$id': 'github',
        'enabled': true,
        'clientId': '6a8a6a0000000000000000000091483c',
        'clientSecret': 'bbf98500000000000000000000c75a63',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateOAuth2Yandex();
      expect(response, isA<models.OAuth2Yandex>());
    });

    test('test method updateOAuth2Zoho()', () async {
      final Map<String, dynamic> data = {
        '\$id': 'github',
        'enabled': true,
        'clientId': '1000.83C178000000000000000000RPNX0B',
        'clientSecret': 'fb5cac000000000000000000000000000000a68f6e',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateOAuth2Zoho();
      expect(response, isA<models.OAuth2Zoho>());
    });

    test('test method updateOAuth2Zoom()', () async {
      final Map<String, dynamic> data = {
        '\$id': 'github',
        'enabled': true,
        'clientId': 'QMAC00000000000000w0AQ',
        'clientSecret': 'GAWsG4000000000000000000007U01ON',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateOAuth2Zoom();
      expect(response, isA<models.OAuth2Zoom>());
    });

    test('test method getOAuth2Provider()', () async {
      final Map<String, dynamic> data = {
        '\$id': 'github',
        'enabled': true,
        'applicationId': '00001111-aaaa-2222-bbbb-3333cccc4444',
        'applicationSecret': 'A1bC2dE3fH4iJ5kL6mN7oP8qR9sT0u',
        'tenant': 'common',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.getOAuth2Provider(
        providerId: enums.ProjectOAuthProviderId.amazon,
      );
      expect(response, isA<models.OAuth2Microsoft>());
    });

    test('test method listPlatforms()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'platforms': [],
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.listPlatforms();
      expect(response, isA<models.PlatformList>());
    });

    test('test method createAndroidPlatform()', () async {
      final Map<String, dynamic> data = {
        '\$id': '5e5ea5c16897e',
        '\$createdAt': '2020-10-15T06:38:00.000+00:00',
        '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
        'name': 'My Web App',
        'type': 'web',
        'applicationId': 'com.company.appname',
      };

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
        'applicationId': 'com.company.appname',
      };

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
        'bundleIdentifier': 'com.company.appname',
      };

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
        'bundleIdentifier': 'com.company.appname',
      };

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
        'packageName': 'com.company.appname',
      };

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
        'packageName': 'com.company.appname',
      };

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
        'hostname': 'app.example.com',
      };

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
        'hostname': 'app.example.com',
      };

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
        'packageIdentifierName': 'com.company.appname',
      };

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
        'packageIdentifierName': 'com.company.appname',
      };

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
        'packageName': 'com.company.appname',
      };

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
        'total': 10,
        'policies': [],
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.listPolicies();
      expect(response, isA<models.PolicyList>());
    });

    test('test method updateDenyAliasedEmailPolicy()', () async {
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
        'smtpPassword': 'smtp-password',
        'smtpSecure': 'tls',
        'pingCount': 1,
        'pingedAt': '2020-10-15T06:38:00.000+00:00',
        'labels': [],
        'status': 'active',
        'onboarding': <String, dynamic>{},
        'authMethods': [],
        'services': [],
        'protocols': [],
        'blocks': [],
        'consoleAccessedAt': '2020-10-15T06:38:00.000+00:00',
        'wafEnabled': true,
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateDenyAliasedEmailPolicy(
        enabled: true,
      );
      expect(response, isA<models.Project>());
    });

    test('test method updateDenyCorporateEmailPolicy()', () async {
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
        'smtpPassword': 'smtp-password',
        'smtpSecure': 'tls',
        'pingCount': 1,
        'pingedAt': '2020-10-15T06:38:00.000+00:00',
        'labels': [],
        'status': 'active',
        'onboarding': <String, dynamic>{},
        'authMethods': [],
        'services': [],
        'protocols': [],
        'blocks': [],
        'consoleAccessedAt': '2020-10-15T06:38:00.000+00:00',
        'wafEnabled': true,
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateDenyCorporateEmailPolicy(
        enabled: true,
      );
      expect(response, isA<models.Project>());
    });

    test('test method updateDenyDisposableEmailPolicy()', () async {
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
        'smtpPassword': 'smtp-password',
        'smtpSecure': 'tls',
        'pingCount': 1,
        'pingedAt': '2020-10-15T06:38:00.000+00:00',
        'labels': [],
        'status': 'active',
        'onboarding': <String, dynamic>{},
        'authMethods': [],
        'services': [],
        'protocols': [],
        'blocks': [],
        'consoleAccessedAt': '2020-10-15T06:38:00.000+00:00',
        'wafEnabled': true,
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateDenyDisposableEmailPolicy(
        enabled: true,
      );
      expect(response, isA<models.Project>());
    });

    test('test method updateDenyFreeEmailPolicy()', () async {
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
        'smtpPassword': 'smtp-password',
        'smtpSecure': 'tls',
        'pingCount': 1,
        'pingedAt': '2020-10-15T06:38:00.000+00:00',
        'labels': [],
        'status': 'active',
        'onboarding': <String, dynamic>{},
        'authMethods': [],
        'services': [],
        'protocols': [],
        'blocks': [],
        'consoleAccessedAt': '2020-10-15T06:38:00.000+00:00',
        'wafEnabled': true,
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateDenyFreeEmailPolicy(
        enabled: true,
      );
      expect(response, isA<models.Project>());
    });

    test('test method updateMembershipPrivacyPolicy()', () async {
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
        'smtpPassword': 'smtp-password',
        'smtpSecure': 'tls',
        'pingCount': 1,
        'pingedAt': '2020-10-15T06:38:00.000+00:00',
        'labels': [],
        'status': 'active',
        'onboarding': <String, dynamic>{},
        'authMethods': [],
        'services': [],
        'protocols': [],
        'blocks': [],
        'consoleAccessedAt': '2020-10-15T06:38:00.000+00:00',
        'wafEnabled': true,
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateMembershipPrivacyPolicy();
      expect(response, isA<models.Project>());
    });

    test('test method updatePasswordDictionaryPolicy()', () async {
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
        'smtpPassword': 'smtp-password',
        'smtpSecure': 'tls',
        'pingCount': 1,
        'pingedAt': '2020-10-15T06:38:00.000+00:00',
        'labels': [],
        'status': 'active',
        'onboarding': <String, dynamic>{},
        'authMethods': [],
        'services': [],
        'protocols': [],
        'blocks': [],
        'consoleAccessedAt': '2020-10-15T06:38:00.000+00:00',
        'wafEnabled': true,
      };

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
        'smtpPassword': 'smtp-password',
        'smtpSecure': 'tls',
        'pingCount': 1,
        'pingedAt': '2020-10-15T06:38:00.000+00:00',
        'labels': [],
        'status': 'active',
        'onboarding': <String, dynamic>{},
        'authMethods': [],
        'services': [],
        'protocols': [],
        'blocks': [],
        'consoleAccessedAt': '2020-10-15T06:38:00.000+00:00',
        'wafEnabled': true,
      };

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
        'smtpPassword': 'smtp-password',
        'smtpSecure': 'tls',
        'pingCount': 1,
        'pingedAt': '2020-10-15T06:38:00.000+00:00',
        'labels': [],
        'status': 'active',
        'onboarding': <String, dynamic>{},
        'authMethods': [],
        'services': [],
        'protocols': [],
        'blocks': [],
        'consoleAccessedAt': '2020-10-15T06:38:00.000+00:00',
        'wafEnabled': true,
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updatePasswordPersonalDataPolicy(
        enabled: true,
      );
      expect(response, isA<models.Project>());
    });

    test('test method updatePasswordStrengthPolicy()', () async {
      final Map<String, dynamic> data = {
        '\$id': 'password-dictionary',
        'min': 12,
        'uppercase': true,
        'lowercase': true,
        'number': true,
        'symbols': true,
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updatePasswordStrengthPolicy();
      expect(response, isA<models.PolicyPasswordStrength>());
    });

    test('test method updateSessionAlertPolicy()', () async {
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
        'smtpPassword': 'smtp-password',
        'smtpSecure': 'tls',
        'pingCount': 1,
        'pingedAt': '2020-10-15T06:38:00.000+00:00',
        'labels': [],
        'status': 'active',
        'onboarding': <String, dynamic>{},
        'authMethods': [],
        'services': [],
        'protocols': [],
        'blocks': [],
        'consoleAccessedAt': '2020-10-15T06:38:00.000+00:00',
        'wafEnabled': true,
      };

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
        'smtpPassword': 'smtp-password',
        'smtpSecure': 'tls',
        'pingCount': 1,
        'pingedAt': '2020-10-15T06:38:00.000+00:00',
        'labels': [],
        'status': 'active',
        'onboarding': <String, dynamic>{},
        'authMethods': [],
        'services': [],
        'protocols': [],
        'blocks': [],
        'consoleAccessedAt': '2020-10-15T06:38:00.000+00:00',
        'wafEnabled': true,
      };

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
        'smtpPassword': 'smtp-password',
        'smtpSecure': 'tls',
        'pingCount': 1,
        'pingedAt': '2020-10-15T06:38:00.000+00:00',
        'labels': [],
        'status': 'active',
        'onboarding': <String, dynamic>{},
        'authMethods': [],
        'services': [],
        'protocols': [],
        'blocks': [],
        'consoleAccessedAt': '2020-10-15T06:38:00.000+00:00',
        'wafEnabled': true,
      };

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
        'smtpPassword': 'smtp-password',
        'smtpSecure': 'tls',
        'pingCount': 1,
        'pingedAt': '2020-10-15T06:38:00.000+00:00',
        'labels': [],
        'status': 'active',
        'onboarding': <String, dynamic>{},
        'authMethods': [],
        'services': [],
        'protocols': [],
        'blocks': [],
        'consoleAccessedAt': '2020-10-15T06:38:00.000+00:00',
        'wafEnabled': true,
      };

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
        'smtpPassword': 'smtp-password',
        'smtpSecure': 'tls',
        'pingCount': 1,
        'pingedAt': '2020-10-15T06:38:00.000+00:00',
        'labels': [],
        'status': 'active',
        'onboarding': <String, dynamic>{},
        'authMethods': [],
        'services': [],
        'protocols': [],
        'blocks': [],
        'consoleAccessedAt': '2020-10-15T06:38:00.000+00:00',
        'wafEnabled': true,
      };

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
        'enabled': true,
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.getPolicy(
        policyId: enums.ProjectPolicyId.passwordDictionary,
      );
      expect(response, isA<models.PolicyDenyCorporateEmail>());
    });

    test('test method updateProtocol()', () async {
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
        'smtpPassword': 'smtp-password',
        'smtpSecure': 'tls',
        'pingCount': 1,
        'pingedAt': '2020-10-15T06:38:00.000+00:00',
        'labels': [],
        'status': 'active',
        'onboarding': <String, dynamic>{},
        'authMethods': [],
        'services': [],
        'protocols': [],
        'blocks': [],
        'consoleAccessedAt': '2020-10-15T06:38:00.000+00:00',
        'wafEnabled': true,
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateProtocol(
        protocolId: enums.ProjectProtocolId.rest,
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
        'smtpPassword': 'smtp-password',
        'smtpSecure': 'tls',
        'pingCount': 1,
        'pingedAt': '2020-10-15T06:38:00.000+00:00',
        'labels': [],
        'status': 'active',
        'onboarding': <String, dynamic>{},
        'authMethods': [],
        'services': [],
        'protocols': [],
        'blocks': [],
        'consoleAccessedAt': '2020-10-15T06:38:00.000+00:00',
        'wafEnabled': true,
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateService(
        serviceId: enums.ProjectServiceId.account,
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
        'smtpPassword': 'smtp-password',
        'smtpSecure': 'tls',
        'pingCount': 1,
        'pingedAt': '2020-10-15T06:38:00.000+00:00',
        'labels': [],
        'status': 'active',
        'onboarding': <String, dynamic>{},
        'authMethods': [],
        'services': [],
        'protocols': [],
        'blocks': [],
        'consoleAccessedAt': '2020-10-15T06:38:00.000+00:00',
        'wafEnabled': true,
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateSMTP();
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
        'templates': [],
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.listEmailTemplates();
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
        'subject': 'Please verify your email address',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateEmailTemplate(
        templateId: enums.ProjectEmailTemplateId.verification,
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
        'subject': 'Please verify your email address',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.getEmailTemplate(
        templateId: enums.ProjectEmailTemplateId.verification,
      );
      expect(response, isA<models.EmailTemplate>());
    });

    test('test method listVariables()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'variables': [],
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.listVariables();
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
        'resourceId': 'myAwesomeFunction',
      };

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
        'resourceId': 'myAwesomeFunction',
      };

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
        'resourceId': 'myAwesomeFunction',
      };

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
