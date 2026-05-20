part of '../../models.dart';

/// Usage events list
class UsageEventList implements Model {
    /// Total number of events that matched your query.
    final int total;

    /// List of events.
    final List<UsageEvent> events;

    UsageEventList({
        required this.total,
        required this.events,
    });

    factory UsageEventList.fromMap(Map<String, dynamic> map) {
        return UsageEventList(
            total: map['total'],
            events: List<UsageEvent>.from(map['events'].map((p) => UsageEvent.fromMap(p))),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "total": total,
            "events": events.map((p) => p.toMap()).toList(),
        };
    }
}
