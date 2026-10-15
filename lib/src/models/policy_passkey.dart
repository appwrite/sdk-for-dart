part of '../../models.dart';

/// Policy Passkey
class PolicyPasskey implements Model {
  /// Policy ID.
  final String $id;

  /// Relying party ID passkeys are bound to. Empty until configured.
  final String rpId;

  /// Web origins passkeys work on, from the project&#039;s platforms on the relying party ID and a localhost web platform. Read-only.
  final List<String> origins;

  PolicyPasskey({
    required this.$id,
    required this.rpId,
    required this.origins,
  });
  factory PolicyPasskey.fromMap(
    Map<String, dynamic> map,
  ) {
    map = {
      '\$id': "",
      'rpId': "",
      'origins': [],
      ...map,
    };

    return PolicyPasskey(
      $id: map['\$id'].toString(),
      rpId: map['rpId'].toString(),
      origins: List.from(map['origins'] ?? []),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "rpId": rpId,
      "origins": origins,
    };
  }
}
