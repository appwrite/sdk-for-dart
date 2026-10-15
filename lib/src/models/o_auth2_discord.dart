part of '../../models.dart';

/// OAuth2Discord
class OAuth2Discord implements Model {
  /// OAuth2 provider ID.
  final String $id;

  /// OAuth2 provider is active and can be used to create sessions.
  final bool enabled;

  /// Discord OAuth2 client ID.
  final String clientId;

  /// Discord OAuth2 client secret.
  final String clientSecret;

  /// Discord OAuth2 prompt values.
  final List<enums.OAuth2DiscordPrompt> prompt;

  OAuth2Discord({
    required this.$id,
    required this.enabled,
    required this.clientId,
    required this.clientSecret,
    required this.prompt,
  });
  factory OAuth2Discord.fromMap(
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

    return OAuth2Discord(
      $id: map['\$id'].toString(),
      enabled: map['enabled'],
      clientId: map['clientId'].toString(),
      clientSecret: map['clientSecret'].toString(),
      prompt: List<enums.OAuth2DiscordPrompt>.from(
        ((map['prompt'] is List) ? map['prompt'] : [map['prompt']]).map(
          (p) =>
              enums.OAuth2DiscordPrompt.values.firstWhere((e) => e.value == p),
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
