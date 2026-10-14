part of '../../models.dart';

/// OAuth2Auth0
class OAuth2Auth0 implements Model {
  /// OAuth2 provider ID.
  final String $id;

  /// OAuth2 provider is active and can be used to create sessions.
  final bool enabled;

  /// Auth0 OAuth2 client ID.
  final String clientId;

  /// Auth0 OAuth2 client secret.
  final String clientSecret;

  /// Auth0 OAuth2 prompt values.
  final List<enums.OAuth2Auth0Prompt>? prompt;

  /// Auth0 OAuth2 endpoint domain.
  final String endpoint;

  OAuth2Auth0({
    required this.$id,
    required this.enabled,
    required this.clientId,
    required this.clientSecret,
    this.prompt,
    required this.endpoint,
  });
  factory OAuth2Auth0.fromMap(
    Map<String, dynamic> map,
  ) {
    return OAuth2Auth0(
      $id: map['\$id'].toString(),
      enabled: map['enabled'],
      clientId: map['clientId'].toString(),
      clientSecret: map['clientSecret'].toString(),
      prompt: map['prompt'] != null
          ? List<enums.OAuth2Auth0Prompt>.from(
              map['prompt'].map(
                (p) =>
                    enums.OAuth2Auth0Prompt.values.firstWhere((e) => e.value == p),
              ),
            )
          : null,
      endpoint: map['endpoint'].toString(),
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
      "endpoint": endpoint,
    };
  }
}
