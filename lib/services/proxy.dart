part of '../dart_appwrite.dart';

/// The Proxy Service allows you to configure actions for your domains beyond
/// DNS configuration.
class Proxy extends Service {
  Proxy(super.client);

  /// Create a new CDN cache invalidation for a domain. Executes a hard purge of
  /// cached content.
  ///
  /// Depending on type, the invalidation purges a single cache tag, a single URL
  /// path, or all cached content for the domain.
  ///
  /// Domains that route to a function do not support cache invalidation.
  Future<models.ProxyInvalidation> createInvalidation({
    required String domain,
    required enums.InvalidationType type,
    String? reference,
  }) async {
    final String apiPath = '/proxy/invalidations';

    final Map<String, dynamic> apiParams = {
      'domain': domain,
      'type': type.value,
      if (reference != null) 'reference': reference,
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

    return models.ProxyInvalidation.fromMap(res.data);
  }

  /// Get a list of all the proxy rules. You can use the query params to filter
  /// your results.
  Future<models.ProxyRuleList> listRules({
    List<String>? queries,
    bool? total,
  }) async {
    final String apiPath = '/proxy/rules';

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,
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

    return models.ProxyRuleList.fromMap(res.data);
  }

  /// Create a new proxy rule for serving Appwrite's API on custom domain.
  ///
  /// Rule ID is automatically generated as MD5 hash of a rule domain for
  /// performance purposes.
  Future<models.ProxyRule> createAPIRule({
    required String domain,
  }) async {
    final String apiPath = '/proxy/rules/api';

    final Map<String, dynamic> apiParams = {
      'domain': domain,
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

    return models.ProxyRule.fromMap(res.data);
  }

  /// Create a new proxy rule for executing Appwrite Function on custom domain.
  ///
  /// Rule ID is automatically generated as MD5 hash of a rule domain for
  /// performance purposes.
  Future<models.ProxyRule> createFunctionRule({
    required String domain,
    required String functionId,
    String? branch,
  }) async {
    final String apiPath = '/proxy/rules/function';

    final Map<String, dynamic> apiParams = {
      'domain': domain,
      'functionId': functionId,
      if (branch != null) 'branch': branch,
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

    return models.ProxyRule.fromMap(res.data);
  }

  /// Create a new proxy rule for to redirect from custom domain to another
  /// domain.
  ///
  /// Rule ID is automatically generated as MD5 hash of a rule domain for
  /// performance purposes.
  Future<models.ProxyRule> createRedirectRule({
    required String domain,
    required String url,
    required enums.StatusCode statusCode,
    required String resourceId,
    required enums.ProxyResourceType resourceType,
  }) async {
    final String apiPath = '/proxy/rules/redirect';

    final Map<String, dynamic> apiParams = {
      'domain': domain,
      'url': url,
      'statusCode': statusCode.value,
      'resourceId': resourceId,
      'resourceType': resourceType.value,
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

    return models.ProxyRule.fromMap(res.data);
  }

  /// Create a new proxy rule for serving Appwrite Site on custom domain.
  ///
  /// Rule ID is automatically generated as MD5 hash of a rule domain for
  /// performance purposes.
  Future<models.ProxyRule> createSiteRule({
    required String domain,
    required String siteId,
    String? branch,
  }) async {
    final String apiPath = '/proxy/rules/site';

    final Map<String, dynamic> apiParams = {
      'domain': domain,
      'siteId': siteId,
      if (branch != null) 'branch': branch,
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

    return models.ProxyRule.fromMap(res.data);
  }

  /// Create an SMTP ingress rule that asynchronously executes an Appwrite
  /// Function for incoming email.
  Future<models.ProxyRule> createSMTPRule({
    required String domain,
    required String functionId,
    String? branch,
  }) async {
    final String apiPath = '/proxy/rules/smtp';

    final Map<String, dynamic> apiParams = {
      'domain': domain,
      'functionId': functionId,
      if (branch != null) 'branch': branch,
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

    return models.ProxyRule.fromMap(res.data);
  }

  /// Get a proxy rule by its unique ID.
  Future<models.ProxyRule> getRule({
    required String ruleId,
  }) async {
    if (ruleId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "ruleId"',
      );
    }

    final String apiPath = '/proxy/rules/{ruleId}'.replaceAll(
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

    return models.ProxyRule.fromMap(res.data);
  }

  /// Delete a proxy rule by its unique ID.
  Future deleteRule({
    required String ruleId,
  }) async {
    if (ruleId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "ruleId"',
      );
    }

    final String apiPath = '/proxy/rules/{ruleId}'.replaceAll(
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

  /// Update the function and VCS branch a function proxy rule executes. The rule
  /// domain cannot be changed.
  Future<models.ProxyRule> updateFunctionRule({
    required String ruleId,
    required String functionId,
    String? branch,
  }) async {
    if (ruleId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "ruleId"',
      );
    }

    final String apiPath = '/proxy/rules/{ruleId}/function'.replaceAll(
      '{ruleId}',
      _encodePath(ruleId),
    );

    final Map<String, dynamic> apiParams = {
      'functionId': functionId,
      if (branch != null) 'branch': branch,
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

    return models.ProxyRule.fromMap(res.data);
  }

  /// Update the target URL, status code and parent resource of a redirect proxy
  /// rule. The rule domain cannot be changed.
  Future<models.ProxyRule> updateRedirectRule({
    required String ruleId,
    required String url,
    required enums.StatusCode statusCode,
    required String resourceId,
    required enums.ProxyResourceType resourceType,
  }) async {
    if (ruleId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "ruleId"',
      );
    }

    final String apiPath = '/proxy/rules/{ruleId}/redirect'.replaceAll(
      '{ruleId}',
      _encodePath(ruleId),
    );

    final Map<String, dynamic> apiParams = {
      'url': url,
      'statusCode': statusCode.value,
      'resourceId': resourceId,
      'resourceType': resourceType.value,
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

    return models.ProxyRule.fromMap(res.data);
  }

  /// Update the site and VCS branch a site proxy rule serves. The rule domain
  /// cannot be changed.
  Future<models.ProxyRule> updateSiteRule({
    required String ruleId,
    required String siteId,
    String? branch,
  }) async {
    if (ruleId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "ruleId"',
      );
    }

    final String apiPath = '/proxy/rules/{ruleId}/site'.replaceAll(
      '{ruleId}',
      _encodePath(ruleId),
    );

    final Map<String, dynamic> apiParams = {
      'siteId': siteId,
      if (branch != null) 'branch': branch,
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

    return models.ProxyRule.fromMap(res.data);
  }

  /// If not succeeded yet, retry verification process of a proxy rule domain.
  /// This endpoint triggers domain verification by checking DNS records. If
  /// verification is successful, a TLS certificate will be automatically
  /// provisioned for the domain asynchronously in the background. A verified
  /// rule whose certificate renewal failed or is blocked, or whose certificate
  /// expired, is checked the same way, and its certificate renewed in the
  /// background.
  Future<models.ProxyRule> updateRuleStatus({
    required String ruleId,
  }) async {
    if (ruleId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "ruleId"',
      );
    }

    final String apiPath = '/proxy/rules/{ruleId}/status'.replaceAll(
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
      HttpMethod.patch,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.ProxyRule.fromMap(res.data);
  }
}
