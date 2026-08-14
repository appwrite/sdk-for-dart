part of '../../models.dart';

/// OAuth2Notion
class OAuth2Notion implements Model {
  /// OAuth2 provider ID.
  final String $id;

  /// OAuth2 provider is active and can be used to create sessions.
  final bool enabled;

  /// Notion OAuth2 client ID.
  final String oauthClientId;

  /// Notion OAuth2 client secret.
  final String oauthClientSecret;

  OAuth2Notion({
    required this.$id,
    required this.enabled,
    required this.oauthClientId,
    required this.oauthClientSecret,
  });

  factory OAuth2Notion.fromMap(Map<String, dynamic> map) {
    return OAuth2Notion(
      $id: map['\$id'].toString(),
      enabled: map['enabled'],
      oauthClientId: map['oauthClientId'].toString(),
      oauthClientSecret: map['oauthClientSecret'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "enabled": enabled,
      "oauthClientId": oauthClientId,
      "oauthClientSecret": oauthClientSecret,
    };
  }
}
