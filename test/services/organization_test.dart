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

        test('test method get()', () async {

            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'VIP',
                'total': 7,
                'prefs': <String, dynamic>{},
                'billingBudget': 50,
                'budgetAlerts': [],
                'billingPlan': 'tier-1',
                'billingPlanId': 'tier-1',
                'billingPlanDetails': <String, dynamic>{
    '\$id': 'tier-0',
    'name': 'Hobby',
    'desc': 'Hobby plan',
    'order': 0,
    'price': 25,
    'trial': 14,
    'bandwidth': 25,
    'storage': 25,
    'imageTransformations': 100,
    'screenshotsGenerated': 50,
    'members': 25,
    'webhooks': 25,
    'wafRules': 2,
    'projects': 2,
    'platforms': 3,
    'users': 25,
    'teams': 25,
    'databases': 25,
    'databasesReads': 500000,
    'databasesWrites': 250000,
    'databasesBatchSize': 100,
    'buckets': 25,
    'fileSize': 25,
    'functions': 25,
    'sites': 1,
    'executions': 25,
    'executionsRetentionCount': 10000,
    'GBHours': 100,
    'realtime': 25,
    'realtimeMessages': 100000,
    'messages': 1000,
    'topics': 1,
    'authPhone': 10,
    'domains': 5,
    'activityLogs': 7,
    'usageLogs': 30,
    'projectInactivityDays': 7,
    'alertLimit': 80,
    'usage': <String, dynamic>{
  },
    'addons': <String, dynamic>{
  },
    'budgetCapEnabled': true,
    'customSmtp': true,
    'emailBranding': true,
    'requiresPaymentMethod': true,
    'requiresBillingAddress': true,
    'isAvailable': true,
    'selfService': true,
    'premiumSupport': true,
    'budgeting': true,
    'supportsMockNumbers': true,
    'supportsOrganizationRoles': true,
    'supportsCredits': true,
    'supportsDisposableEmailValidation': true,
    'supportsCanonicalEmailValidation': true,
    'supportsFreeEmailValidation': true,
    'supportsCorporateEmailValidation': true,
    'supportsProjectSpecificRoles': true,
    'backupsEnabled': true,
    'usagePerProject': true,
    'supportedAddons': <String, dynamic>{
  },
    'backupPolicies': 1,
    'deploymentSize': 30,
    'buildSize': 2000,
    'databasesAllowEncrypt': true,
    'group': 'pro',
  },
                'billingEmail': 'billing@org.example',
                'billingStartDate': '2020-10-15T06:38:00.000+00:00',
                'billingCurrentInvoiceDate': '2020-10-15T06:38:00.000+00:00',
                'billingNextInvoiceDate': '2020-10-15T06:38:00.000+00:00',
                'billingTrialStartDate': '2020-10-15T06:38:00.000+00:00',
                'billingTrialDays': 14,
                'billingAggregationId': 'adbc3de4rddfsd',
                'billingInvoiceId': 'adbc3de4rddfsd',
                'paymentMethodId': 'adbc3de4rddfsd',
                'billingAddressId': 'adbc3de4rddfsd',
                'backupPaymentMethodId': 'adbc3de4rddfsd',
                'status': 'active',
                'remarks': 'Pending initial payment',
                'agreementBAA': '',
                'programManagerName': '',
                'programManagerCalendar': '',
                'programDiscordChannelName': '',
                'programDiscordChannelUrl': '',
                'billingPlanDowngrade': 'tier-1',
                'billingTaxId': '',
                'markedForDeletion': true,
                'platform': 'imagine',
                'projects': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await organization.get(
            );
            expect(response, isA<models.Organization>());

        });

        test('test method update()', () async {

            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'name': 'VIP',
                'total': 7,
                'prefs': <String, dynamic>{},
                'billingBudget': 50,
                'budgetAlerts': [],
                'billingPlan': 'tier-1',
                'billingPlanId': 'tier-1',
                'billingPlanDetails': <String, dynamic>{
    '\$id': 'tier-0',
    'name': 'Hobby',
    'desc': 'Hobby plan',
    'order': 0,
    'price': 25,
    'trial': 14,
    'bandwidth': 25,
    'storage': 25,
    'imageTransformations': 100,
    'screenshotsGenerated': 50,
    'members': 25,
    'webhooks': 25,
    'wafRules': 2,
    'projects': 2,
    'platforms': 3,
    'users': 25,
    'teams': 25,
    'databases': 25,
    'databasesReads': 500000,
    'databasesWrites': 250000,
    'databasesBatchSize': 100,
    'buckets': 25,
    'fileSize': 25,
    'functions': 25,
    'sites': 1,
    'executions': 25,
    'executionsRetentionCount': 10000,
    'GBHours': 100,
    'realtime': 25,
    'realtimeMessages': 100000,
    'messages': 1000,
    'topics': 1,
    'authPhone': 10,
    'domains': 5,
    'activityLogs': 7,
    'usageLogs': 30,
    'projectInactivityDays': 7,
    'alertLimit': 80,
    'usage': <String, dynamic>{
  },
    'addons': <String, dynamic>{
  },
    'budgetCapEnabled': true,
    'customSmtp': true,
    'emailBranding': true,
    'requiresPaymentMethod': true,
    'requiresBillingAddress': true,
    'isAvailable': true,
    'selfService': true,
    'premiumSupport': true,
    'budgeting': true,
    'supportsMockNumbers': true,
    'supportsOrganizationRoles': true,
    'supportsCredits': true,
    'supportsDisposableEmailValidation': true,
    'supportsCanonicalEmailValidation': true,
    'supportsFreeEmailValidation': true,
    'supportsCorporateEmailValidation': true,
    'supportsProjectSpecificRoles': true,
    'backupsEnabled': true,
    'usagePerProject': true,
    'supportedAddons': <String, dynamic>{
  },
    'backupPolicies': 1,
    'deploymentSize': 30,
    'buildSize': 2000,
    'databasesAllowEncrypt': true,
    'group': 'pro',
  },
                'billingEmail': 'billing@org.example',
                'billingStartDate': '2020-10-15T06:38:00.000+00:00',
                'billingCurrentInvoiceDate': '2020-10-15T06:38:00.000+00:00',
                'billingNextInvoiceDate': '2020-10-15T06:38:00.000+00:00',
                'billingTrialStartDate': '2020-10-15T06:38:00.000+00:00',
                'billingTrialDays': 14,
                'billingAggregationId': 'adbc3de4rddfsd',
                'billingInvoiceId': 'adbc3de4rddfsd',
                'paymentMethodId': 'adbc3de4rddfsd',
                'billingAddressId': 'adbc3de4rddfsd',
                'backupPaymentMethodId': 'adbc3de4rddfsd',
                'status': 'active',
                'remarks': 'Pending initial payment',
                'agreementBAA': '',
                'programManagerName': '',
                'programManagerCalendar': '',
                'programDiscordChannelName': '',
                'programDiscordChannelUrl': '',
                'billingPlanDowngrade': 'tier-1',
                'billingTaxId': '',
                'markedForDeletion': true,
                'platform': 'imagine',
                'projects': [],};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await organization.update(
                name: '<NAME>',
            );
            expect(response, isA<models.Organization>());

        });

        test('test method delete()', () async {

            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await organization.delete(
            );
        });

        test('test method listInstallations()', () async {

            final Map<String, dynamic> data = {
                'total': 5,
                'installations': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await organization.listInstallations(
            );
            expect(response, isA<models.AppInstallationList>());

        });

        test('test method createInstallation()', () async {

            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'appId': '5e5ea5c16897e',
                'teamId': '5e5ea5c16897e',
                'scopes': [],
                'authorizationDetails': <String, dynamic>{},
                'createdById': '5e5ea5c16897e',
                'createdByName': 'Walter White',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await organization.createInstallation(
                appId: '<APP_ID>',
            );
            expect(response, isA<models.AppInstallation>());

        });

        test('test method getInstallation()', () async {

            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'appId': '5e5ea5c16897e',
                'teamId': '5e5ea5c16897e',
                'scopes': [],
                'authorizationDetails': <String, dynamic>{},
                'createdById': '5e5ea5c16897e',
                'createdByName': 'Walter White',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await organization.getInstallation(
                installationId: '<INSTALLATION_ID>',
            );
            expect(response, isA<models.AppInstallation>());

        });

        test('test method updateInstallation()', () async {

            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'appId': '5e5ea5c16897e',
                'teamId': '5e5ea5c16897e',
                'scopes': [],
                'authorizationDetails': <String, dynamic>{},
                'createdById': '5e5ea5c16897e',
                'createdByName': 'Walter White',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await organization.updateInstallation(
                installationId: '<INSTALLATION_ID>',
            );
            expect(response, isA<models.AppInstallation>());

        });

        test('test method deleteInstallation()', () async {

            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await organization.deleteInstallation(
                installationId: '<INSTALLATION_ID>',
            );
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

        test('test method listMemberships()', () async {

            final Map<String, dynamic> data = {
                'total': 5,
                'memberships': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await organization.listMemberships(
            );
            expect(response, isA<models.MembershipList>());

        });

        test('test method createMembership()', () async {

            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'userId': '5e5ea5c16897e',
                'userName': 'John Doe',
                'userEmail': 'john@appwrite.io',
                'userPhone': '+1 555 555 5555',
                'teamId': '5e5ea5c16897e',
                'teamName': 'VIP',
                'invited': '2020-10-15T06:38:00.000+00:00',
                'joined': '2020-10-15T06:38:00.000+00:00',
                'confirm': true,
                'mfa': true,
                'userAccessedAt': '2020-10-15T06:38:00.000+00:00',
                'roles': [],};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await organization.createMembership(
                roles: [],
            );
            expect(response, isA<models.Membership>());

        });

        test('test method getMembership()', () async {

            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'userId': '5e5ea5c16897e',
                'userName': 'John Doe',
                'userEmail': 'john@appwrite.io',
                'userPhone': '+1 555 555 5555',
                'teamId': '5e5ea5c16897e',
                'teamName': 'VIP',
                'invited': '2020-10-15T06:38:00.000+00:00',
                'joined': '2020-10-15T06:38:00.000+00:00',
                'confirm': true,
                'mfa': true,
                'userAccessedAt': '2020-10-15T06:38:00.000+00:00',
                'roles': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await organization.getMembership(
                membershipId: '<MEMBERSHIP_ID>',
            );
            expect(response, isA<models.Membership>());

        });

        test('test method updateMembership()', () async {

            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'userId': '5e5ea5c16897e',
                'userName': 'John Doe',
                'userEmail': 'john@appwrite.io',
                'userPhone': '+1 555 555 5555',
                'teamId': '5e5ea5c16897e',
                'teamName': 'VIP',
                'invited': '2020-10-15T06:38:00.000+00:00',
                'joined': '2020-10-15T06:38:00.000+00:00',
                'confirm': true,
                'mfa': true,
                'userAccessedAt': '2020-10-15T06:38:00.000+00:00',
                'roles': [],};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await organization.updateMembership(
                membershipId: '<MEMBERSHIP_ID>',
                roles: [],
            );
            expect(response, isA<models.Membership>());

        });

        test('test method deleteMembership()', () async {

            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await organization.deleteMembership(
                membershipId: '<MEMBERSHIP_ID>',
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
                'wafEnabled': true,};


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
                'wafEnabled': true,};


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
                'wafEnabled': true,};


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
