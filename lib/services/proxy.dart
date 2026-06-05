part of '../dart_appwrite.dart';

/// The Proxy Service allows you to configure actions for your domains beyond
/// DNS configuration.
class Proxy extends Service {
  Proxy(super.client);

  /// Get a list of all the proxy rules. You can use the query params to filter
  /// your results.
  Future<models.ProxyRuleList> listRules(
      {List<String>? queries, bool? total}) async {
    final String apiPath = '/proxy/rules';

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,
      if (total != null) 'total': total,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ProxyRuleList.fromMap(res.data);
  }

  /// Create a new proxy rule for serving Appwrite's API on custom domain.
  ///
  /// Rule ID is automatically generated as MD5 hash of a rule domain for
  /// performance purposes.
  Future<models.ProxyRule> createAPIRule({required String domain}) async {
    final String apiPath = '/proxy/rules/api';

    final Map<String, dynamic> apiParams = {
      'domain': domain,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ProxyRule.fromMap(res.data);
  }

  /// Create a new proxy rule for executing Appwrite Function on custom domain.
  ///
  /// Rule ID is automatically generated as MD5 hash of a rule domain for
  /// performance purposes.
  Future<models.ProxyRule> createFunctionRule(
      {required String domain,
      required String functionId,
      String? branch}) async {
    final String apiPath = '/proxy/rules/function';

    final Map<String, dynamic> apiParams = {
      'domain': domain,
      'functionId': functionId,
      if (branch != null) 'branch': branch,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ProxyRule.fromMap(res.data);
  }

  /// Create a new proxy rule for to redirect from custom domain to another
  /// domain.
  ///
  /// Rule ID is automatically generated as MD5 hash of a rule domain for
  /// performance purposes.
  Future<models.ProxyRule> createRedirectRule(
      {required String domain,
      required String url,
      required enums.StatusCode statusCode,
      required String resourceId,
      required enums.ProxyResourceType resourceType}) async {
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
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ProxyRule.fromMap(res.data);
  }

  /// Create a new proxy rule for serving Appwrite Site on custom domain.
  ///
  /// Rule ID is automatically generated as MD5 hash of a rule domain for
  /// performance purposes.
  Future<models.ProxyRule> createSiteRule(
      {required String domain, required String siteId, String? branch}) async {
    final String apiPath = '/proxy/rules/site';

    final Map<String, dynamic> apiParams = {
      'domain': domain,
      'siteId': siteId,
      if (branch != null) 'branch': branch,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ProxyRule.fromMap(res.data);
  }

  /// Get a proxy rule by its unique ID.
  Future<models.ProxyRule> getRule({required String ruleId}) async {
    final String apiPath =
        '/proxy/rules/{ruleId}'.replaceAll('{ruleId}', ruleId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ProxyRule.fromMap(res.data);
  }

  /// Delete a proxy rule by its unique ID.
  Future deleteRule({required String ruleId}) async {
    final String apiPath =
        '/proxy/rules/{ruleId}'.replaceAll('{ruleId}', ruleId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// If not succeeded yet, retry verification process of a proxy rule domain.
  /// This endpoint triggers domain verification by checking DNS records. If
  /// verification is successful, a TLS certificate will be automatically
  /// provisioned for the domain asynchronously in the background.
  Future<models.ProxyRule> updateRuleStatus({required String ruleId}) async {
    final String apiPath =
        '/proxy/rules/{ruleId}/status'.replaceAll('{ruleId}', ruleId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ProxyRule.fromMap(res.data);
  }
}
