part of '../../models.dart';

/// Policy Deny Disposable Email
class PolicyDenyDisposableEmail implements Model {
  /// Policy ID.
  final String $id;

  /// Whether the deny disposable email policy is enabled.
  final bool enabled;

  PolicyDenyDisposableEmail({
    required this.$id,
    required this.enabled,
  });

  factory PolicyDenyDisposableEmail.fromMap(Map<String, dynamic> map) {
    return PolicyDenyDisposableEmail(
      $id: map['\$id'].toString(),
      enabled: map['enabled'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "enabled": enabled,
    };
  }
}
