part of '../../models.dart';

/// OAuth2Yandex
class OAuth2Yandex implements Model {
    /// OAuth2 provider ID.
    final String $id;

    /// OAuth2 provider is active and can be used to create sessions.
    final bool enabled;

    /// Yandex OAuth2 client ID.
    final String clientId;

    /// Yandex OAuth2 client secret.
    final String clientSecret;

    OAuth2Yandex({
        required this.$id,
        required this.enabled,
        required this.clientId,
        required this.clientSecret,
    });

    factory OAuth2Yandex.fromMap(Map<String, dynamic> map) {
        return OAuth2Yandex(
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
