part of '../../models.dart';

/// usageGauge
class UsageGauge implements Model {
  /// The metric key.
  final String metric;

  /// The current snapshot value.
  final int value;

  /// The snapshot timestamp.
  final String time;

  UsageGauge({
    required this.metric,
    required this.value,
    required this.time,
  });

  factory UsageGauge.fromMap(Map<String, dynamic> map) {
    return UsageGauge(
      metric: map['metric'].toString(),
      value: map['value'],
      time: map['time'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "metric": metric,
      "value": value,
      "time": time,
    };
  }
}
