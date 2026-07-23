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
    group('Proxy test', () {
        late MockClient client;
        late Proxy proxy;

        setUp(() {
            client = MockClient();
            proxy = Proxy(client);
        });

        test('test method listRules()', () async {

            final Map<String, dynamic> data = {
                'total': 5,
                'rules': [],

            };


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await proxy.listRules(
            );
            expect(response, isA<models.ProxyRuleList>());

        });

        test('test method createAPIRule()', () async {

            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'domain': 'appwrite.company.com',
                'type': 'deployment',
                'trigger': 'manual',
                'redirectUrl': 'https://appwrite.io/docs',
                'redirectStatusCode': 301,
                'deploymentId': 'n3u9feiwmf',
                'deploymentResourceId': 'n3u9feiwmf',
                'deploymentVcsProviderBranch': 'main',
                'status': 'verified',
                'logs': 'Verification of DNS records failed with DNS resolver 8.8.8.8. Domain stage.myapp.com does not have DNS record.',
                'renewAt': 'datetime',

            };


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await proxy.createAPIRule(
                domain: '',
            );
            expect(response, isA<models.ProxyRule>());

        });

        test('test method createFunctionRule()', () async {

            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'domain': 'appwrite.company.com',
                'type': 'deployment',
                'trigger': 'manual',
                'redirectUrl': 'https://appwrite.io/docs',
                'redirectStatusCode': 301,
                'deploymentId': 'n3u9feiwmf',
                'deploymentResourceId': 'n3u9feiwmf',
                'deploymentVcsProviderBranch': 'main',
                'status': 'verified',
                'logs': 'Verification of DNS records failed with DNS resolver 8.8.8.8. Domain stage.myapp.com does not have DNS record.',
                'renewAt': 'datetime',

            };


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await proxy.createFunctionRule(
                domain: '',
                functionId: '<FUNCTION_ID>',
            );
            expect(response, isA<models.ProxyRule>());

        });

        test('test method createRedirectRule()', () async {

            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'domain': 'appwrite.company.com',
                'type': 'deployment',
                'trigger': 'manual',
                'redirectUrl': 'https://appwrite.io/docs',
                'redirectStatusCode': 301,
                'deploymentId': 'n3u9feiwmf',
                'deploymentResourceId': 'n3u9feiwmf',
                'deploymentVcsProviderBranch': 'main',
                'status': 'verified',
                'logs': 'Verification of DNS records failed with DNS resolver 8.8.8.8. Domain stage.myapp.com does not have DNS record.',
                'renewAt': 'datetime',

            };


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await proxy.createRedirectRule(
                domain: '',
                url: 'https://example.com',
                statusCode: enums.StatusCode.movedPermanently,
                resourceId: '<RESOURCE_ID>',
                resourceType: enums.ProxyResourceType.site,
            );
            expect(response, isA<models.ProxyRule>());

        });

        test('test method createSiteRule()', () async {

            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'domain': 'appwrite.company.com',
                'type': 'deployment',
                'trigger': 'manual',
                'redirectUrl': 'https://appwrite.io/docs',
                'redirectStatusCode': 301,
                'deploymentId': 'n3u9feiwmf',
                'deploymentResourceId': 'n3u9feiwmf',
                'deploymentVcsProviderBranch': 'main',
                'status': 'verified',
                'logs': 'Verification of DNS records failed with DNS resolver 8.8.8.8. Domain stage.myapp.com does not have DNS record.',
                'renewAt': 'datetime',

            };


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await proxy.createSiteRule(
                domain: '',
                siteId: '<SITE_ID>',
            );
            expect(response, isA<models.ProxyRule>());

        });

        test('test method getRule()', () async {

            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'domain': 'appwrite.company.com',
                'type': 'deployment',
                'trigger': 'manual',
                'redirectUrl': 'https://appwrite.io/docs',
                'redirectStatusCode': 301,
                'deploymentId': 'n3u9feiwmf',
                'deploymentResourceId': 'n3u9feiwmf',
                'deploymentVcsProviderBranch': 'main',
                'status': 'verified',
                'logs': 'Verification of DNS records failed with DNS resolver 8.8.8.8. Domain stage.myapp.com does not have DNS record.',
                'renewAt': 'datetime',

            };


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await proxy.getRule(
                ruleId: '<RULE_ID>',
            );
            expect(response, isA<models.ProxyRule>());

        });

        test('test method deleteRule()', () async {

            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await proxy.deleteRule(
                ruleId: '<RULE_ID>',
            );
        });

        test('test method updateRuleStatus()', () async {

            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'domain': 'appwrite.company.com',
                'type': 'deployment',
                'trigger': 'manual',
                'redirectUrl': 'https://appwrite.io/docs',
                'redirectStatusCode': 301,
                'deploymentId': 'n3u9feiwmf',
                'deploymentResourceId': 'n3u9feiwmf',
                'deploymentVcsProviderBranch': 'main',
                'status': 'verified',
                'logs': 'Verification of DNS records failed with DNS resolver 8.8.8.8. Domain stage.myapp.com does not have DNS record.',
                'renewAt': 'datetime',

            };


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await proxy.updateRuleStatus(
                ruleId: '<RULE_ID>',
            );
            expect(response, isA<models.ProxyRule>());

        });

    });
}
