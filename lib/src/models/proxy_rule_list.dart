part of '../../models.dart';

/// Rule List
class ProxyRuleList implements Model {
  /// Total number of rules that matched your query.
  final int total;

  /// List of rules.
  final List<ProxyRule> rules;

  ProxyRuleList({
    required this.total,
    required this.rules,
  });

  factory ProxyRuleList.fromMap(Map<String, dynamic> map) {
    return ProxyRuleList(
      total: map['total'],
      rules:
          List<ProxyRule>.from(map['rules'].map((p) => ProxyRule.fromMap(p))),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "total": total,
      "rules": rules.map((p) => p.toMap()).toList(),
    };
  }
}
