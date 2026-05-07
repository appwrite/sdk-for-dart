part of '../../models.dart';

/// OAuth2Autodesk
class OAuth2Autodesk implements Model {
  /// OAuth2 provider ID.
  final String $id;

  /// OAuth2 provider is active and can be used to create sessions.
  final bool enabled;

  /// Autodesk OAuth2 client ID.
  final String clientId;

  /// Autodesk OAuth2 client secret.
  final String clientSecret;

  OAuth2Autodesk({
    required this.$id,
    required this.enabled,
    required this.clientId,
    required this.clientSecret,
  });

  factory OAuth2Autodesk.fromMap(Map<String, dynamic> map) {
    return OAuth2Autodesk(
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
