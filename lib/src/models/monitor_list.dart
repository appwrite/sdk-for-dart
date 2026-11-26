part of '../../models.dart';

/// Monitors List
class MonitorList implements Model {
  /// Total number of monitors that matched your query.
  final int total;

  /// List of monitors.
  final List<Monitor> monitors;

  MonitorList({
    required this.total,
    required this.monitors,
  });
  factory MonitorList.fromMap(
    Map<String, dynamic> map,
  ) {
    map = {
      'total': 0,
      'monitors': [],
      ...map,
    };

    return MonitorList(
      total: map['total'],
      monitors: List<Monitor>.from(
        map['monitors'].map((p) => Monitor.fromMap(p)),
      ),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "total": total,
      "monitors": monitors.map((p) => p.toMap()).toList(),
    };
  }
}
