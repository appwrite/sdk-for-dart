part of '../../models.dart';

/// OAuth2Microsoft
class OAuth2Microsoft implements Model {
  /// OAuth2 provider ID.
  final String $id;

  /// OAuth2 provider is active and can be used to create sessions.
  final bool enabled;

  /// Microsoft OAuth2 application ID.
  final String applicationId;

  /// Microsoft OAuth2 application secret.
  final String applicationSecret;

  /// Microsoft OAuth2 prompt values.
  final List<enums.OAuth2MicrosoftPrompt> prompt;

  /// Microsoft Entra ID tenant identifier. Use &#039;common&#039;, &#039;organizations&#039;, &#039;consumers&#039; or a specific tenant ID.
  final String tenant;

  OAuth2Microsoft({
    required this.$id,
    required this.enabled,
    required this.applicationId,
    required this.applicationSecret,
    required this.prompt,
    required this.tenant,
  });
  factory OAuth2Microsoft.fromMap(
    Map<String, dynamic> map,
  ) {
    map = {
      '\$id': "",
      'enabled': false,
      'applicationId': "",
      'applicationSecret': "",
      'prompt': [],
      'tenant': "",
      ...map,
    };

    return OAuth2Microsoft(
      $id: map['\$id'].toString(),
      enabled: map['enabled'],
      applicationId: map['applicationId'].toString(),
      applicationSecret: map['applicationSecret'].toString(),
      prompt: List<enums.OAuth2MicrosoftPrompt>.from(
        map['prompt'].map(
          (p) =>
              enums.OAuth2MicrosoftPrompt.values.firstWhere((e) => e.value == p),
        ),
      ),
      tenant: map['tenant'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "enabled": enabled,
      "applicationId": applicationId,
      "applicationSecret": applicationSecret,
      "prompt": prompt.map((p) => p.value).toList(),
      "tenant": tenant,
    };
  }
}
