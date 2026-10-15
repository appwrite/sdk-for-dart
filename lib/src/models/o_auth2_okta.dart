part of '../../models.dart';

/// OAuth2Okta
class OAuth2Okta implements Model {
  /// OAuth2 provider ID.
  final String $id;

  /// OAuth2 provider is active and can be used to create sessions.
  final bool enabled;

  /// Okta OAuth2 client ID.
  final String clientId;

  /// Okta OAuth2 client secret.
  final String clientSecret;

  /// Okta OAuth2 prompt values.
  final List<enums.OAuth2OktaPrompt> prompt;

  /// Okta OAuth2 domain.
  final String domain;

  /// Okta OAuth2 authorization server ID.
  final String authorizationServerId;

  OAuth2Okta({
    required this.$id,
    required this.enabled,
    required this.clientId,
    required this.clientSecret,
    required this.prompt,
    required this.domain,
    required this.authorizationServerId,
  });
  factory OAuth2Okta.fromMap(
    Map<String, dynamic> map,
  ) {
    map = {
      '\$id': "",
      'enabled': false,
      'clientId': "",
      'clientSecret': "",
      'prompt': [],
      'domain': "",
      'authorizationServerId': "",
      ...map,
    };

    return OAuth2Okta(
      $id: map['\$id'].toString(),
      enabled: map['enabled'],
      clientId: map['clientId'].toString(),
      clientSecret: map['clientSecret'].toString(),
      prompt: List<enums.OAuth2OktaPrompt>.from(
        ((map['prompt'] is List) ? map['prompt'] : [map['prompt']]).map(
          (p) => enums.OAuth2OktaPrompt.values.firstWhere((e) => e.value == p),
        ),
      ),
      domain: map['domain'].toString(),
      authorizationServerId: map['authorizationServerId'].toString(),
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
      "domain": domain,
      "authorizationServerId": authorizationServerId,
    };
  }
}
