part of '../../models.dart';

/// Webhooks List
class WebhookList implements Model {
    /// Total number of webhooks that matched your query.
    final int total;

    /// List of webhooks.
    final List<Webhook> webhooks;

    WebhookList({
        required this.total,
        required this.webhooks,
    });

    factory WebhookList.fromMap(Map<String, dynamic> map) {
        return WebhookList(
            total: map['total'],
            webhooks: List<Webhook>.from(map['webhooks'].map((p) => Webhook.fromMap(p))),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "total": total,
            "webhooks": webhooks.map((p) => p.toMap()).toList(),
        };
    }
}
