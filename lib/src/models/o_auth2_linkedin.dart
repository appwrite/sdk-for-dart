part of '../../models.dart';

/// OAuth2Linkedin
class OAuth2Linkedin implements Model {
  /// OAuth2 provider ID.
  final String $id;

  /// OAuth2 provider is active and can be used to create sessions.
  final bool enabled;

  /// LinkedIn OAuth2 client ID.
  final String clientId;

  /// LinkedIn OAuth2 primary client secret.
  final String primaryClientSecret;

  OAuth2Linkedin({
    required this.$id,
    required this.enabled,
    required this.clientId,
    required this.primaryClientSecret,
  });

  factory OAuth2Linkedin.fromMap(Map<String, dynamic> map) {
    return OAuth2Linkedin(
      $id: map['\$id'].toString(),
      enabled: map['enabled'],
      clientId: map['clientId'].toString(),
      primaryClientSecret: map['primaryClientSecret'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "enabled": enabled,
      "clientId": clientId,
      "primaryClientSecret": primaryClientSecret,
    };
  }
}
