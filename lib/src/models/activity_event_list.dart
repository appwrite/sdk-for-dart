part of '../../models.dart';

/// Activity event list
class ActivityEventList implements Model {
  /// Total number of events that matched your query.
  final int total;

  /// List of events.
  final List<ActivityEvent> events;

  ActivityEventList({
    required this.total,
    required this.events,
  });

  factory ActivityEventList.fromMap(Map<String, dynamic> map) {
    return ActivityEventList(
      total: map['total'],
      events: List<ActivityEvent>.from(
          map['events'].map((p) => ActivityEvent.fromMap(p))),
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
