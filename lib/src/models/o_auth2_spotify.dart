part of '../../models.dart';

/// OAuth2Spotify
class OAuth2Spotify implements Model {
  /// OAuth2 provider ID.
  final String $id;

  /// OAuth2 provider is active and can be used to create sessions.
  final bool enabled;

  /// Spotify OAuth2 client ID.
  final String clientId;

  /// Spotify OAuth2 client secret.
  final String clientSecret;

  OAuth2Spotify({
    required this.$id,
    required this.enabled,
    required this.clientId,
    required this.clientSecret,
  });

  factory OAuth2Spotify.fromMap(Map<String, dynamic> map) {
    return OAuth2Spotify(
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
