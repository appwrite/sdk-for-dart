part of '../../models.dart';

/// ProjectProtocol
class ProjectProtocol implements Model {
  /// Protocol ID.
  final enums.ProjectProtocolId $id;

  /// Protocol status.
  final bool enabled;

  ProjectProtocol({
    required this.$id,
    required this.enabled,
  });

  factory ProjectProtocol.fromMap(Map<String, dynamic> map) {
    return ProjectProtocol(
      $id: enums.ProjectProtocolId.values
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
