part of '../../models.dart';

/// Policy Password Personal Data
class PolicyPasswordPersonalData implements Model {
  /// Policy ID.
  final String $id;

  /// Whether password personal data policy is enabled.
  final bool enabled;

  PolicyPasswordPersonalData({
    required this.$id,
    required this.enabled,
  });

  factory PolicyPasswordPersonalData.fromMap(Map<String, dynamic> map) {
    return PolicyPasswordPersonalData(
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
