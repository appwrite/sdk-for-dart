part of '../../models.dart';

/// OAuth2Oidc
class OAuth2Oidc implements Model {
    /// OAuth2 provider ID.
    final String $id;

    /// OAuth2 provider is active and can be used to create sessions.
    final bool enabled;

    /// OpenID Connect OAuth2 client ID.
    final String clientId;

    /// OpenID Connect OAuth2 client secret.
    final String clientSecret;

    /// OpenID Connect well-known configuration URL. When set, authorization, token, and user info endpoints can be discovered automatically.
    final String wellKnownURL;

    /// OpenID Connect authorization endpoint URL.
    final String authorizationURL;

    /// OpenID Connect token endpoint URL.
    final String tokenURL;

    /// OpenID Connect user info endpoint URL.
    final String userInfoURL;

    OAuth2Oidc({
        required this.$id,
        required this.enabled,
        required this.clientId,
        required this.clientSecret,
        required this.wellKnownURL,
        required this.authorizationURL,
        required this.tokenURL,
        required this.userInfoURL,
    });

    factory OAuth2Oidc.fromMap(Map<String, dynamic> map) {
        return OAuth2Oidc(
            $id: map['\$id'].toString(),
            enabled: map['enabled'],
            clientId: map['clientId'].toString(),
            clientSecret: map['clientSecret'].toString(),
            wellKnownURL: map['wellKnownURL'].toString(),
            authorizationURL: map['authorizationURL'].toString(),
            tokenURL: map['tokenURL'].toString(),
            userInfoURL: map['userInfoURL'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "enabled": enabled,
            "clientId": clientId,
            "clientSecret": clientSecret,
            "wellKnownURL": wellKnownURL,
            "authorizationURL": authorizationURL,
            "tokenURL": tokenURL,
            "userInfoURL": userInfoURL,
        };
    }
}
