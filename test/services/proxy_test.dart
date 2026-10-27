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
  group('Proxy test', () {
    late MockClient client;
    late Proxy proxy;

    setUp(() {
      client = MockClient();
      proxy = Proxy(client);
    });

    test('test method createInvalidation()', () async {
      final Map<String, dynamic> data = {
        'domain': "appwrite.company.com",
        'type': "tag",
        'reference': "products",
        'status': "success",
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

      final response = await proxy.createInvalidation(
        domain: "example.com",
        type: enums.InvalidationType.tag,
        reference: "<REFERENCE>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/proxy/invalidations",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "domain": "example.com",
        "type": enums.InvalidationType.tag.value,
        "reference": "<REFERENCE>",
      });
      expect(response, isA<models.ProxyInvalidation>());
    });

    test('test method listRules()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'rules': [],
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

      final response = await proxy.listRules(
        queries: [],
        total: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/proxy/rules",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "queries": isA<List>(),
        "total": false,
      });
      expect(response, isA<models.ProxyRuleList>());
    });

    test('test method createAPIRule()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'domain': "appwrite.company.com",
        'type': "deployment",
        'trigger': "manual",
        'redirectUrl': "https://appwrite.io/docs",
        'redirectStatusCode': 301,
        'deploymentId': "n3u9feiwmf",
        'deploymentResourceId': "n3u9feiwmf",
        'deploymentVcsProviderBranch': "main",
        'status': "verified",
        'logs':
            "Verification of DNS records failed with DNS resolver 8.8.8.8. Domain stage.myapp.com does not have DNS record.",
        'renewAt': "datetime",
        'protocol': "http",
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

      final response = await proxy.createAPIRule(
        domain: "example.com",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/proxy/rules/api",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "domain": "example.com",
      });
      expect(response, isA<models.ProxyRule>());
    });

    test('test method createFunctionRule()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'domain': "appwrite.company.com",
        'type': "deployment",
        'trigger': "manual",
        'redirectUrl': "https://appwrite.io/docs",
        'redirectStatusCode': 301,
        'deploymentId': "n3u9feiwmf",
        'deploymentResourceId': "n3u9feiwmf",
        'deploymentVcsProviderBranch': "main",
        'status': "verified",
        'logs':
            "Verification of DNS records failed with DNS resolver 8.8.8.8. Domain stage.myapp.com does not have DNS record.",
        'renewAt': "datetime",
        'protocol': "http",
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

      final response = await proxy.createFunctionRule(
        domain: "example.com",
        functionId: "<FUNCTION_ID>",
        branch: "<BRANCH>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/proxy/rules/function",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "domain": "example.com",
        "functionId": "<FUNCTION_ID>",
        "branch": "<BRANCH>",
      });
      expect(response, isA<models.ProxyRule>());
    });

    test('test method createRedirectRule()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'domain': "appwrite.company.com",
        'type': "deployment",
        'trigger': "manual",
        'redirectUrl': "https://appwrite.io/docs",
        'redirectStatusCode': 301,
        'deploymentId': "n3u9feiwmf",
        'deploymentResourceId': "n3u9feiwmf",
        'deploymentVcsProviderBranch': "main",
        'status': "verified",
        'logs':
            "Verification of DNS records failed with DNS resolver 8.8.8.8. Domain stage.myapp.com does not have DNS record.",
        'renewAt': "datetime",
        'protocol': "http",
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

      final response = await proxy.createRedirectRule(
        domain: "example.com",
        url: "https://example.com",
        statusCode: enums.StatusCode.movedPermanently,
        resourceId: "<RESOURCE_ID>",
        resourceType: enums.ProxyResourceType.site,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/proxy/rules/redirect",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "domain": "example.com",
        "url": "https://example.com",
        "statusCode": enums.StatusCode.movedPermanently.value,
        "resourceId": "<RESOURCE_ID>",
        "resourceType": enums.ProxyResourceType.site.value,
      });
      expect(response, isA<models.ProxyRule>());
    });

    test('test method createSiteRule()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'domain': "appwrite.company.com",
        'type': "deployment",
        'trigger': "manual",
        'redirectUrl': "https://appwrite.io/docs",
        'redirectStatusCode': 301,
        'deploymentId': "n3u9feiwmf",
        'deploymentResourceId': "n3u9feiwmf",
        'deploymentVcsProviderBranch': "main",
        'status': "verified",
        'logs':
            "Verification of DNS records failed with DNS resolver 8.8.8.8. Domain stage.myapp.com does not have DNS record.",
        'renewAt': "datetime",
        'protocol': "http",
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

      final response = await proxy.createSiteRule(
        domain: "example.com",
        siteId: "<SITE_ID>",
        branch: "<BRANCH>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/proxy/rules/site",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "domain": "example.com",
        "siteId": "<SITE_ID>",
        "branch": "<BRANCH>",
      });
      expect(response, isA<models.ProxyRule>());
    });

    test('test method createSMTPRule()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'domain': "appwrite.company.com",
        'type': "deployment",
        'trigger': "manual",
        'redirectUrl': "https://appwrite.io/docs",
        'redirectStatusCode': 301,
        'deploymentId': "n3u9feiwmf",
        'deploymentResourceId': "n3u9feiwmf",
        'deploymentVcsProviderBranch': "main",
        'status': "verified",
        'logs':
            "Verification of DNS records failed with DNS resolver 8.8.8.8. Domain stage.myapp.com does not have DNS record.",
        'renewAt': "datetime",
        'protocol': "http",
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

      final response = await proxy.createSMTPRule(
        domain: "example.com",
        functionId: "<FUNCTION_ID>",
        branch: "<BRANCH>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/proxy/rules/smtp",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "domain": "example.com",
        "functionId": "<FUNCTION_ID>",
        "branch": "<BRANCH>",
      });
      expect(response, isA<models.ProxyRule>());
    });

    test('test method getRule()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'domain': "appwrite.company.com",
        'type': "deployment",
        'trigger': "manual",
        'redirectUrl': "https://appwrite.io/docs",
        'redirectStatusCode': 301,
        'deploymentId': "n3u9feiwmf",
        'deploymentResourceId': "n3u9feiwmf",
        'deploymentVcsProviderBranch': "main",
        'status': "verified",
        'logs':
            "Verification of DNS records failed with DNS resolver 8.8.8.8. Domain stage.myapp.com does not have DNS record.",
        'renewAt': "datetime",
        'protocol': "http",
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

      final response = await proxy.getRule(
        ruleId: "<RULE_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/proxy/rules/%3CRULE_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.ProxyRule>());
    });

    test('test method deleteRule()', () async {
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

      final response = await proxy.deleteRule(
        ruleId: "<RULE_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.delete,
          path: "/proxy/rules/%3CRULE_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
    });

    test('test method updateRuleStatus()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'domain': "appwrite.company.com",
        'type': "deployment",
        'trigger': "manual",
        'redirectUrl': "https://appwrite.io/docs",
        'redirectStatusCode': 301,
        'deploymentId': "n3u9feiwmf",
        'deploymentResourceId': "n3u9feiwmf",
        'deploymentVcsProviderBranch': "main",
        'status': "verified",
        'logs':
            "Verification of DNS records failed with DNS resolver 8.8.8.8. Domain stage.myapp.com does not have DNS record.",
        'renewAt': "datetime",
        'protocol': "http",
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

      final response = await proxy.updateRuleStatus(
        ruleId: "<RULE_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/proxy/rules/%3CRULE_ID%3E/status",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.ProxyRule>());
    });
  });
}
