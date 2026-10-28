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
  group('Waf test', () {
    late MockClient client;
    late Waf waf;

    setUp(() {
      client = MockClient();
      waf = Waf(client);
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

      final response = await waf.listRules(
        queries: [],
        search: "<SEARCH>",
        total: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/waf/rules",
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
      expect(response, isA<models.WafRuleList>());
    });

    test('test method createBypassRule()', () async {
      final Map<String, dynamic> data = {
        '\$id': "wafRule1",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Block anonymous POST traffic",
        'description': "Blocks anonymous POST calls to /v1/graphql",
        'teamId': "5e5ea5c16897e",
        'projectId': "cloudConsole",
        'resourceType': "functions",
        'resourceId': "functionId",
        'action': "deny",
        'priority': 100,
        'enabled': true,
        'conditions': [],
        'config': <String, dynamic>{},
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

      final response = await waf.createBypassRule(
        ruleId: "<RULE_ID>",
        resourceType: "api",
        name: "<NAME>",
        resourceId: "<RESOURCE_ID>",
        description: "<DESCRIPTION>",
        priority: 1,
        enabled: false,
        conditions: [],
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/waf/rules/bypass",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "ruleId": "<RULE_ID>",
        "resourceType": "api",
        "resourceId": "<RESOURCE_ID>",
        "name": "<NAME>",
        "description": "<DESCRIPTION>",
        "priority": 1,
        "enabled": false,
        "conditions": isA<List>(),
      });
      expect(response, isA<models.WafRuleBypass>());
    });

    test('test method updateBypassRule()', () async {
      final Map<String, dynamic> data = {
        '\$id': "wafRule1",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Block anonymous POST traffic",
        'description': "Blocks anonymous POST calls to /v1/graphql",
        'teamId': "5e5ea5c16897e",
        'projectId': "cloudConsole",
        'resourceType': "functions",
        'resourceId': "functionId",
        'action': "deny",
        'priority': 100,
        'enabled': true,
        'conditions': [],
        'config': <String, dynamic>{},
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

      final response = await waf.updateBypassRule(
        ruleId: "<RULE_ID>",
        resourceType: "api",
        resourceId: "<RESOURCE_ID>",
        name: "<NAME>",
        description: "<DESCRIPTION>",
        priority: 1,
        enabled: false,
        conditions: [],
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/waf/rules/bypass/%3CRULE_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "resourceType": "api",
        "resourceId": "<RESOURCE_ID>",
        "name": "<NAME>",
        "description": "<DESCRIPTION>",
        "priority": 1,
        "enabled": false,
        "conditions": isA<List>(),
      });
      expect(response, isA<models.WafRuleBypass>());
    });

    test('test method createChallengeRule()', () async {
      final Map<String, dynamic> data = {
        '\$id': "wafRule1",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Block anonymous POST traffic",
        'description': "Blocks anonymous POST calls to /v1/graphql",
        'teamId': "5e5ea5c16897e",
        'projectId': "cloudConsole",
        'resourceType': "functions",
        'resourceId': "functionId",
        'action': "deny",
        'priority': 100,
        'enabled': true,
        'conditions': [],
        'config': <String, dynamic>{},
        'challengeType': "compute",
        'difficulty': 3,
        'ttl': 1800,
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

      final response = await waf.createChallengeRule(
        ruleId: "<RULE_ID>",
        resourceType: "api",
        name: "<NAME>",
        resourceId: "<RESOURCE_ID>",
        description: "<DESCRIPTION>",
        challengeType: "compute",
        priority: 1,
        enabled: false,
        conditions: [],
        difficulty: 1,
        ttl: 1,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/waf/rules/challenge",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "ruleId": "<RULE_ID>",
        "resourceType": "api",
        "resourceId": "<RESOURCE_ID>",
        "name": "<NAME>",
        "description": "<DESCRIPTION>",
        "challengeType": "compute",
        "priority": 1,
        "enabled": false,
        "conditions": isA<List>(),
        "difficulty": 1,
        "ttl": 1,
      });
      expect(response, isA<models.WafRuleChallenge>());
    });

    test('test method updateChallengeRule()', () async {
      final Map<String, dynamic> data = {
        '\$id': "wafRule1",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Block anonymous POST traffic",
        'description': "Blocks anonymous POST calls to /v1/graphql",
        'teamId': "5e5ea5c16897e",
        'projectId': "cloudConsole",
        'resourceType': "functions",
        'resourceId': "functionId",
        'action': "deny",
        'priority': 100,
        'enabled': true,
        'conditions': [],
        'config': <String, dynamic>{},
        'challengeType': "compute",
        'difficulty': 3,
        'ttl': 1800,
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

      final response = await waf.updateChallengeRule(
        ruleId: "<RULE_ID>",
        resourceType: "api",
        resourceId: "<RESOURCE_ID>",
        name: "<NAME>",
        description: "<DESCRIPTION>",
        challengeType: "compute",
        priority: 1,
        enabled: false,
        conditions: [],
        difficulty: 1,
        ttl: 1,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/waf/rules/challenge/%3CRULE_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "resourceType": "api",
        "resourceId": "<RESOURCE_ID>",
        "name": "<NAME>",
        "description": "<DESCRIPTION>",
        "challengeType": "compute",
        "priority": 1,
        "enabled": false,
        "conditions": isA<List>(),
        "difficulty": 1,
        "ttl": 1,
      });
      expect(response, isA<models.WafRuleChallenge>());
    });

    test('test method createDenyRule()', () async {
      final Map<String, dynamic> data = {
        '\$id': "wafRule1",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Block anonymous POST traffic",
        'description': "Blocks anonymous POST calls to /v1/graphql",
        'teamId': "5e5ea5c16897e",
        'projectId': "cloudConsole",
        'resourceType': "functions",
        'resourceId': "functionId",
        'action': "deny",
        'priority': 100,
        'enabled': true,
        'conditions': [],
        'config': <String, dynamic>{},
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

      final response = await waf.createDenyRule(
        ruleId: "<RULE_ID>",
        resourceType: "api",
        name: "<NAME>",
        resourceId: "<RESOURCE_ID>",
        description: "<DESCRIPTION>",
        priority: 1,
        enabled: false,
        conditions: [],
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/waf/rules/deny",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "ruleId": "<RULE_ID>",
        "resourceType": "api",
        "resourceId": "<RESOURCE_ID>",
        "name": "<NAME>",
        "description": "<DESCRIPTION>",
        "priority": 1,
        "enabled": false,
        "conditions": isA<List>(),
      });
      expect(response, isA<models.WafRuleDeny>());
    });

    test('test method updateDenyRule()', () async {
      final Map<String, dynamic> data = {
        '\$id': "wafRule1",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Block anonymous POST traffic",
        'description': "Blocks anonymous POST calls to /v1/graphql",
        'teamId': "5e5ea5c16897e",
        'projectId': "cloudConsole",
        'resourceType': "functions",
        'resourceId': "functionId",
        'action': "deny",
        'priority': 100,
        'enabled': true,
        'conditions': [],
        'config': <String, dynamic>{},
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

      final response = await waf.updateDenyRule(
        ruleId: "<RULE_ID>",
        resourceType: "api",
        resourceId: "<RESOURCE_ID>",
        name: "<NAME>",
        description: "<DESCRIPTION>",
        priority: 1,
        enabled: false,
        conditions: [],
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/waf/rules/deny/%3CRULE_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "resourceType": "api",
        "resourceId": "<RESOURCE_ID>",
        "name": "<NAME>",
        "description": "<DESCRIPTION>",
        "priority": 1,
        "enabled": false,
        "conditions": isA<List>(),
      });
      expect(response, isA<models.WafRuleDeny>());
    });

    test('test method createRateLimitRule()', () async {
      final Map<String, dynamic> data = {
        '\$id': "wafRule1",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Block anonymous POST traffic",
        'description': "Blocks anonymous POST calls to /v1/graphql",
        'teamId': "5e5ea5c16897e",
        'projectId': "cloudConsole",
        'resourceType': "functions",
        'resourceId': "functionId",
        'action': "deny",
        'priority': 100,
        'enabled': true,
        'conditions': [],
        'config': <String, dynamic>{},
        'limit': 1000,
        'interval': 60,
        'key': "userId",
        'strategy': "slidingWindow",
        'maxBucketSize': 200,
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

      final response = await waf.createRateLimitRule(
        ruleId: "<RULE_ID>",
        resourceType: "api",
        name: "<NAME>",
        limit: 1,
        interval: 1,
        resourceId: "<RESOURCE_ID>",
        description: "<DESCRIPTION>",
        key: "ip",
        strategy: "fixedWindow",
        maxBucketSize: 1,
        priority: 1,
        enabled: false,
        conditions: [],
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/waf/rules/rate-limit",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "ruleId": "<RULE_ID>",
        "resourceType": "api",
        "resourceId": "<RESOURCE_ID>",
        "name": "<NAME>",
        "description": "<DESCRIPTION>",
        "limit": 1,
        "interval": 1,
        "key": "ip",
        "strategy": "fixedWindow",
        "maxBucketSize": 1,
        "priority": 1,
        "enabled": false,
        "conditions": isA<List>(),
      });
      expect(response, isA<models.WafRuleRateLimit>());
    });

    test('test method updateRateLimitRule()', () async {
      final Map<String, dynamic> data = {
        '\$id': "wafRule1",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Block anonymous POST traffic",
        'description': "Blocks anonymous POST calls to /v1/graphql",
        'teamId': "5e5ea5c16897e",
        'projectId': "cloudConsole",
        'resourceType': "functions",
        'resourceId': "functionId",
        'action': "deny",
        'priority': 100,
        'enabled': true,
        'conditions': [],
        'config': <String, dynamic>{},
        'limit': 1000,
        'interval': 60,
        'key': "userId",
        'strategy': "slidingWindow",
        'maxBucketSize': 200,
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

      final response = await waf.updateRateLimitRule(
        ruleId: "<RULE_ID>",
        resourceType: "api",
        resourceId: "<RESOURCE_ID>",
        name: "<NAME>",
        description: "<DESCRIPTION>",
        limit: 1,
        interval: 1,
        key: "ip",
        maxBucketSize: 1,
        priority: 1,
        enabled: false,
        conditions: [],
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/waf/rules/rate-limit/%3CRULE_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "resourceType": "api",
        "resourceId": "<RESOURCE_ID>",
        "name": "<NAME>",
        "description": "<DESCRIPTION>",
        "limit": 1,
        "interval": 1,
        "key": "ip",
        "maxBucketSize": 1,
        "priority": 1,
        "enabled": false,
        "conditions": isA<List>(),
      });
      expect(response, isA<models.WafRuleRateLimit>());
    });

    test('test method createRedirectRule()', () async {
      final Map<String, dynamic> data = {
        '\$id': "wafRule1",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Block anonymous POST traffic",
        'description': "Blocks anonymous POST calls to /v1/graphql",
        'teamId': "5e5ea5c16897e",
        'projectId': "cloudConsole",
        'resourceType': "functions",
        'resourceId': "functionId",
        'action': "deny",
        'priority': 100,
        'enabled': true,
        'conditions': [],
        'config': <String, dynamic>{},
        'location': "/maintenance",
        'statusCode': 301,
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

      final response = await waf.createRedirectRule(
        ruleId: "<RULE_ID>",
        resourceType: "api",
        name: "<NAME>",
        location: "<LOCATION>",
        statusCode: 1,
        resourceId: "<RESOURCE_ID>",
        description: "<DESCRIPTION>",
        priority: 1,
        enabled: false,
        conditions: [],
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/waf/rules/redirect",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "ruleId": "<RULE_ID>",
        "resourceType": "api",
        "resourceId": "<RESOURCE_ID>",
        "name": "<NAME>",
        "description": "<DESCRIPTION>",
        "location": "<LOCATION>",
        "statusCode": 1,
        "priority": 1,
        "enabled": false,
        "conditions": isA<List>(),
      });
      expect(response, isA<models.WafRuleRedirect>());
    });

    test('test method updateRedirectRule()', () async {
      final Map<String, dynamic> data = {
        '\$id': "wafRule1",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Block anonymous POST traffic",
        'description': "Blocks anonymous POST calls to /v1/graphql",
        'teamId': "5e5ea5c16897e",
        'projectId': "cloudConsole",
        'resourceType': "functions",
        'resourceId': "functionId",
        'action': "deny",
        'priority': 100,
        'enabled': true,
        'conditions': [],
        'config': <String, dynamic>{},
        'location': "/maintenance",
        'statusCode': 301,
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

      final response = await waf.updateRedirectRule(
        ruleId: "<RULE_ID>",
        resourceType: "api",
        resourceId: "<RESOURCE_ID>",
        name: "<NAME>",
        description: "<DESCRIPTION>",
        location: "<LOCATION>",
        statusCode: 1,
        priority: 1,
        enabled: false,
        conditions: [],
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/waf/rules/redirect/%3CRULE_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "resourceType": "api",
        "resourceId": "<RESOURCE_ID>",
        "name": "<NAME>",
        "description": "<DESCRIPTION>",
        "location": "<LOCATION>",
        "statusCode": 1,
        "priority": 1,
        "enabled": false,
        "conditions": isA<List>(),
      });
      expect(response, isA<models.WafRuleRedirect>());
    });

    test('test method getRule()', () async {
      final Map<String, dynamic> data = {
        '\$id': "wafRule1",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "Block anonymous POST traffic",
        'description': "Blocks anonymous POST calls to /v1/graphql",
        'teamId': "5e5ea5c16897e",
        'projectId': "cloudConsole",
        'resourceType': "functions",
        'resourceId': "functionId",
        'priority': 100,
        'enabled': true,
        'conditions': [],
        'config': <String, dynamic>{},
        'location': "/maintenance",
        'statusCode': 301,
        'action': "redirect",
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

      final response = await waf.getRule(
        ruleId: "<RULE_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/waf/rules/%3CRULE_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.WafRuleRedirect>());
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

      final response = await waf.deleteRule(
        ruleId: "<RULE_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.delete,
          path: "/waf/rules/%3CRULE_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
    });
  });
}
