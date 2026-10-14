part of '../../models.dart';

/// OAuth2Salesforce
class OAuth2Salesforce implements Model {
  /// OAuth2 provider ID.
  final String $id;

  /// OAuth2 provider is active and can be used to create sessions.
  final bool enabled;

  /// Salesforce OAuth2 consumer key.
  final String customerKey;

  /// Salesforce OAuth2 consumer secret.
  final String customerSecret;

  /// Salesforce OAuth2 prompt values.
  final List<enums.OAuth2SalesforcePrompt>? prompt;

  OAuth2Salesforce({
    required this.$id,
    required this.enabled,
    required this.customerKey,
    required this.customerSecret,
    this.prompt,
  });
  factory OAuth2Salesforce.fromMap(
    Map<String, dynamic> map,
  ) {
    return OAuth2Salesforce(
      $id: map['\$id'].toString(),
      enabled: map['enabled'],
      customerKey: map['customerKey'].toString(),
      customerSecret: map['customerSecret'].toString(),
      prompt: map['prompt'] != null
          ? List<enums.OAuth2SalesforcePrompt>.from(
              map['prompt'].map(
                (p) =>
                    enums.OAuth2SalesforcePrompt.values.firstWhere((e) => e.value == p),
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
      "customerKey": customerKey,
      "customerSecret": customerSecret,
      "prompt": prompt?.map((p) => p.value).toList(),
    };
  }
}
