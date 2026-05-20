part of '../../models.dart';

/// Policy Password Dictionary
class PolicyPasswordDictionary implements Model {
  /// Policy ID.
  final String $id;

  /// Whether password dictionary policy is enabled.
  final bool enabled;

  PolicyPasswordDictionary({
    required this.$id,
    required this.enabled,
  });

  factory PolicyPasswordDictionary.fromMap(Map<String, dynamic> map) {
    return PolicyPasswordDictionary(
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
