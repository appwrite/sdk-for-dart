part of '../../models.dart';

/// usageGauge
class UsageGauge implements Model {
    /// The metric key.
    final String metric;

    /// The current snapshot value.
    final int value;

    /// The snapshot timestamp.
    final String time;

    /// The resource type.
    final String resourceType;

    /// The resource ID.
    final String resourceId;

    UsageGauge({
        required this.metric,
        required this.value,
        required this.time,
        required this.resourceType,
        required this.resourceId,
    });

    factory UsageGauge.fromMap(Map<String, dynamic> map) {
        return UsageGauge(
            metric: map['metric'].toString(),
            value: map['value'],
            time: map['time'].toString(),
            resourceType: map['resourceType'].toString(),
            resourceId: map['resourceId'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "metric": metric,
            "value": value,
            "time": time,
            "resourceType": resourceType,
            "resourceId": resourceId,
        };
    }
}
