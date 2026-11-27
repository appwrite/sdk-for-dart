part of '../../models.dart';

/// AnalyticsMetricList
class AnalyticsMetricList implements Model {
  /// Total number of metric rows returned.
  final int total;

  /// Metric rows: one per time bucket, one per dimension value, or a single row for the flat aggregate.
  final List<AnalyticsMetric> metrics;

  AnalyticsMetricList({
    required this.total,
    required this.metrics,
  });
  factory AnalyticsMetricList.fromMap(
    Map<String, dynamic> map,
  ) {
    map = {
      'total': 0,
      'metrics': [],
      ...map,
    };

    return AnalyticsMetricList(
      total: map['total'],
      metrics: List<AnalyticsMetric>.from(
        map['metrics'].map((p) => AnalyticsMetric.fromMap(p)),
      ),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "total": total,
      "metrics": metrics.map((p) => p.toMap()).toList(),
    };
  }
}
