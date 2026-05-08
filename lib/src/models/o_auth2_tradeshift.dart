part of '../../models.dart';

/// OAuth2Tradeshift
class OAuth2Tradeshift implements Model {
  /// OAuth2 provider ID.
  final String $id;

  /// OAuth2 provider is active and can be used to create sessions.
  final bool enabled;

  /// Tradeshift OAuth2 client ID.
  final String oauth2ClientId;

  /// Tradeshift OAuth2 client secret.
  final String oauth2ClientSecret;

  OAuth2Tradeshift({
    required this.$id,
    required this.enabled,
    required this.oauth2ClientId,
    required this.oauth2ClientSecret,
  });

  factory OAuth2Tradeshift.fromMap(Map<String, dynamic> map) {
    return OAuth2Tradeshift(
      $id: map['\$id'].toString(),
      enabled: map['enabled'],
      oauth2ClientId: map['oauth2ClientId'].toString(),
      oauth2ClientSecret: map['oauth2ClientSecret'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "enabled": enabled,
      "oauth2ClientId": oauth2ClientId,
      "oauth2ClientSecret": oauth2ClientSecret,
    };
  }
}
