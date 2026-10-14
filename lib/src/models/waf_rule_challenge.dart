part of '../../models.dart';

/// WafRuleChallenge
class WafRuleChallenge implements Model {
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

  /// Challenge type enforced when the rule matches.
  final String challengeType;

  /// Challenge difficulty from 1 (easiest) to 5 (hardest) enforced when the rule matches.
  final int difficulty;

  /// Seconds a visitor stays cleared after passing the challenge before being challenged again.
  final int ttl;

  WafRuleChallenge({
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
    required this.challengeType,
    required this.difficulty,
    required this.ttl,
  });
  factory WafRuleChallenge.fromMap(
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
      'challengeType': "compute",
      'difficulty': 3,
      'ttl': 1800,
      ...map,
    };

    return WafRuleChallenge(
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
      challengeType: map['challengeType'].toString(),
      difficulty: map['difficulty'],
      ttl: map['ttl'],
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
      "challengeType": challengeType,
      "difficulty": difficulty,
      "ttl": ttl,
    };
  }
}
