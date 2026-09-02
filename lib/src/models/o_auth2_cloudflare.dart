part of '../../models.dart';

/// OAuth2Cloudflare
class OAuth2Cloudflare implements Model {
  /// OAuth2 provider ID.
  final String $id;

  /// OAuth2 provider is active and can be used to create sessions.
  final bool enabled;

  /// Cloudflare OAuth2 client ID.
  final String clientId;

  /// Cloudflare OAuth2 client secret.
  final String clientSecret;

  OAuth2Cloudflare({
    required this.$id,
    required this.enabled,
    required this.clientId,
    required this.clientSecret,
  });
  factory OAuth2Cloudflare.fromMap(
    Map<String, dynamic> map,
  ) {
    return OAuth2Cloudflare(
      $id: map['\$id'].toString(),
      enabled: map['enabled'],
      clientId: map['clientId'].toString(),
      clientSecret: map['clientSecret'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "enabled": enabled,
      "clientId": clientId,
      "clientSecret": clientSecret,
    };
  }
}
