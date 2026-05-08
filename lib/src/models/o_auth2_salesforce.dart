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

  OAuth2Salesforce({
    required this.$id,
    required this.enabled,
    required this.customerKey,
    required this.customerSecret,
  });

  factory OAuth2Salesforce.fromMap(Map<String, dynamic> map) {
    return OAuth2Salesforce(
      $id: map['\$id'].toString(),
      enabled: map['enabled'],
      customerKey: map['customerKey'].toString(),
      customerSecret: map['customerSecret'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "enabled": enabled,
      "customerKey": customerKey,
      "customerSecret": customerSecret,
    };
  }
}
