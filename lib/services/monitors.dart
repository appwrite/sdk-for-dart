part of '../dart_appwrite.dart';

/// The Monitors service watches your project&#039;s usage and raises an alert when
/// a monitor&#039;s rules hold, announced by email, in the console or to a webhook.
class Monitors extends Service {
  Monitors(super.client);

  /// Get a list of the project's monitors of every type. Use queries to filter
  /// by type, resource, severity or status, and `Query.search('search', term)`
  /// to search monitor IDs, names, metrics and resources.
  Future<models.MonitorList> list({
    List<String>? queries,
    bool? total,
  }) async {
    final String apiPath = '/monitors';

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

    return models.MonitorList.fromMap(res.data);
  }

  /// Create a DNS monitor. It asks a resolver for a domain's records of one type
  /// on its own interval, and opens an alert when the resolver fails, or when
  /// its rules match the answers, by default when there is no such record. Each
  /// alert fires the `monitors.[monitorId].alerts.[alertId].create` event when
  /// it opens and `.update` when a check passes again, for project webhooks,
  /// functions and realtime, and notifies the organization's members by email
  /// and in the console.
  Future<models.Monitor> createDnsMonitor({
    required String monitorId,
    required String name,
    required String domain,
    enums.MonitorRecord? record,
    String? resolver,
    List<String>? rules,
    int? interval,
    int? timeout,
    int? cooldown,
    bool? enabled,
    List<String>? notify,
    enums.MonitorSeverity? severity,
    String? escalationId,
  }) async {
    final String apiPath = '/monitors/dns';

    final Map<String, dynamic> apiParams = {
      'monitorId': monitorId,
      'name': name,
      'domain': domain,
      if (record != null) 'record': record?.value,
      if (resolver != null) 'resolver': resolver,
      if (rules != null) 'rules': rules,
      if (interval != null) 'interval': interval,
      if (timeout != null) 'timeout': timeout,
      if (cooldown != null) 'cooldown': cooldown,
      if (enabled != null) 'enabled': enabled,
      if (notify != null) 'notify': notify,
      if (severity != null) 'severity': severity?.value,
      if (escalationId != null) 'escalationId': escalationId,
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

    return models.Monitor.fromMap(res.data);
  }

  /// Update a DNS monitor by its unique ID. Only the parameters passed change;
  /// the monitor's state, its last check and its open alert are kept. Passing
  /// `rules` replaces all of them.
  Future<models.Monitor> updateDnsMonitor({
    required String monitorId,
    String? name,
    String? domain,
    enums.MonitorRecord? record,
    String? resolver,
    List<String>? rules,
    int? interval,
    int? timeout,
    int? cooldown,
    bool? enabled,
    List<String>? notify,
    enums.MonitorSeverity? severity,
    String? escalationId,
  }) async {
    if (monitorId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "monitorId"',
      );
    }

    final String apiPath = '/monitors/dns/{monitorId}'.replaceAll(
      '{monitorId}',
      _encodePath(monitorId),
    );

    final Map<String, dynamic> apiParams = {
      if (name != null) 'name': name,
      if (domain != null) 'domain': domain,
      if (record != null) 'record': record?.value,
      if (resolver != null) 'resolver': resolver,
      if (rules != null) 'rules': rules,
      if (interval != null) 'interval': interval,
      if (timeout != null) 'timeout': timeout,
      if (cooldown != null) 'cooldown': cooldown,
      if (enabled != null) 'enabled': enabled,
      if (notify != null) 'notify': notify,
      if (severity != null) 'severity': severity?.value,
      if (escalationId != null) 'escalationId': escalationId,
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

    return models.Monitor.fromMap(res.data);
  }

  /// Create an HTTP monitor. It requests a URL on its own interval, following
  /// redirects, and opens an alert when the request fails or when its rules
  /// match the response, by default a status outside 2xx or the certificate of
  /// an HTTPS URL about to expire. The response body is discarded as it arrives.
  /// Each alert fires the `monitors.[monitorId].alerts.[alertId].create` event
  /// when it opens and `.update` when a check passes again, for project
  /// webhooks, functions and realtime, and notifies the organization's members
  /// by email and in the console.
  Future<models.Monitor> createHttpMonitor({
    required String monitorId,
    required String name,
    required String url,
    enums.MonitorMethod? method,
    Map? headers,
    String? body,
    List<String>? rules,
    int? interval,
    int? timeout,
    int? cooldown,
    bool? enabled,
    List<String>? notify,
    enums.MonitorSeverity? severity,
    String? escalationId,
  }) async {
    final String apiPath = '/monitors/http';

    final Map<String, dynamic> apiParams = {
      'monitorId': monitorId,
      'name': name,
      'url': url,
      if (method != null) 'method': method?.value,
      if (headers != null) 'headers': headers,
      if (body != null) 'body': body,
      if (rules != null) 'rules': rules,
      if (interval != null) 'interval': interval,
      if (timeout != null) 'timeout': timeout,
      if (cooldown != null) 'cooldown': cooldown,
      if (enabled != null) 'enabled': enabled,
      if (notify != null) 'notify': notify,
      if (severity != null) 'severity': severity?.value,
      if (escalationId != null) 'escalationId': escalationId,
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

    return models.Monitor.fromMap(res.data);
  }

  /// Update an HTTP monitor by its unique ID. Only the parameters passed change;
  /// the monitor's state, its last check and its open alert are kept. Passing
  /// `rules` replaces all of them.
  Future<models.Monitor> updateHttpMonitor({
    required String monitorId,
    String? name,
    String? url,
    enums.MonitorMethod? method,
    Map? headers,
    String? body,
    List<String>? rules,
    int? interval,
    int? timeout,
    int? cooldown,
    bool? enabled,
    List<String>? notify,
    enums.MonitorSeverity? severity,
    String? escalationId,
  }) async {
    if (monitorId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "monitorId"',
      );
    }

    final String apiPath = '/monitors/http/{monitorId}'.replaceAll(
      '{monitorId}',
      _encodePath(monitorId),
    );

    final Map<String, dynamic> apiParams = {
      if (name != null) 'name': name,
      if (url != null) 'url': url,
      if (method != null) 'method': method?.value,
      if (headers != null) 'headers': headers,
      if (body != null) 'body': body,
      if (rules != null) 'rules': rules,
      if (interval != null) 'interval': interval,
      if (timeout != null) 'timeout': timeout,
      if (cooldown != null) 'cooldown': cooldown,
      if (enabled != null) 'enabled': enabled,
      if (notify != null) 'notify': notify,
      if (severity != null) 'severity': severity?.value,
      if (escalationId != null) 'escalationId': escalationId,
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

    return models.Monitor.fromMap(res.data);
  }

  /// Create an SMTP monitor. It reads a mail server's greeting, sends `EHLO`
  /// and, as its TLS mode asks, upgrades with `STARTTLS` or speaks TLS from the
  /// start, on its own interval. It opens an alert when the server cannot be
  /// reached, refuses the session or fails the TLS handshake, or when its rules
  /// match. It never authenticates or sends mail. Each alert fires the
  /// `monitors.[monitorId].alerts.[alertId].create` event when it opens and
  /// `.update` when a check passes again, for project webhooks, functions and
  /// realtime, and notifies the organization's members by email and in the
  /// console.
  Future<models.Monitor> createSmtpMonitor({
    required String monitorId,
    required String name,
    required String host,
    required int port,
    enums.MonitorTlsMode? tlsMode,
    List<String>? rules,
    int? interval,
    int? timeout,
    int? cooldown,
    bool? enabled,
    List<String>? notify,
    enums.MonitorSeverity? severity,
    String? escalationId,
  }) async {
    final String apiPath = '/monitors/smtp';

    final Map<String, dynamic> apiParams = {
      'monitorId': monitorId,
      'name': name,
      'host': host,
      'port': port,
      if (tlsMode != null) 'tlsMode': tlsMode?.value,
      if (rules != null) 'rules': rules,
      if (interval != null) 'interval': interval,
      if (timeout != null) 'timeout': timeout,
      if (cooldown != null) 'cooldown': cooldown,
      if (enabled != null) 'enabled': enabled,
      if (notify != null) 'notify': notify,
      if (severity != null) 'severity': severity?.value,
      if (escalationId != null) 'escalationId': escalationId,
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

    return models.Monitor.fromMap(res.data);
  }

  /// Update an SMTP monitor by its unique ID. Only the parameters passed change;
  /// the monitor's state, its last check and its open alert are kept. Passing
  /// `rules` replaces all of them.
  Future<models.Monitor> updateSmtpMonitor({
    required String monitorId,
    String? name,
    String? host,
    int? port,
    enums.MonitorTlsMode? tlsMode,
    List<String>? rules,
    int? interval,
    int? timeout,
    int? cooldown,
    bool? enabled,
    List<String>? notify,
    enums.MonitorSeverity? severity,
    String? escalationId,
  }) async {
    if (monitorId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "monitorId"',
      );
    }

    final String apiPath = '/monitors/smtp/{monitorId}'.replaceAll(
      '{monitorId}',
      _encodePath(monitorId),
    );

    final Map<String, dynamic> apiParams = {
      if (name != null) 'name': name,
      if (host != null) 'host': host,
      if (port != null) 'port': port,
      if (tlsMode != null) 'tlsMode': tlsMode?.value,
      if (rules != null) 'rules': rules,
      if (interval != null) 'interval': interval,
      if (timeout != null) 'timeout': timeout,
      if (cooldown != null) 'cooldown': cooldown,
      if (enabled != null) 'enabled': enabled,
      if (notify != null) 'notify': notify,
      if (severity != null) 'severity': severity?.value,
      if (escalationId != null) 'escalationId': escalationId,
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

    return models.Monitor.fromMap(res.data);
  }

  /// Create a TCP monitor. It opens a connection to a host and port on its own
  /// interval and closes it at once, and opens an alert when the connection
  /// cannot be made, or when its rules match. Each alert fires the
  /// `monitors.[monitorId].alerts.[alertId].create` event when it opens and
  /// `.update` when a check passes again, for project webhooks, functions and
  /// realtime, and notifies the organization's members by email and in the
  /// console.
  Future<models.Monitor> createTcpMonitor({
    required String monitorId,
    required String name,
    required String host,
    required int port,
    List<String>? rules,
    int? interval,
    int? timeout,
    int? cooldown,
    bool? enabled,
    List<String>? notify,
    enums.MonitorSeverity? severity,
    String? escalationId,
  }) async {
    final String apiPath = '/monitors/tcp';

    final Map<String, dynamic> apiParams = {
      'monitorId': monitorId,
      'name': name,
      'host': host,
      'port': port,
      if (rules != null) 'rules': rules,
      if (interval != null) 'interval': interval,
      if (timeout != null) 'timeout': timeout,
      if (cooldown != null) 'cooldown': cooldown,
      if (enabled != null) 'enabled': enabled,
      if (notify != null) 'notify': notify,
      if (severity != null) 'severity': severity?.value,
      if (escalationId != null) 'escalationId': escalationId,
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

    return models.Monitor.fromMap(res.data);
  }

  /// Update a TCP monitor by its unique ID. Only the parameters passed change;
  /// the monitor's state, its last check and its open alert are kept. Passing
  /// `rules` replaces all of them.
  Future<models.Monitor> updateTcpMonitor({
    required String monitorId,
    String? name,
    String? host,
    int? port,
    List<String>? rules,
    int? interval,
    int? timeout,
    int? cooldown,
    bool? enabled,
    List<String>? notify,
    enums.MonitorSeverity? severity,
    String? escalationId,
  }) async {
    if (monitorId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "monitorId"',
      );
    }

    final String apiPath = '/monitors/tcp/{monitorId}'.replaceAll(
      '{monitorId}',
      _encodePath(monitorId),
    );

    final Map<String, dynamic> apiParams = {
      if (name != null) 'name': name,
      if (host != null) 'host': host,
      if (port != null) 'port': port,
      if (rules != null) 'rules': rules,
      if (interval != null) 'interval': interval,
      if (timeout != null) 'timeout': timeout,
      if (cooldown != null) 'cooldown': cooldown,
      if (enabled != null) 'enabled': enabled,
      if (notify != null) 'notify': notify,
      if (severity != null) 'severity': severity?.value,
      if (escalationId != null) 'escalationId': escalationId,
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

    return models.Monitor.fromMap(res.data);
  }

  /// Create a usage monitor. It reads a usage metric of the project, or of one
  /// of its databases, buckets, functions or sites, on a schedule, and opens an
  /// alert when all its rules hold. Each alert fires the
  /// `monitors.[monitorId].alerts.[alertId].create` event when it opens and
  /// `.update` when usage recovers, for project webhooks, functions and
  /// realtime, and notifies the confirmed members of the `notify` roles by email
  /// and in the console, or the steps of the escalation set by `escalationId`.
  Future<models.Monitor> createUsageMonitor({
    required String monitorId,
    required String name,
    required List<String> rules,
    int? window,
    int? cooldown,
    bool? enabled,
    List<String>? notify,
    enums.MonitorSeverity? severity,
    String? escalationId,
  }) async {
    final String apiPath = '/monitors/usage';

    final Map<String, dynamic> apiParams = {
      'monitorId': monitorId,
      'name': name,
      'rules': rules,
      if (window != null) 'window': window,
      if (cooldown != null) 'cooldown': cooldown,
      if (enabled != null) 'enabled': enabled,
      if (notify != null) 'notify': notify,
      if (severity != null) 'severity': severity?.value,
      if (escalationId != null) 'escalationId': escalationId,
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

    return models.Monitor.fromMap(res.data);
  }

  /// Update a usage monitor by its unique ID. Only the parameters passed change;
  /// the monitor's state and its open alert are kept. Passing `rules` replaces
  /// all of them.
  Future<models.Monitor> updateUsageMonitor({
    required String monitorId,
    String? name,
    List<String>? rules,
    int? window,
    int? cooldown,
    bool? enabled,
    List<String>? notify,
    enums.MonitorSeverity? severity,
    String? escalationId,
  }) async {
    if (monitorId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "monitorId"',
      );
    }

    final String apiPath = '/monitors/usage/{monitorId}'.replaceAll(
      '{monitorId}',
      _encodePath(monitorId),
    );

    final Map<String, dynamic> apiParams = {
      if (name != null) 'name': name,
      if (rules != null) 'rules': rules,
      if (window != null) 'window': window,
      if (cooldown != null) 'cooldown': cooldown,
      if (enabled != null) 'enabled': enabled,
      if (notify != null) 'notify': notify,
      if (severity != null) 'severity': severity?.value,
      if (escalationId != null) 'escalationId': escalationId,
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

    return models.Monitor.fromMap(res.data);
  }

  /// Get a monitor by its unique ID, with its state as of its last evaluation.
  Future<models.Monitor> get({
    required String monitorId,
  }) async {
    if (monitorId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "monitorId"',
      );
    }

    final String apiPath = '/monitors/{monitorId}'.replaceAll(
      '{monitorId}',
      _encodePath(monitorId),
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

    return models.Monitor.fromMap(res.data);
  }

  /// Delete a monitor by its unique ID. It stops being evaluated; an alert it is
  /// firing is resolved and kept with the rest of its alert history.
  Future delete({
    required String monitorId,
  }) async {
    if (monitorId.isEmpty) {
      throw AppwriteException(
        'Missing required parameter: "monitorId"',
      );
    }

    final String apiPath = '/monitors/{monitorId}'.replaceAll(
      '{monitorId}',
      _encodePath(monitorId),
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
