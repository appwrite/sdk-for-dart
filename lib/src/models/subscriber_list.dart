part of '../../models.dart';

/// Subscriber list
class SubscriberList implements Model {
    /// Total number of subscribers rows that matched your query.
    final int total;

    /// List of subscribers.
    final List<Subscriber> subscribers;

    SubscriberList({
        required this.total,
        required this.subscribers,
    });

    factory SubscriberList.fromMap(Map<String, dynamic> map) {
        return SubscriberList(
            total: map['total'],
            subscribers: List<Subscriber>.from(map['subscribers'].map((p) => Subscriber.fromMap(p))),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "total": total,
            "subscribers": subscribers.map((p) => p.toMap()).toList(),
        };
    }
}
