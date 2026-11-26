part of '../dart_appwrite.dart';

/// The Alerts service lists the alerts your monitors raised: when each fired,
/// the readings while it fired, and when it resolved.
class Alerts extends Service {
  Alerts(super.client);

  /// Get a list of the alerts the project's monitors raised, open and resolved.
  /// An alert is created when a monitor starts firing and resolved when it
  /// recovers. Use queries to filter by monitor, status, type or resource, order
  /// by `$createdAt` for the latest first, and `Query.search('search', term)` to
  /// search alert and monitor IDs, names and metrics.
  Future<models.AlertList> list({
    List<String>? queries,
    bool? total,
  }) async {
    final String apiPath = '/alerts';

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

    return models.AlertList.fromMap(res.data);
  }

  /// Get an alert by its unique ID: the monitor that raised it, when it fired
  /// and resolved, and the readings while it fired.
  Future<models.Alert> get({
    required String alertId,
  }) async {
    if (alertId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "alertId"',
      );
    }

    final String apiPath = '/alerts/{alertId}'.replaceAll(
      '{alertId}',
      _encodePath(alertId),
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

    return models.Alert.fromMap(res.data);
  }

  /// Acknowledge a firing alert, or undo that. Everyone who can read the alert
  /// sees who acknowledged it and when. The alert keeps firing until its monitor
  /// recovers; a resolved alert keeps its acknowledgement and cannot be changed.
  Future<models.Alert> update({
    required String alertId,
    required bool acknowledged,
  }) async {
    if (alertId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "alertId"',
      );
    }

    final String apiPath = '/alerts/{alertId}'.replaceAll(
      '{alertId}',
      _encodePath(alertId),
    );

    final Map<String, dynamic> apiParams = {
      'acknowledged': acknowledged,
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

    return models.Alert.fromMap(res.data);
  }
}
