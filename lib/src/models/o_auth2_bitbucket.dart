part of '../../models.dart';

/// OAuth2Bitbucket
class OAuth2Bitbucket implements Model {
  /// OAuth2 provider ID.
  final String $id;

  /// OAuth2 provider is active and can be used to create sessions.
  final bool enabled;

  /// Bitbucket OAuth2 key.
  final String key;

  /// Bitbucket OAuth2 secret.
  final String secret;

  OAuth2Bitbucket({
    required this.$id,
    required this.enabled,
    required this.key,
    required this.secret,
  });

  factory OAuth2Bitbucket.fromMap(Map<String, dynamic> map) {
    return OAuth2Bitbucket(
      $id: map['\$id'].toString(),
      enabled: map['enabled'],
      key: map['key'].toString(),
      secret: map['secret'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "enabled": enabled,
      "key": key,
      "secret": secret,
    };
  }
}
