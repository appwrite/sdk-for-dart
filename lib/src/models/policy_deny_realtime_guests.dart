part of '../../models.dart';

/// Policy Deny Realtime Guests
class PolicyDenyRealtimeGuests implements Model {
  /// Policy ID.
  final String $id;

  /// Whether guests are stopped from subscribing to realtime channels.
  final bool enabled;

  PolicyDenyRealtimeGuests({
    required this.$id,
    required this.enabled,
  });
  factory PolicyDenyRealtimeGuests.fromMap(
    Map<String, dynamic> map,
  ) {
    map = {
      '\$id': "",
      'enabled': false,
      ...map,
    };

    return PolicyDenyRealtimeGuests(
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
