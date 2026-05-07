part of '../../models.dart';

/// AuthProvider
class AuthProvider implements Model {
    /// Auth Provider.
    final String key;

    /// Auth Provider name.
    final String name;

    /// OAuth 2.0 application ID.
    final String appId;

    /// OAuth 2.0 application secret. Might be JSON string if provider requires extra configuration. This property is write-only and always returned empty.
    final String secret;

    /// Auth Provider is active and can be used to create session.
    final bool enabled;

    AuthProvider({
        required this.key,
        required this.name,
        required this.appId,
        required this.secret,
        required this.enabled,
    });

    factory AuthProvider.fromMap(Map<String, dynamic> map) {
        return AuthProvider(
            key: map['key'].toString(),
            name: map['name'].toString(),
            appId: map['appId'].toString(),
            secret: map['secret'].toString(),
            enabled: map['enabled'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "key": key,
            "name": name,
            "appId": appId,
            "secret": secret,
            "enabled": enabled,
        };
    }
}
