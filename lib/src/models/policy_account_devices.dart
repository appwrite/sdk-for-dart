part of '../../models.dart';

/// Policy Account Devices
class PolicyAccountDevices implements Model {
  /// Policy ID.
  final String $id;

  /// Whether account devices are enabled. When disabled, new account devices can no longer be created.
  final bool enabled;

  PolicyAccountDevices({
    required this.$id,
    required this.enabled,
  });
  factory PolicyAccountDevices.fromMap(
    Map<String, dynamic> map,
  ) {
    map = {
      '\$id': "",
      'enabled': true,
      ...map,
    };

    return PolicyAccountDevices(
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
