part of '../../models.dart';

/// OAuth2Zoho
class OAuth2Zoho implements Model {
  /// OAuth2 provider ID.
  final String $id;

  /// OAuth2 provider is active and can be used to create sessions.
  final bool enabled;

  /// Zoho OAuth2 client ID.
  final String clientId;

  /// Zoho OAuth2 client secret.
  final String clientSecret;

  /// Zoho OAuth2 prompt values.
  final List<enums.OAuth2ZohoPrompt>? prompt;

  OAuth2Zoho({
    required this.$id,
    required this.enabled,
    required this.clientId,
    required this.clientSecret,
    this.prompt,
  });
  factory OAuth2Zoho.fromMap(
    Map<String, dynamic> map,
  ) {
    return OAuth2Zoho(
      $id: map['\$id'].toString(),
      enabled: map['enabled'],
      clientId: map['clientId'].toString(),
      clientSecret: map['clientSecret'].toString(),
      prompt: map['prompt'] != null
          ? List<enums.OAuth2ZohoPrompt>.from(
              map['prompt'].map(
                (p) => enums.OAuth2ZohoPrompt.values.firstWhere((e) => e.value == p),
              ),
            )
          : null,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "enabled": enabled,
      "clientId": clientId,
      "clientSecret": clientSecret,
      "prompt": prompt?.map((p) => p.value).toList(),
    };
  }
}
