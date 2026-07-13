part of '../../models.dart';

/// OAuth2Facebook
class OAuth2Facebook implements Model {
  /// OAuth2 provider ID.
  final String $id;

  /// OAuth2 provider is active and can be used to create sessions.
  final bool enabled;

  /// Facebook OAuth2 app ID.
  final String appId;

  /// Facebook OAuth2 app secret.
  final String appSecret;

  OAuth2Facebook({
    required this.$id,
    required this.enabled,
    required this.appId,
    required this.appSecret,
  });

  factory OAuth2Facebook.fromMap(Map<String, dynamic> map) {
    return OAuth2Facebook(
      $id: map['\$id'].toString(),
      enabled: map['enabled'],
      appId: map['appId'].toString(),
      appSecret: map['appSecret'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "enabled": enabled,
      "appId": appId,
      "appSecret": appSecret,
    };
  }
}
