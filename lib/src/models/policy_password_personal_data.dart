part of '../../models.dart';

/// Policy Password Personal Data
class PolicyPasswordPersonalData implements Model {
  /// Policy ID.
  final String $id;

  /// Whether password personal data policy is enabled.
  final bool enabled;

  /// Custom terms blocked by case-insensitive substring matching when enabled.
  final List<String> denyList;

  PolicyPasswordPersonalData({
    required this.$id,
    required this.enabled,
    required this.denyList,
  });
  factory PolicyPasswordPersonalData.fromMap(
    Map<String, dynamic> map,
  ) {
    map = {
      '\$id': "",
      'enabled': false,
      'denyList': [],
      ...map,
    };

    return PolicyPasswordPersonalData(
      $id: map['\$id'].toString(),
      enabled: map['enabled'],
      denyList: List.from(map['denyList'] ?? []),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "enabled": enabled,
      "denyList": denyList,
    };
  }
}
