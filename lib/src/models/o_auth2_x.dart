part of '../../models.dart';

/// OAuth2X
class OAuth2X implements Model {
  /// OAuth2 provider ID.
  final String $id;

  /// OAuth2 provider is active and can be used to create sessions.
  final bool enabled;

  /// X OAuth2 customer key.
  final String customerKey;

  /// X OAuth2 secret key.
  final String secretKey;

  OAuth2X({
    required this.$id,
    required this.enabled,
    required this.customerKey,
    required this.secretKey,
  });

  factory OAuth2X.fromMap(Map<String, dynamic> map) {
    return OAuth2X(
      $id: map['\$id'].toString(),
      enabled: map['enabled'],
      customerKey: map['customerKey'].toString(),
      secretKey: map['secretKey'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "enabled": enabled,
      "customerKey": customerKey,
      "secretKey": secretKey,
    };
  }
}
