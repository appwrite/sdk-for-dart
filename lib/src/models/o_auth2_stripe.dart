part of '../../models.dart';

/// OAuth2Stripe
class OAuth2Stripe implements Model {
    /// OAuth2 provider ID.
    final String $id;

    /// OAuth2 provider is active and can be used to create sessions.
    final bool enabled;

    /// Stripe OAuth2 client ID.
    final String clientId;

    /// Stripe OAuth2 API secret key.
    final String apiSecretKey;

    OAuth2Stripe({
        required this.$id,
        required this.enabled,
        required this.clientId,
        required this.apiSecretKey,
    });

    factory OAuth2Stripe.fromMap(Map<String, dynamic> map) {
        return OAuth2Stripe(
            $id: map['\$id'].toString(),
            enabled: map['enabled'],
            clientId: map['clientId'].toString(),
            apiSecretKey: map['apiSecretKey'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "enabled": enabled,
            "clientId": clientId,
            "apiSecretKey": apiSecretKey,
        };
    }
}
