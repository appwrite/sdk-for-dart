part of '../../models.dart';

/// WAF rule list
class WafRuleList implements Model {
  /// Total number of rules that matched your query.
  final int total;

  /// List of rules.
  final List rules;

  WafRuleList({
    required this.total,
    required this.rules,
  });
  factory WafRuleList.fromMap(
    Map<String, dynamic> map,
  ) {
    map = {
      'total': 0,
      'rules': [],
      ...map,
    };

    return WafRuleList(
      total: map['total'],
      rules: List.from(map['rules'] ?? []),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "total": total,
      "rules": rules,
    };
  }
}
