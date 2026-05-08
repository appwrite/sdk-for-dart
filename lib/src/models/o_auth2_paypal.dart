part of '../../models.dart';

/// OAuth2Paypal
class OAuth2Paypal implements Model {
    /// OAuth2 provider ID.
    final String $id;

    /// OAuth2 provider is active and can be used to create sessions.
    final bool enabled;

    /// PayPal OAuth2 client ID.
    final String clientId;

    /// PayPal OAuth2 secret key.
    final String secretKey;

    OAuth2Paypal({
        required this.$id,
        required this.enabled,
        required this.clientId,
        required this.secretKey,
    });

    factory OAuth2Paypal.fromMap(Map<String, dynamic> map) {
        return OAuth2Paypal(
            $id: map['\$id'].toString(),
            enabled: map['enabled'],
            clientId: map['clientId'].toString(),
            secretKey: map['secretKey'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "enabled": enabled,
            "clientId": clientId,
            "secretKey": secretKey,
        };
    }
}
