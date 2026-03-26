part of '../dart_appwrite.dart';

class Webhooks extends Service {
  Webhooks(super.client);

  /// Get a list of all webhooks belonging to the project. You can use the query
  /// params to filter your results.
  Future<models.WebhookList> list({List<String>? queries, bool? total}) async {
    final String apiPath = '/webhooks';

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,
      if (total != null) 'total': total,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.WebhookList.fromMap(res.data);
  }

  /// Create a new webhook. Use this endpoint to configure a URL that will
  /// receive events from Appwrite when specific events occur.
  Future<models.Webhook> create(
      {required String webhookId,
      required String url,
      required String name,
      required List<String> events,
      bool? enabled,
      bool? security,
      String? httpUser,
      String? httpPass}) async {
    final String apiPath = '/webhooks';

    final Map<String, dynamic> apiParams = {
      'webhookId': webhookId,
      'url': url,
      'name': name,
      'events': events,
      if (enabled != null) 'enabled': enabled,
      if (security != null) 'security': security,
      if (httpUser != null) 'httpUser': httpUser,
      if (httpPass != null) 'httpPass': httpPass,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Webhook.fromMap(res.data);
  }

  /// Get a webhook by its unique ID. This endpoint returns details about a
  /// specific webhook configured for a project.
  Future<models.Webhook> get({required String webhookId}) async {
    final String apiPath =
        '/webhooks/{webhookId}'.replaceAll('{webhookId}', webhookId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Webhook.fromMap(res.data);
  }

  /// Update a webhook by its unique ID. Use this endpoint to update the URL,
  /// events, or status of an existing webhook.
  Future<models.Webhook> update(
      {required String webhookId,
      required String name,
      required String url,
      required List<String> events,
      bool? enabled,
      bool? security,
      String? httpUser,
      String? httpPass}) async {
    final String apiPath =
        '/webhooks/{webhookId}'.replaceAll('{webhookId}', webhookId);

    final Map<String, dynamic> apiParams = {
      'name': name,
      'url': url,
      'events': events,
      if (enabled != null) 'enabled': enabled,
      if (security != null) 'security': security,
      if (httpUser != null) 'httpUser': httpUser,
      if (httpPass != null) 'httpPass': httpPass,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Webhook.fromMap(res.data);
  }

  /// Delete a webhook by its unique ID. Once deleted, the webhook will no longer
  /// receive project events.
  Future delete({required String webhookId}) async {
    final String apiPath =
        '/webhooks/{webhookId}'.replaceAll('{webhookId}', webhookId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// Update the webhook signature key. This endpoint can be used to regenerate
  /// the signature key used to sign and validate payload deliveries for a
  /// specific webhook.
  Future<models.Webhook> updateSignature({required String webhookId}) async {
    final String apiPath =
        '/webhooks/{webhookId}/signature'.replaceAll('{webhookId}', webhookId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Webhook.fromMap(res.data);
  }
}
