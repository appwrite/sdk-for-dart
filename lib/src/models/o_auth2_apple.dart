part of '../../models.dart';

/// OAuth2Apple
class OAuth2Apple implements Model {
  /// OAuth2 provider ID.
  final String $id;

  /// OAuth2 provider is active and can be used to create sessions.
  final bool enabled;

  /// Apple OAuth2 service ID.
  final String serviceId;

  /// Apple OAuth2 key ID.
  final String keyId;

  /// Apple OAuth2 team ID.
  final String teamId;

  /// Apple OAuth2 .p8 private key file contents. The secret key wrapped by the PEM markers is 200 characters long.
  final String p8File;

  OAuth2Apple({
    required this.$id,
    required this.enabled,
    required this.serviceId,
    required this.keyId,
    required this.teamId,
    required this.p8File,
  });

  factory OAuth2Apple.fromMap(Map<String, dynamic> map) {
    return OAuth2Apple(
      $id: map['\$id'].toString(),
      enabled: map['enabled'],
      serviceId: map['serviceId'].toString(),
      keyId: map['keyId'].toString(),
      teamId: map['teamId'].toString(),
      p8File: map['p8File'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "enabled": enabled,
      "serviceId": serviceId,
      "keyId": keyId,
      "teamId": teamId,
      "p8File": p8File,
    };
  }
}
