part of '../../models.dart';

/// Usage gauges list
class UsageGaugeList implements Model {
  /// Total number of gauges that matched your query.
  final int total;

  /// List of gauges.
  final List<UsageGauge> gauges;

  UsageGaugeList({
    required this.total,
    required this.gauges,
  });

  factory UsageGaugeList.fromMap(Map<String, dynamic> map) {
    return UsageGaugeList(
      total: map['total'],
      gauges: List<UsageGauge>.from(
          map['gauges'].map((p) => UsageGauge.fromMap(p))),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "total": total,
      "gauges": gauges.map((p) => p.toMap()).toList(),
    };
  }
}
