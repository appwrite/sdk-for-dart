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

  /// Indicates if SSL / TLS certificate verification is enabled.
  final bool tls;

  /// HTTP basic authentication username.
  final String authUsername;

  /// HTTP basic authentication password.
  final String authPassword;

  /// Signature key which can be used to validate incoming webhook payloads. Only returned on creation and secret rotation.
  final String secret;

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
    required this.tls,
    required this.authUsername,
    required this.authPassword,
    required this.secret,
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
      tls: map['tls'],
      authUsername: map['authUsername'].toString(),
      authPassword: map['authPassword'].toString(),
      secret: map['secret'].toString(),
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
      "tls": tls,
      "authUsername": authUsername,
      "authPassword": authPassword,
      "secret": secret,
      "enabled": enabled,
      "logs": logs,
      "attempts": attempts,
    };
  }
}
