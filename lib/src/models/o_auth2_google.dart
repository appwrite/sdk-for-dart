part of '../../models.dart';

/// OAuth2Google
class OAuth2Google implements Model {
  /// OAuth2 provider ID.
  final String $id;

  /// OAuth2 provider is active and can be used to create sessions.
  final bool enabled;

  /// Google OAuth2 client ID.
  final String clientId;

  /// Google OAuth2 client secret.
  final String clientSecret;

  /// Google OAuth2 prompt values.
  final List<enums.OAuth2GooglePrompt> prompt;

  /// Native Google sign-in is active and can be used to create sessions from an ID token. Independent of enabled, which only controls the browser-based flow.
  final bool? nativeEnabled;

  /// Additional OAuth2 client IDs accepted as ID token audiences for native sign-in, next to the client ID.
  final List<String>? nativeClientIds;

  OAuth2Google({
    required this.$id,
    required this.enabled,
    required this.clientId,
    required this.clientSecret,
    required this.prompt,
    this.nativeEnabled,
    this.nativeClientIds,
  });
  factory OAuth2Google.fromMap(
    Map<String, dynamic> map,
  ) {
    return OAuth2Google(
      $id: map['\$id'].toString(),
      enabled: map['enabled'],
      clientId: map['clientId'].toString(),
      clientSecret: map['clientSecret'].toString(),
      prompt: List<enums.OAuth2GooglePrompt>.from(
        map['prompt'].map(
          (p) =>
              enums.OAuth2GooglePrompt.values.firstWhere((e) => e.value == p),
        ),
      ),
      nativeEnabled: map['nativeEnabled'],
      nativeClientIds: List.from(map['nativeClientIds'] ?? []),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "enabled": enabled,
      "clientId": clientId,
      "clientSecret": clientSecret,
      "prompt": prompt.map((p) => p.value).toList(),
      "nativeEnabled": nativeEnabled,
      "nativeClientIds": nativeClientIds,
    };
  }
}
