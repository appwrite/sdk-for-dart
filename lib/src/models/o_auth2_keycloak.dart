part of '../../models.dart';

/// OAuth2Keycloak
class OAuth2Keycloak implements Model {
  /// OAuth2 provider ID.
  final String $id;

  /// OAuth2 provider is active and can be used to create sessions.
  final bool enabled;

  /// Keycloak OAuth2 client ID.
  final String clientId;

  /// Keycloak OAuth2 client secret.
  final String clientSecret;

  /// Keycloak OAuth2 endpoint domain.
  final String endpoint;

  /// Keycloak OAuth2 realm name.
  final String realmName;

  OAuth2Keycloak({
    required this.$id,
    required this.enabled,
    required this.clientId,
    required this.clientSecret,
    required this.endpoint,
    required this.realmName,
  });

  factory OAuth2Keycloak.fromMap(Map<String, dynamic> map) {
    return OAuth2Keycloak(
      $id: map['\$id'].toString(),
      enabled: map['enabled'],
      clientId: map['clientId'].toString(),
      clientSecret: map['clientSecret'].toString(),
      endpoint: map['endpoint'].toString(),
      realmName: map['realmName'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "enabled": enabled,
      "clientId": clientId,
      "clientSecret": clientSecret,
      "endpoint": endpoint,
      "realmName": realmName,
    };
  }
}
