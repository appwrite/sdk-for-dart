part of '../../models.dart';

/// OAuth2Dailymotion
class OAuth2Dailymotion implements Model {
  /// OAuth2 provider ID.
  final String $id;

  /// OAuth2 provider is active and can be used to create sessions.
  final bool enabled;

  /// Dailymotion OAuth2 API key.
  final String apiKey;

  /// Dailymotion OAuth2 API secret.
  final String apiSecret;

  OAuth2Dailymotion({
    required this.$id,
    required this.enabled,
    required this.apiKey,
    required this.apiSecret,
  });

  factory OAuth2Dailymotion.fromMap(Map<String, dynamic> map) {
    return OAuth2Dailymotion(
      $id: map['\$id'].toString(),
      enabled: map['enabled'],
      apiKey: map['apiKey'].toString(),
      apiSecret: map['apiSecret'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "enabled": enabled,
      "apiKey": apiKey,
      "apiSecret": apiSecret,
    };
  }
}
