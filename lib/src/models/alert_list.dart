part of '../../models.dart';

/// Alerts List
class AlertList implements Model {
  /// Total number of alerts that matched your query.
  final int total;

  /// List of alerts.
  final List<Alert> alerts;

  AlertList({
    required this.total,
    required this.alerts,
  });
  factory AlertList.fromMap(
    Map<String, dynamic> map,
  ) {
    map = {
      'total': 0,
      'alerts': [],
      ...map,
    };

    return AlertList(
      total: map['total'],
      alerts: List<Alert>.from(
        map['alerts'].map((p) => Alert.fromMap(p)),
      ),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "total": total,
      "alerts": alerts.map((p) => p.toMap()).toList(),
    };
  }
}
