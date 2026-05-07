part of '../../models.dart';

/// OAuth2Dropbox
class OAuth2Dropbox implements Model {
    /// OAuth2 provider ID.
    final String $id;

    /// OAuth2 provider is active and can be used to create sessions.
    final bool enabled;

    /// Dropbox OAuth2 app key.
    final String appKey;

    /// Dropbox OAuth2 app secret.
    final String appSecret;

    OAuth2Dropbox({
        required this.$id,
        required this.enabled,
        required this.appKey,
        required this.appSecret,
    });

    factory OAuth2Dropbox.fromMap(Map<String, dynamic> map) {
        return OAuth2Dropbox(
            $id: map['\$id'].toString(),
            enabled: map['enabled'],
            appKey: map['appKey'].toString(),
            appSecret: map['appSecret'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "enabled": enabled,
            "appKey": appKey,
            "appSecret": appSecret,
        };
    }
}
