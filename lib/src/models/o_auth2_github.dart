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

    OAuth2Github({
        required this.$id,
        required this.enabled,
        required this.clientId,
        required this.clientSecret,
    });

    factory OAuth2Github.fromMap(Map<String, dynamic> map) {
        return OAuth2Github(
            $id: map['\$id'].toString(),
            enabled: map['enabled'],
            clientId: map['clientId'].toString(),
            clientSecret: map['clientSecret'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "enabled": enabled,
            "clientId": clientId,
            "clientSecret": clientSecret,
        };
    }
}
