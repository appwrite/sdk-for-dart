part of '../../models.dart';

/// ProjectAuthMethod
class ProjectAuthMethod implements Model {
  /// Auth method ID.
  final enums.ProjectAuthMethodId $id;

  /// Auth method status.
  final bool enabled;

  ProjectAuthMethod({
    required this.$id,
    required this.enabled,
  });

  factory ProjectAuthMethod.fromMap(Map<String, dynamic> map) {
    return ProjectAuthMethod(
      $id: enums.ProjectAuthMethodId.values
          .firstWhere((e) => e.value == map['\$id']),
      enabled: map['enabled'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id.value,
      "enabled": enabled,
    };
  }
}
