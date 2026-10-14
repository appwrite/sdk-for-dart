part of '../../models.dart';

/// WafRuleRateLimit
class WafRuleRateLimit implements Model {
  /// Rule ID.
  final String $id;

  /// WAF rule creation time in ISO 8601 format.
  final String $createdAt;

  /// WAF rule last update time in ISO 8601 format.
  final String $updatedAt;

  /// Human friendly rule name.
  final String name;

  /// Optional description for the rule.
  final String description;

  /// Team ID.
  final String teamId;

  /// Project ID.
  final String projectId;

  /// Resource type the rule is scoped to.
  final String resourceType;

  /// Resource identifier. Empty for API-wide rules.
  final String resourceId;

  /// Action performed when the rule matches.
  final enums.WafRuleAction action;

  /// Evaluation priority. Lower values execute earlier.
  final int priority;

  /// Whether the rule is active.
  final bool enabled;

  /// List of conditions evaluated for this rule.
  final List<Map> conditions;

  /// Action specific configuration.
  final Map<String, dynamic> config;

  /// Maximum number of matching requests allowed for the given interval.
  final int limit;

  /// Interval in seconds for the rate limit window.
  final int interval;

  /// Rate limit key: `ip` limits per client IP, `userId` limits per authenticated user.
  final String key;

  /// Rate limit strategy: `fixedWindow`, `slidingWindow`, or `tokenBucket`.
  final String strategy;

  /// Maximum burst capacity in tokens, applied by the `tokenBucket` strategy. The sustained refill rate is `limit / interval`. Defaults to `limit`.
  final int maxBucketSize;

  WafRuleRateLimit({
    required this.$id,
    required this.$createdAt,
    required this.$updatedAt,
    required this.name,
    required this.description,
    required this.teamId,
    required this.projectId,
    required this.resourceType,
    required this.resourceId,
    required this.action,
    required this.priority,
    required this.enabled,
    required this.conditions,
    required this.config,
    required this.limit,
    required this.interval,
    required this.key,
    required this.strategy,
    required this.maxBucketSize,
  });
  factory WafRuleRateLimit.fromMap(
    Map<String, dynamic> map,
  ) {
    map = {
      '\$id': "",
      '\$createdAt': "",
      '\$updatedAt': "",
      'name': "",
      'description': "",
      'teamId': "",
      'projectId': "",
      'resourceType': "api",
      'resourceId': "",
      'priority': 0,
      'enabled': true,
      'conditions': [],
      'config': <String, dynamic>{},
      'limit': 100,
      'interval': 3600,
      'key': "ip",
      'strategy': "fixedWindow",
      'maxBucketSize': 0,
      ...map,
    };

    return WafRuleRateLimit(
      $id: map['\$id'].toString(),
      $createdAt: map['\$createdAt'].toString(),
      $updatedAt: map['\$updatedAt'].toString(),
      name: map['name'].toString(),
      description: map['description'].toString(),
      teamId: map['teamId'].toString(),
      projectId: map['projectId'].toString(),
      resourceType: map['resourceType'].toString(),
      resourceId: map['resourceId'].toString(),
      action: enums.WafRuleAction.values.firstWhere(
        (e) => e.value == map['action'],
      ),
      priority: map['priority'],
      enabled: map['enabled'],
      conditions: List.from(map['conditions'] ?? []),
      config: map['config'],
      limit: map['limit'],
      interval: map['interval'],
      key: map['key'].toString(),
      strategy: map['strategy'].toString(),
      maxBucketSize: map['maxBucketSize'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "\$createdAt": $createdAt,
      "\$updatedAt": $updatedAt,
      "name": name,
      "description": description,
      "teamId": teamId,
      "projectId": projectId,
      "resourceType": resourceType,
      "resourceId": resourceId,
      "action": action.value,
      "priority": priority,
      "enabled": enabled,
      "conditions": conditions,
      "config": config,
      "limit": limit,
      "interval": interval,
      "key": key,
      "strategy": strategy,
      "maxBucketSize": maxBucketSize,
    };
  }
}
