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
  group('Project test', () {
    late MockClient client;
    late Project project;

    setUp(() {
      client = MockClient();
      project = Project(client);
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
        scopes: [enums.Scopes.sessionsWrite],
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
        scopes: [enums.Scopes.sessionsWrite],
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
        'authInvalidateSessions': true,
        'oAuthProviders': [],
        'platforms': [],
        'webhooks': [],
        'keys': [],
        'devKeys': [],
        'smtpEnabled': true,
        'smtpSenderName': 'John Appwrite',
        'smtpSenderEmail': 'john@appwrite.io',
        'smtpReplyTo': 'support@appwrite.io',
        'smtpHost': 'mail.appwrite.io',
        'smtpPort': 25,
        'smtpUsername': 'emailuser',
        'smtpPassword': 'securepassword',
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
        'consoleAccessedAt': '2020-10-15T06:38:00.000+00:00',
      };

      when(client.call(
        HttpMethod.put,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateLabels(
        labels: [],
      );
      expect(response, isA<models.Project>());
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

    test('test method updateProtocolStatus()', () async {
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
        'authInvalidateSessions': true,
        'oAuthProviders': [],
        'platforms': [],
        'webhooks': [],
        'keys': [],
        'devKeys': [],
        'smtpEnabled': true,
        'smtpSenderName': 'John Appwrite',
        'smtpSenderEmail': 'john@appwrite.io',
        'smtpReplyTo': 'support@appwrite.io',
        'smtpHost': 'mail.appwrite.io',
        'smtpPort': 25,
        'smtpUsername': 'emailuser',
        'smtpPassword': 'securepassword',
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
        'consoleAccessedAt': '2020-10-15T06:38:00.000+00:00',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateProtocolStatus(
        protocolId: enums.ProtocolId.rest,
        enabled: true,
      );
      expect(response, isA<models.Project>());
    });

    test('test method updateServiceStatus()', () async {
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
        'authInvalidateSessions': true,
        'oAuthProviders': [],
        'platforms': [],
        'webhooks': [],
        'keys': [],
        'devKeys': [],
        'smtpEnabled': true,
        'smtpSenderName': 'John Appwrite',
        'smtpSenderEmail': 'john@appwrite.io',
        'smtpReplyTo': 'support@appwrite.io',
        'smtpHost': 'mail.appwrite.io',
        'smtpPort': 25,
        'smtpUsername': 'emailuser',
        'smtpPassword': 'securepassword',
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
        'consoleAccessedAt': '2020-10-15T06:38:00.000+00:00',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await project.updateServiceStatus(
        serviceId: enums.ServiceId.account,
        enabled: true,
      );
      expect(response, isA<models.Project>());
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
