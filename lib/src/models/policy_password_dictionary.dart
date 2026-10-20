part of '../../models.dart';

/// Policy Password Dictionary
class PolicyPasswordDictionary implements Model {
  /// Policy ID.
  final String $id;

  /// Whether password dictionary policy is enabled.
  final bool enabled;

  /// Custom passwords blocked by case-sensitive equality when enabled.
  final List<String> denyList;

  PolicyPasswordDictionary({
    required this.$id,
    required this.enabled,
    required this.denyList,
  });
  factory PolicyPasswordDictionary.fromMap(
    Map<String, dynamic> map,
  ) {
    map = {
      '\$id': "",
      'enabled': false,
      'denyList': [],
      ...map,
    };

    return PolicyPasswordDictionary(
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
