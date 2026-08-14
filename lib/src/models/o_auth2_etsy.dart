part of '../../models.dart';

/// OAuth2Etsy
class OAuth2Etsy implements Model {
  /// OAuth2 provider ID.
  final String $id;

  /// OAuth2 provider is active and can be used to create sessions.
  final bool enabled;

  /// Etsy OAuth2 keystring.
  final String keyString;

  /// Etsy OAuth2 shared secret.
  final String sharedSecret;

  OAuth2Etsy({
    required this.$id,
    required this.enabled,
    required this.keyString,
    required this.sharedSecret,
  });

  factory OAuth2Etsy.fromMap(Map<String, dynamic> map) {
    return OAuth2Etsy(
      $id: map['\$id'].toString(),
      enabled: map['enabled'],
      keyString: map['keyString'].toString(),
      sharedSecret: map['sharedSecret'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "enabled": enabled,
      "keyString": keyString,
      "sharedSecret": sharedSecret,
    };
  }
}
