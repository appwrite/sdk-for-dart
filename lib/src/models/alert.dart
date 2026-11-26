part of '../../models.dart';

/// Alert
class Alert implements Model {
  /// Alert ID.
  final String $id;

  /// Date the alert started firing, in ISO 8601 format.
  final String $createdAt;

  /// Alert update date in ISO 8601 format.
  final String $updatedAt;

  /// ID of the monitor that raised the alert.
  final String monitorId;

  /// ID of the project the alert is about. Empty for an alert of the whole organization.
  final String projectId;

  /// Name of the monitor when the alert fired.
  final String name;

  /// Whether the alert is still firing or has resolved.
  final enums.AlertStatus status;

  /// Date the alert resolved, in ISO 8601 format. Empty while it fires.
  final String? resolvedAt;

  /// Date a member acknowledged the alert, in ISO 8601 format. Empty while nobody has.
  final String? acknowledgedAt;

  /// ID of the user who acknowledged the alert. Empty while nobody has, or when it was acknowledged with an API key.
  final String acknowledgedBy;

  /// Name of the user who acknowledged the alert, when they did.
  final String acknowledgedByName;

  /// ID of the escalation notifying the team of this alert. Empty when the monitor notified its `notify` roles instead.
  final String escalationId;

  /// Index of the escalation&#039;s next step to notify, counting from 0. Equal to the number of steps once the last round has gone out.
  final int escalationStep;

  /// How many times the escalation&#039;s steps have been repeated for this alert.
  final int escalationRound;

  /// When the next step is notified, in ISO 8601 format. Null when nothing is due: the alert was acknowledged or resolved, or every step has gone out.
  final String? escalatesAt;

  /// The monitor&#039;s rules when the alert fired, as query strings.
  final List<String> rules;

  /// The monitor&#039;s severity when the alert fired: `info`, `warning`, `error` or `critical`.
  final enums.MonitorSeverity severity;

  /// Metric the alert fired on. Null for a probe monitor&#039;s alert.
  final enums.AlertMetric? metric;

  /// How the metric was compared with the threshold. Null for a probe monitor&#039;s alert.
  final enums.AlertComparator? comparator;

  /// Threshold the metric crossed, in the metric&#039;s unit.
  final double threshold;

  /// Latest reading while the alert fired: the metric&#039;s value for a usage monitor, and for a probe monitor its `latency`.
  final double value;

  /// Reading furthest past the threshold while the alert fired.
  final double peak;

  /// Type of the monitor that raised the alert.
  final enums.MonitorType type;

  /// Type of the resource the alert fired on: the project, or one database, bucket, function or site.
  final enums.MonitorResourceType resourceType;

  /// ID of the resource the alert fired on. The project ID for a project-wide monitor.
  final String resourceId;

  /// How many times the alert was announced as firing: once when it fired, and again after each cooldown while it kept firing.
  final int notifications;

  /// Probe monitors: response time in milliseconds of the latest check recorded on the alert.
  final int? latency;

  /// What the failing check of a probe monitor found when the alert opened, such as `connect_refused`. Null for a usage monitor&#039;s alert.
  final enums.MonitorResult? result;

  Alert({
    required this.$id,
    required this.$createdAt,
    required this.$updatedAt,
    required this.monitorId,
    required this.projectId,
    required this.name,
    required this.status,
    this.resolvedAt,
    this.acknowledgedAt,
    required this.acknowledgedBy,
    required this.acknowledgedByName,
    required this.escalationId,
    required this.escalationStep,
    required this.escalationRound,
    this.escalatesAt,
    required this.rules,
    required this.severity,
    this.metric,
    this.comparator,
    required this.threshold,
    required this.value,
    required this.peak,
    required this.type,
    required this.resourceType,
    required this.resourceId,
    required this.notifications,
    this.latency,
    this.result,
  });
  factory Alert.fromMap(
    Map<String, dynamic> map,
  ) {
    map = {
      '\$id': "",
      '\$createdAt': "",
      '\$updatedAt': "",
      'monitorId': "",
      'projectId': "",
      'name': "",
      'status': "firing",
      'acknowledgedBy': "",
      'acknowledgedByName': "",
      'escalationId': "",
      'escalationStep': 0,
      'escalationRound': 0,
      'rules': [],
      'severity': "warning",
      'threshold': 0,
      'value': 0,
      'peak': 0,
      'type': "usage",
      'resourceType': "project",
      'resourceId': "",
      'notifications': 0,
      ...map,
    };

    return Alert(
      $id: map['\$id'].toString(),
      $createdAt: map['\$createdAt'].toString(),
      $updatedAt: map['\$updatedAt'].toString(),
      monitorId: map['monitorId'].toString(),
      projectId: map['projectId'].toString(),
      name: map['name'].toString(),
      status: enums.AlertStatus.values.firstWhere(
        (e) => e.value == map['status'],
      ),
      resolvedAt: map['resolvedAt']?.toString(),
      acknowledgedAt: map['acknowledgedAt']?.toString(),
      acknowledgedBy: map['acknowledgedBy'].toString(),
      acknowledgedByName: map['acknowledgedByName'].toString(),
      escalationId: map['escalationId'].toString(),
      escalationStep: map['escalationStep'],
      escalationRound: map['escalationRound'],
      escalatesAt: map['escalatesAt']?.toString(),
      rules: List.from(map['rules'] ?? []),
      severity: enums.MonitorSeverity.values.firstWhere(
        (e) => e.value == map['severity'],
      ),
      metric: map['metric'] != null
          ? enums.AlertMetric.values.firstWhere(
              (e) => e.value == map['metric'],
            )
          : null,
      comparator: map['comparator'] != null
          ? enums.AlertComparator.values.firstWhere(
              (e) => e.value == map['comparator'],
            )
          : null,
      threshold: map['threshold'].toDouble(),
      value: map['value'].toDouble(),
      peak: map['peak'].toDouble(),
      type: enums.MonitorType.values.firstWhere(
        (e) => e.value == map['type'],
      ),
      resourceType: enums.MonitorResourceType.values.firstWhere(
        (e) => e.value == map['resourceType'],
      ),
      resourceId: map['resourceId'].toString(),
      notifications: map['notifications'],
      latency: map['latency'],
      result: map['result'] != null
          ? enums.MonitorResult.values.firstWhere(
              (e) => e.value == map['result'],
            )
          : null,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "\$createdAt": $createdAt,
      "\$updatedAt": $updatedAt,
      "monitorId": monitorId,
      "projectId": projectId,
      "name": name,
      "status": status.value,
      "resolvedAt": resolvedAt,
      "acknowledgedAt": acknowledgedAt,
      "acknowledgedBy": acknowledgedBy,
      "acknowledgedByName": acknowledgedByName,
      "escalationId": escalationId,
      "escalationStep": escalationStep,
      "escalationRound": escalationRound,
      "escalatesAt": escalatesAt,
      "rules": rules,
      "severity": severity.value,
      "metric": metric?.value,
      "comparator": comparator?.value,
      "threshold": threshold,
      "value": value,
      "peak": peak,
      "type": type.value,
      "resourceType": resourceType.value,
      "resourceId": resourceId,
      "notifications": notifications,
      "latency": latency,
      "result": result?.value,
    };
  }
}
