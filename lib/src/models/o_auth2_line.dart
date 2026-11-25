part of '../../models.dart';

/// OAuth2Line
class OAuth2Line implements Model {
  /// OAuth2 provider ID.
  final String $id;

  /// OAuth2 provider is active and can be used to create sessions.
  final bool enabled;

  /// LINE OAuth2 client ID.
  final String clientId;

  /// LINE OAuth2 client secret.
  final String clientSecret;

  OAuth2Line({
    required this.$id,
    required this.enabled,
    required this.clientId,
    required this.clientSecret,
  });
  factory OAuth2Line.fromMap(
    Map<String, dynamic> map,
  ) {
    map = {
      '\$id': "",
      'enabled': false,
      'clientId': "",
      'clientSecret': "",
      ...map,
    };

    return OAuth2Line(
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
