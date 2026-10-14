part of '../../models.dart';

/// OAuth2GitHub
class OAuth2Github implements Model {
  /// OAuth2 provider ID.
  final String $id;

  /// OAuth2 provider is active and can be used to create sessions.
  final bool enabled;

  /// GitHub OAuth2 client ID. For GitHub Apps, use the &quot;App ID&quot; when both an App ID and client ID are available.
  final String clientId;

  /// GitHub OAuth2 client secret.
  final String clientSecret;

  /// GitHub OAuth2 prompt values.
  final List<enums.OAuth2GithubPrompt> prompt;

  OAuth2Github({
    required this.$id,
    required this.enabled,
    required this.clientId,
    required this.clientSecret,
    required this.prompt,
  });
  factory OAuth2Github.fromMap(
    Map<String, dynamic> map,
  ) {
    map = {
      '\$id': "",
      'enabled': false,
      'clientId': "",
      'clientSecret': "",
      'prompt': [],
      ...map,
    };

    return OAuth2Github(
      $id: map['\$id'].toString(),
      enabled: map['enabled'],
      clientId: map['clientId'].toString(),
      clientSecret: map['clientSecret'].toString(),
      prompt: List<enums.OAuth2GithubPrompt>.from(
        map['prompt'].map(
          (p) =>
              enums.OAuth2GithubPrompt.values.firstWhere((e) => e.value == p),
        ),
      ),
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
    };
  }
}
