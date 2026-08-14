part of '../../models.dart';

/// OAuth2Twitch
class OAuth2Twitch implements Model {
  /// OAuth2 provider ID.
  final String $id;

  /// OAuth2 provider is active and can be used to create sessions.
  final bool enabled;

  /// Twitch OAuth2 client ID.
  final String clientId;

  /// Twitch OAuth2 client secret.
  final String clientSecret;

  OAuth2Twitch({
    required this.$id,
    required this.enabled,
    required this.clientId,
    required this.clientSecret,
  });

  factory OAuth2Twitch.fromMap(Map<String, dynamic> map) {
    return OAuth2Twitch(
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
