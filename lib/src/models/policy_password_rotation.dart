part of '../../models.dart';

/// Policy Password Rotation
class PolicyPasswordRotation implements Model {
  /// Policy ID.
  final String $id;

  /// Whether expired passwords require a reset before email/password sign-in.
  final bool enabled;

  /// Maximum password age in seconds.
  final int maxAge;

  PolicyPasswordRotation({
    required this.$id,
    required this.enabled,
    required this.maxAge,
  });
  factory PolicyPasswordRotation.fromMap(
    Map<String, dynamic> map,
  ) {
    map = {
      '\$id': "",
      'enabled': false,
      'maxAge': 31536000,
      ...map,
    };

    return PolicyPasswordRotation(
      $id: map['\$id'].toString(),
      enabled: map['enabled'],
      maxAge: map['maxAge'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "enabled": enabled,
      "maxAge": maxAge,
    };
  }
}
