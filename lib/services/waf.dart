part of '../dart_appwrite.dart';

class Waf extends Service {
  Waf(super.client);

  /// List WAF rules for the current project.
  Future<models.WafRuleList> listRules({
    List<String>? queries,
    String? search,
    bool? total,
  }) async {
    final String apiPath = '/waf/rules';

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,
      if (search != null) 'search': search,
      if (total != null) 'total': total,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.get,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.WafRuleList.fromMap(res.data);
  }

  /// Create a bypass WAF rule. Conditions can match request attributes including
  /// `ip` (plain IPs or CIDR blocks like `10.0.0.0/8`), `method`, `path`,
  /// `host`, `country`, `continent`, `headers.<name>`, `query.<key>`,
  /// `queryKeys`, `accept`, `acceptLanguage`, `cookie`, `userAgent`, `os`,
  /// `osVersion`, `browser`, and `browserVersion`. Conditions on `city` and
  /// `state` require the premium Geo DB addon.
  Future<models.WafRuleBypass> createBypassRule({
    required String ruleId,
    required String resourceType,
    required String name,
    String? resourceId,
    String? description,
    int? priority,
    bool? enabled,
    List<String>? conditions,
  }) async {
    final String apiPath = '/waf/rules/bypass';

    final Map<String, dynamic> apiParams = {
      'ruleId': ruleId,
      'resourceType': resourceType,
      if (resourceId != null) 'resourceId': resourceId,
      'name': name,
      if (description != null) 'description': description,
      if (priority != null) 'priority': priority,
      if (enabled != null) 'enabled': enabled,
      if (conditions != null) 'conditions': conditions,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.WafRuleBypass.fromMap(res.data);
  }

  /// Update a bypass WAF rule. Conditions can match request attributes including
  /// `ip` (plain IPs or CIDR blocks like `10.0.0.0/8`), `method`, `path`,
  /// `host`, `country`, `continent`, `headers.<name>`, `query.<key>`,
  /// `queryKeys`, `accept`, `acceptLanguage`, `cookie`, `userAgent`, `os`,
  /// `osVersion`, `browser`, and `browserVersion`. Conditions on `city` and
  /// `state` require the premium Geo DB addon.
  Future<models.WafRuleBypass> updateBypassRule({
    required String ruleId,
    String? resourceType,
    String? resourceId,
    String? name,
    String? description,
    int? priority,
    bool? enabled,
    List<String>? conditions,
  }) async {
    if (ruleId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "ruleId"',
      );
    }

    final String apiPath = '/waf/rules/bypass/{ruleId}'.replaceAll(
      '{ruleId}',
      _encodePath(ruleId),
    );

    final Map<String, dynamic> apiParams = {
      if (resourceType != null) 'resourceType': resourceType,
      if (resourceId != null) 'resourceId': resourceId,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (priority != null) 'priority': priority,
      if (enabled != null) 'enabled': enabled,
      if (conditions != null) 'conditions': conditions,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.patch,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.WafRuleBypass.fromMap(res.data);
  }

  /// Create a challenge WAF rule. Use `difficulty` (1 easiest to 5 hardest) to
  /// tune the client-side proof-of-work cost, and `ttl` to control how long, in
  /// seconds, a visitor stays cleared after passing the challenge before being
  /// challenged again. Conditions can match request attributes including `ip`
  /// (plain IPs or CIDR blocks like `10.0.0.0/8`), `method`, `path`, `host`,
  /// `country`, `continent`, `headers.<name>`, `query.<key>`, `queryKeys`,
  /// `accept`, `acceptLanguage`, `cookie`, `userAgent`, `os`, `osVersion`,
  /// `browser`, and `browserVersion`. Conditions on `city` and `state` require
  /// the premium Geo DB addon.
  Future<models.WafRuleChallenge> createChallengeRule({
    required String ruleId,
    required String resourceType,
    required String name,
    String? resourceId,
    String? description,
    String? challengeType,
    int? priority,
    bool? enabled,
    List<String>? conditions,
    int? difficulty,
    int? ttl,
  }) async {
    final String apiPath = '/waf/rules/challenge';

    final Map<String, dynamic> apiParams = {
      'ruleId': ruleId,
      'resourceType': resourceType,
      if (resourceId != null) 'resourceId': resourceId,
      'name': name,
      if (description != null) 'description': description,
      if (challengeType != null) 'challengeType': challengeType,
      if (priority != null) 'priority': priority,
      if (enabled != null) 'enabled': enabled,
      if (conditions != null) 'conditions': conditions,
      if (difficulty != null) 'difficulty': difficulty,
      if (ttl != null) 'ttl': ttl,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.WafRuleChallenge.fromMap(res.data);
  }

  /// Update a challenge WAF rule. Use `difficulty` (1 easiest to 5 hardest) to
  /// tune the client-side proof-of-work cost, and `ttl` to control how long, in
  /// seconds, a visitor stays cleared after passing the challenge before being
  /// challenged again. Conditions can match request attributes including `ip`
  /// (plain IPs or CIDR blocks like `10.0.0.0/8`), `method`, `path`, `host`,
  /// `country`, `continent`, `headers.<name>`, `query.<key>`, `queryKeys`,
  /// `accept`, `acceptLanguage`, `cookie`, `userAgent`, `os`, `osVersion`,
  /// `browser`, and `browserVersion`. Conditions on `city` and `state` require
  /// the premium Geo DB addon.
  Future<models.WafRuleChallenge> updateChallengeRule({
    required String ruleId,
    String? resourceType,
    String? resourceId,
    String? name,
    String? description,
    String? challengeType,
    int? priority,
    bool? enabled,
    List<String>? conditions,
    int? difficulty,
    int? ttl,
  }) async {
    if (ruleId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "ruleId"',
      );
    }

    final String apiPath = '/waf/rules/challenge/{ruleId}'.replaceAll(
      '{ruleId}',
      _encodePath(ruleId),
    );

    final Map<String, dynamic> apiParams = {
      if (resourceType != null) 'resourceType': resourceType,
      if (resourceId != null) 'resourceId': resourceId,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (challengeType != null) 'challengeType': challengeType,
      if (priority != null) 'priority': priority,
      if (enabled != null) 'enabled': enabled,
      if (conditions != null) 'conditions': conditions,
      if (difficulty != null) 'difficulty': difficulty,
      if (ttl != null) 'ttl': ttl,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.patch,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.WafRuleChallenge.fromMap(res.data);
  }

  /// Create a deny WAF rule. Conditions can match request attributes including
  /// `ip` (plain IPs or CIDR blocks like `10.0.0.0/8`), `method`, `path`,
  /// `host`, `country`, `continent`, `headers.<name>`, `query.<key>`,
  /// `queryKeys`, `accept`, `acceptLanguage`, `cookie`, `userAgent`, `os`,
  /// `osVersion`, `browser`, and `browserVersion`. Conditions on `city` and
  /// `state` require the premium Geo DB addon. `sessionAge` and `mfaAge` hold
  /// the seconds since the request's session was created and since its last MFA
  /// challenge. Both are null for requests without a session, such as guests and
  /// API keys, while a request authenticated with the `x-appwrite-jwt` header
  /// carries the age of the session its token is bound to; on `functions` rules
  /// the session comes from the `x-appwrite-user-jwt` header, and `mfaAge` is
  /// null when the session never completed MFA. A deny matching on `mfaAge`
  /// returns `user_challenge_required` and one matching on `sessionAge` returns
  /// `user_reauthentication_required`, both with status 401, so the user can
  /// sign in again and retry. To also deny requests without a session, combine
  /// `isNull` and `greaterThan` in an `or` condition.
  Future<models.WafRuleDeny> createDenyRule({
    required String ruleId,
    required String resourceType,
    required String name,
    String? resourceId,
    String? description,
    int? priority,
    bool? enabled,
    List<String>? conditions,
  }) async {
    final String apiPath = '/waf/rules/deny';

    final Map<String, dynamic> apiParams = {
      'ruleId': ruleId,
      'resourceType': resourceType,
      if (resourceId != null) 'resourceId': resourceId,
      'name': name,
      if (description != null) 'description': description,
      if (priority != null) 'priority': priority,
      if (enabled != null) 'enabled': enabled,
      if (conditions != null) 'conditions': conditions,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.WafRuleDeny.fromMap(res.data);
  }

  /// Update a deny WAF rule. Conditions can match request attributes including
  /// `ip` (plain IPs or CIDR blocks like `10.0.0.0/8`), `method`, `path`,
  /// `host`, `country`, `continent`, `headers.<name>`, `query.<key>`,
  /// `queryKeys`, `accept`, `acceptLanguage`, `cookie`, `userAgent`, `os`,
  /// `osVersion`, `browser`, and `browserVersion`. Conditions on `city` and
  /// `state` require the premium Geo DB addon. `sessionAge` and `mfaAge` hold
  /// the seconds since the request's session was created and since its last MFA
  /// challenge. Both are null for requests without a session, such as guests and
  /// API keys, while a request authenticated with the `x-appwrite-jwt` header
  /// carries the age of the session its token is bound to; on `functions` rules
  /// the session comes from the `x-appwrite-user-jwt` header, and `mfaAge` is
  /// null when the session never completed MFA. A deny matching on `mfaAge`
  /// returns `user_challenge_required` and one matching on `sessionAge` returns
  /// `user_reauthentication_required`, both with status 401, so the user can
  /// sign in again and retry. To also deny requests without a session, combine
  /// `isNull` and `greaterThan` in an `or` condition.
  Future<models.WafRuleDeny> updateDenyRule({
    required String ruleId,
    String? resourceType,
    String? resourceId,
    String? name,
    String? description,
    int? priority,
    bool? enabled,
    List<String>? conditions,
  }) async {
    if (ruleId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "ruleId"',
      );
    }

    final String apiPath = '/waf/rules/deny/{ruleId}'.replaceAll(
      '{ruleId}',
      _encodePath(ruleId),
    );

    final Map<String, dynamic> apiParams = {
      if (resourceType != null) 'resourceType': resourceType,
      if (resourceId != null) 'resourceId': resourceId,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (priority != null) 'priority': priority,
      if (enabled != null) 'enabled': enabled,
      if (conditions != null) 'conditions': conditions,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.patch,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.WafRuleDeny.fromMap(res.data);
  }

  /// Create a rate limit WAF rule. Use `key` to choose the counter: `ip` limits
  /// per client IP, while `userId` limits per authenticated user (requests
  /// without an authenticated user skip `userId` rules). Conditions can match
  /// request attributes including `ip` (plain IPs or CIDR blocks like
  /// `10.0.0.0/8`), `method`, `path`, `host`, `country`, `continent`,
  /// `headers.<name>`, `query.<key>`, `queryKeys`, `accept`, `acceptLanguage`,
  /// `cookie`, `userAgent`, `os`, `osVersion`, `browser`, and `browserVersion`.
  /// Conditions on `city` and `state` require the premium Geo DB addon.
  Future<models.WafRuleRateLimit> createRateLimitRule({
    required String ruleId,
    required String resourceType,
    required String name,
    required int limit,
    required int interval,
    String? resourceId,
    String? description,
    String? key,
    String? strategy,
    int? maxBucketSize,
    int? priority,
    bool? enabled,
    List<String>? conditions,
  }) async {
    final String apiPath = '/waf/rules/rate-limit';

    final Map<String, dynamic> apiParams = {
      'ruleId': ruleId,
      'resourceType': resourceType,
      if (resourceId != null) 'resourceId': resourceId,
      'name': name,
      if (description != null) 'description': description,
      'limit': limit,
      'interval': interval,
      if (key != null) 'key': key,
      if (strategy != null) 'strategy': strategy,
      if (maxBucketSize != null) 'maxBucketSize': maxBucketSize,
      if (priority != null) 'priority': priority,
      if (enabled != null) 'enabled': enabled,
      if (conditions != null) 'conditions': conditions,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.WafRuleRateLimit.fromMap(res.data);
  }

  /// Update a rate limit WAF rule. Use `key` to choose the counter: `ip` limits
  /// per client IP, while `userId` limits per authenticated user (requests
  /// without an authenticated user skip `userId` rules). Conditions can match
  /// request attributes including `ip` (plain IPs or CIDR blocks like
  /// `10.0.0.0/8`), `method`, `path`, `host`, `country`, `continent`,
  /// `headers.<name>`, `query.<key>`, `queryKeys`, `accept`, `acceptLanguage`,
  /// `cookie`, `userAgent`, `os`, `osVersion`, `browser`, and `browserVersion`.
  /// Conditions on `city` and `state` require the premium Geo DB addon.
  Future<models.WafRuleRateLimit> updateRateLimitRule({
    required String ruleId,
    String? resourceType,
    String? resourceId,
    String? name,
    String? description,
    int? limit,
    int? interval,
    String? key,
    int? maxBucketSize,
    int? priority,
    bool? enabled,
    List<String>? conditions,
  }) async {
    if (ruleId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "ruleId"',
      );
    }

    final String apiPath = '/waf/rules/rate-limit/{ruleId}'.replaceAll(
      '{ruleId}',
      _encodePath(ruleId),
    );

    final Map<String, dynamic> apiParams = {
      if (resourceType != null) 'resourceType': resourceType,
      if (resourceId != null) 'resourceId': resourceId,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (limit != null) 'limit': limit,
      if (interval != null) 'interval': interval,
      if (key != null) 'key': key,
      if (maxBucketSize != null) 'maxBucketSize': maxBucketSize,
      if (priority != null) 'priority': priority,
      if (enabled != null) 'enabled': enabled,
      if (conditions != null) 'conditions': conditions,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.patch,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.WafRuleRateLimit.fromMap(res.data);
  }

  /// Create a redirect WAF rule. Conditions can match request attributes
  /// including `ip` (plain IPs or CIDR blocks like `10.0.0.0/8`), `method`,
  /// `path`, `host`, `country`, `continent`, `headers.<name>`, `query.<key>`,
  /// `queryKeys`, `accept`, `acceptLanguage`, `cookie`, `userAgent`, `os`,
  /// `osVersion`, `browser`, and `browserVersion`. Conditions on `city` and
  /// `state` require the premium Geo DB addon.
  Future<models.WafRuleRedirect> createRedirectRule({
    required String ruleId,
    required String resourceType,
    required String name,
    required String location,
    required int statusCode,
    String? resourceId,
    String? description,
    int? priority,
    bool? enabled,
    List<String>? conditions,
  }) async {
    final String apiPath = '/waf/rules/redirect';

    final Map<String, dynamic> apiParams = {
      'ruleId': ruleId,
      'resourceType': resourceType,
      if (resourceId != null) 'resourceId': resourceId,
      'name': name,
      if (description != null) 'description': description,
      'location': location,
      'statusCode': statusCode,
      if (priority != null) 'priority': priority,
      if (enabled != null) 'enabled': enabled,
      if (conditions != null) 'conditions': conditions,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.WafRuleRedirect.fromMap(res.data);
  }

  /// Update a redirect WAF rule. Conditions can match request attributes
  /// including `ip` (plain IPs or CIDR blocks like `10.0.0.0/8`), `method`,
  /// `path`, `host`, `country`, `continent`, `headers.<name>`, `query.<key>`,
  /// `queryKeys`, `accept`, `acceptLanguage`, `cookie`, `userAgent`, `os`,
  /// `osVersion`, `browser`, and `browserVersion`. Conditions on `city` and
  /// `state` require the premium Geo DB addon.
  Future<models.WafRuleRedirect> updateRedirectRule({
    required String ruleId,
    String? resourceType,
    String? resourceId,
    String? name,
    String? description,
    String? location,
    int? statusCode,
    int? priority,
    bool? enabled,
    List<String>? conditions,
  }) async {
    if (ruleId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "ruleId"',
      );
    }

    final String apiPath = '/waf/rules/redirect/{ruleId}'.replaceAll(
      '{ruleId}',
      _encodePath(ruleId),
    );

    final Map<String, dynamic> apiParams = {
      if (resourceType != null) 'resourceType': resourceType,
      if (resourceId != null) 'resourceId': resourceId,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (location != null) 'location': location,
      if (statusCode != null) 'statusCode': statusCode,
      if (priority != null) 'priority': priority,
      if (enabled != null) 'enabled': enabled,
      if (conditions != null) 'conditions': conditions,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.patch,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.WafRuleRedirect.fromMap(res.data);
  }

  /// Get a WAF rule by its ID.
  Future<models.Model> getRule({
    required String ruleId,
  }) async {
    if (ruleId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "ruleId"',
      );
    }

    final String apiPath = '/waf/rules/{ruleId}'.replaceAll(
      '{ruleId}',
      _encodePath(ruleId),
    );

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.get,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return () {
      if (res.data is! Map<String, dynamic>) {
        throw StateError(
          'Unable to match response to any expected response model.',
        );
      }

      final response = res.data as Map<String, dynamic>;
      if (response['action'] == "bypass") {
        return models.WafRuleBypass.fromMap(response);
      }
      if (response['action'] == "deny") {
        return models.WafRuleDeny.fromMap(response);
      }
      if (response['action'] == "challenge") {
        return models.WafRuleChallenge.fromMap(response);
      }
      if (response['action'] == "rateLimit") {
        return models.WafRuleRateLimit.fromMap(response);
      }
      if (response['action'] == "redirect") {
        return models.WafRuleRedirect.fromMap(response);
      }

      throw StateError(
        'Unable to match response to any expected response model.',
      );
    }();
  }

  /// Delete a WAF rule.
  Future deleteRule({
    required String ruleId,
  }) async {
    if (ruleId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "ruleId"',
      );
    }

    final String apiPath = '/waf/rules/{ruleId}'.replaceAll(
      '{ruleId}',
      _encodePath(ruleId),
    );

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.delete,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return res.data;
  }
}
