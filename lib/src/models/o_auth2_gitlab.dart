part of '../../models.dart';

/// OAuth2Gitlab
class OAuth2Gitlab implements Model {
    /// OAuth2 provider ID.
    final String $id;

    /// OAuth2 provider is active and can be used to create sessions.
    final bool enabled;

    /// GitLab OAuth2 application ID.
    final String applicationId;

    /// GitLab OAuth2 secret.
    final String secret;

    /// GitLab OAuth2 endpoint URL. Defaults to https://gitlab.com for self-hosted instances.
    final String endpoint;

    OAuth2Gitlab({
        required this.$id,
        required this.enabled,
        required this.applicationId,
        required this.secret,
        required this.endpoint,
    });

    factory OAuth2Gitlab.fromMap(Map<String, dynamic> map) {
        return OAuth2Gitlab(
            $id: map['\$id'].toString(),
            enabled: map['enabled'],
            applicationId: map['applicationId'].toString(),
            secret: map['secret'].toString(),
            endpoint: map['endpoint'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "enabled": enabled,
            "applicationId": applicationId,
            "secret": secret,
            "endpoint": endpoint,
        };
    }
}
