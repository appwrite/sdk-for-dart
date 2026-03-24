part of '../../models.dart';

/// Webhook
class Webhook implements Model {
    /// Webhook ID.
    final String $id;

    /// Webhook creation date in ISO 8601 format.
    final String $createdAt;

    /// Webhook update date in ISO 8601 format.
    final String $updatedAt;

    /// Webhook name.
    final String name;

    /// Webhook URL endpoint.
    final String url;

    /// Webhook trigger events.
    final List<String> events;

    /// Indicated if SSL / TLS Certificate verification is enabled.
    final bool security;

    /// HTTP basic authentication username.
    final String httpUser;

    /// HTTP basic authentication password.
    final String httpPass;

    /// Signature key which can be used to validated incoming
    final String signatureKey;

    /// Indicates if this webhook is enabled.
    final bool enabled;

    /// Webhook error logs from the most recent failure.
    final String logs;

    /// Number of consecutive failed webhook attempts.
    final int attempts;

    Webhook({
        required this.$id,
        required this.$createdAt,
        required this.$updatedAt,
        required this.name,
        required this.url,
        required this.events,
        required this.security,
        required this.httpUser,
        required this.httpPass,
        required this.signatureKey,
        required this.enabled,
        required this.logs,
        required this.attempts,
    });

    factory Webhook.fromMap(Map<String, dynamic> map) {
        return Webhook(
            $id: map['\$id'].toString(),
            $createdAt: map['\$createdAt'].toString(),
            $updatedAt: map['\$updatedAt'].toString(),
            name: map['name'].toString(),
            url: map['url'].toString(),
            events: List.from(map['events'] ?? []),
            security: map['security'],
            httpUser: map['httpUser'].toString(),
            httpPass: map['httpPass'].toString(),
            signatureKey: map['signatureKey'].toString(),
            enabled: map['enabled'],
            logs: map['logs'].toString(),
            attempts: map['attempts'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "\$createdAt": $createdAt,
            "\$updatedAt": $updatedAt,
            "name": name,
            "url": url,
            "events": events,
            "security": security,
            "httpUser": httpUser,
            "httpPass": httpPass,
            "signatureKey": signatureKey,
            "enabled": enabled,
            "logs": logs,
            "attempts": attempts,
        };
    }
}
