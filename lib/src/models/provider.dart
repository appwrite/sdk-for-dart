part of '../../models.dart';

/// Provider
class Provider implements Model {
    /// Provider ID.
    final String $id;
    /// Provider creation time in ISO 8601 format.
    final String $createdAt;
    /// Provider update date in ISO 8601 format.
    final String $updatedAt;
    /// The name for the provider instance.
    final String name;
    /// The name of the provider service.
    final String provider;
    /// Is provider enabled?
    final bool enabled;
    /// Type of provider.
    final String type;
    /// Provider credentials.
    final Map<String, dynamic> credentials;
    /// Provider options.
    final Map<String, dynamic>? options;

    Provider({
        required this.$id,
        required this.$createdAt,
        required this.$updatedAt,
        required this.name,
        required this.provider,
        required this.enabled,
        required this.type,
        required this.credentials,
        this.options,
    });

    factory Provider.fromMap(Map<String, dynamic> map) {
        return Provider(
            $id: map['\$id'].toString(),
            $createdAt: map['\$createdAt'].toString(),
            $updatedAt: map['\$updatedAt'].toString(),
            name: map['name'].toString(),
            provider: map['provider'].toString(),
            enabled: map['enabled'],
            type: map['type'].toString(),
            credentials: map['credentials'],
            options: map['options'],
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "\$createdAt": $createdAt,
            "\$updatedAt": $updatedAt,
            "name": name,
            "provider": provider,
            "enabled": enabled,
            "type": type,
            "credentials": credentials,
            "options": options,
        };
    }
}