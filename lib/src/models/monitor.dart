part of '../../models.dart';

/// Monitor
class Monitor implements Model {
  /// Monitor ID.
  final String $id;

  /// Monitor creation date in ISO 8601 format.
  final String $createdAt;

  /// Monitor update date in ISO 8601 format.
  final String $updatedAt;

  /// Monitor name.
  final String name;

  /// Project ID.
  final String projectId;

  /// Rules that must all hold for the monitor to fire, as query strings. A usage monitor has one comparing a metric with a threshold, optionally scoped with `equal(&#039;resourceType&#039;)` and `equal(&#039;resourceId&#039;)`. A probe monitor fires when its rules match the check, over these variables: `http` `statusCode`, `latency`, `certificateDays` and `certificateLifetime`; `dns` `answer`, `answers` and `latency`; `tcp` `latency`; `smtp` `code`, `latency`, `certificateDays` and `certificateLifetime`. A failed connection fires whatever the rules.
  final List<String> rules;

  /// What the monitor checks: `usage` compares a usage metric with a threshold; `http`, `dns`, `tcp` and `smtp` probe a target on their own interval.
  final enums.MonitorType type;

  /// Type of the resource the monitor watches, from its rules: the project, or one database, bucket, function or site.
  final enums.MonitorResourceType resourceType;

  /// ID of the resource the monitor watches, from its rules. The project ID for a project-wide monitor.
  final String resourceId;

  /// Seconds a counter metric is summed over, and a growth metric is measured across. Gauges compare their latest value. Usage is read a short lag behind the evaluation (`_APP_ALERTS_USAGE_LAG`, 120 seconds by default) so events still being written are counted by the next evaluation.
  final int window;

  /// Minimum seconds between two team notifications of this monitor firing. Events fire on every change regardless.
  final int cooldown;

  /// Whether the monitor is evaluated.
  final bool enabled;

  /// Organization roles whose confirmed members get an email and a console notification when the monitor fires and resolves. Empty when the alert events are the only delivery. Not used while `escalationId` is set.
  final List<String> notify;

  /// ID of the organization&#039;s escalation that notifies the team of this monitor&#039;s alerts, step by step until one is acknowledged. When set, `notify` is not used. Empty to notify the `notify` roles once.
  final String escalationId;

  /// How urgent the monitor&#039;s alerts are: `info`, `warning`, `error` or `critical`. Critical alerts may be delivered with higher urgency by the notification channels that support it.
  final enums.MonitorSeverity severity;

  /// Whether the monitor is firing, as of its last evaluation.
  final enums.MonitorStatus status;

  /// Metric value at the last evaluation. Null before the first evaluation, and when the last evaluation (`evaluatedAt`) found no usage recorded to read: without data a monitor is not compared, so it keeps its status and open alert.
  final double? value;

  /// Last evaluation date in ISO 8601 format.
  final String? evaluatedAt;

  /// ID of the alert the monitor is firing for. Empty while it is not firing.
  final String alertId;

  /// Date the monitor last announced an alert, in ISO 8601 format.
  final String? triggeredAt;

  /// Probe monitors: seconds between two checks, read back raised to the plan&#039;s minimum. 0 for usage monitors, which are evaluated on the server&#039;s interval.
  final int interval;

  /// Probe monitors: seconds a check may take before it fails.
  final int timeout;

  /// HTTP monitors: URL requested.
  final String url;

  /// HTTP monitors: method the URL is requested with. Null for other types.
  final enums.MonitorMethod? method;

  /// HTTP monitors: headers sent, as an object of header names and values.
  final Map<String, dynamic>? headers;

  /// HTTP monitors: request body sent.
  final String body;

  /// DNS monitors: domain queried.
  final String domain;

  /// DNS monitors: record type queried. Null for other types.
  final enums.MonitorRecord? record;

  /// DNS monitors: resolver queried. Empty for the server&#039;s DNS resolver.
  final String resolver;

  /// TCP and SMTP monitors: hostname or IP address connected to.
  final String host;

  /// TCP and SMTP monitors: port connected to.
  final int port;

  /// SMTP monitors: how the connection is secured. `auto` picks implicit TLS on port 465, STARTTLS on 587 and none otherwise. Null for other types.
  final enums.MonitorTlsMode? tlsMode;

  /// Probe monitors: what the last check found. `ok` passes; anything else opened the monitor&#039;s alert. Null before the first check.
  final enums.MonitorResult? result;

  /// Probe monitors: milliseconds the last check took.
  final int? latency;

  /// Probe monitors: last status code an HTTP target answered with, reply code an SMTP server sent, or response code a DNS resolver returned.
  final int? code;

  /// Probe monitors: expiry date of the TLS certificate the last check saw, in ISO 8601 format. Null without TLS.
  final String? certificateExpiresAt;

  Monitor({
    required this.$id,
    required this.$createdAt,
    required this.$updatedAt,
    required this.name,
    required this.projectId,
    required this.rules,
    required this.type,
    required this.resourceType,
    required this.resourceId,
    required this.window,
    required this.cooldown,
    required this.enabled,
    required this.notify,
    required this.escalationId,
    required this.severity,
    required this.status,
    this.value,
    this.evaluatedAt,
    required this.alertId,
    this.triggeredAt,
    required this.interval,
    required this.timeout,
    required this.url,
    this.method,
    this.headers,
    required this.body,
    required this.domain,
    this.record,
    required this.resolver,
    required this.host,
    required this.port,
    this.tlsMode,
    this.result,
    this.latency,
    this.code,
    this.certificateExpiresAt,
  });
  factory Monitor.fromMap(
    Map<String, dynamic> map,
  ) {
    map = {
      '\$id': "",
      '\$createdAt': "",
      '\$updatedAt': "",
      'name': "",
      'projectId': "",
      'rules': [],
      'type': "usage",
      'resourceType': "project",
      'resourceId': "",
      'window': 3600,
      'cooldown': 3600,
      'enabled': true,
      'notify': ["owner"],
      'escalationId': "",
      'severity': "warning",
      'status': "ok",
      'alertId': "",
      'interval': 0,
      'timeout': 0,
      'url': "",
      'body': "",
      'domain': "",
      'resolver': "",
      'host': "",
      'port': 0,
      ...map,
    };

    return Monitor(
      $id: map['\$id'].toString(),
      $createdAt: map['\$createdAt'].toString(),
      $updatedAt: map['\$updatedAt'].toString(),
      name: map['name'].toString(),
      projectId: map['projectId'].toString(),
      rules: List.from(map['rules'] ?? []),
      type: enums.MonitorType.values.firstWhere(
        (e) => e.value == map['type'],
      ),
      resourceType: enums.MonitorResourceType.values.firstWhere(
        (e) => e.value == map['resourceType'],
      ),
      resourceId: map['resourceId'].toString(),
      window: map['window'],
      cooldown: map['cooldown'],
      enabled: map['enabled'],
      notify: List.from(map['notify'] ?? []),
      escalationId: map['escalationId'].toString(),
      severity: enums.MonitorSeverity.values.firstWhere(
        (e) => e.value == map['severity'],
      ),
      status: enums.MonitorStatus.values.firstWhere(
        (e) => e.value == map['status'],
      ),
      value: map['value']?.toDouble(),
      evaluatedAt: map['evaluatedAt']?.toString(),
      alertId: map['alertId'].toString(),
      triggeredAt: map['triggeredAt']?.toString(),
      interval: map['interval'],
      timeout: map['timeout'],
      url: map['url'].toString(),
      method: map['method'] != null
          ? enums.MonitorMethod.values.firstWhere(
              (e) => e.value == map['method'],
            )
          : null,
      headers: map['headers'],
      body: map['body'].toString(),
      domain: map['domain'].toString(),
      record: map['record'] != null
          ? enums.MonitorRecord.values.firstWhere(
              (e) => e.value == map['record'],
            )
          : null,
      resolver: map['resolver'].toString(),
      host: map['host'].toString(),
      port: map['port'],
      tlsMode: map['tlsMode'] != null
          ? enums.MonitorTlsMode.values.firstWhere(
              (e) => e.value == map['tlsMode'],
            )
          : null,
      result: map['result'] != null
          ? enums.MonitorResult.values.firstWhere(
              (e) => e.value == map['result'],
            )
          : null,
      latency: map['latency'],
      code: map['code'],
      certificateExpiresAt: map['certificateExpiresAt']?.toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "\$createdAt": $createdAt,
      "\$updatedAt": $updatedAt,
      "name": name,
      "projectId": projectId,
      "rules": rules,
      "type": type.value,
      "resourceType": resourceType.value,
      "resourceId": resourceId,
      "window": window,
      "cooldown": cooldown,
      "enabled": enabled,
      "notify": notify,
      "escalationId": escalationId,
      "severity": severity.value,
      "status": status.value,
      "value": value,
      "evaluatedAt": evaluatedAt,
      "alertId": alertId,
      "triggeredAt": triggeredAt,
      "interval": interval,
      "timeout": timeout,
      "url": url,
      "method": method?.value,
      "headers": headers,
      "body": body,
      "domain": domain,
      "record": record?.value,
      "resolver": resolver,
      "host": host,
      "port": port,
      "tlsMode": tlsMode?.value,
      "result": result?.value,
      "latency": latency,
      "code": code,
      "certificateExpiresAt": certificateExpiresAt,
    };
  }
}
