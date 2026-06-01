part of '../../models.dart';

/// Status List
class HealthStatusList implements Model {
    /// Total number of statuses that matched your query.
    final int total;

    /// List of statuses.
    final List<HealthStatus> statuses;

    HealthStatusList({
        required this.total,
        required this.statuses,
    });

    factory HealthStatusList.fromMap(Map<String, dynamic> map) {
        return HealthStatusList(
            total: map['total'],
            statuses: List<HealthStatus>.from(map['statuses'].map((p) => HealthStatus.fromMap(p))),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "total": total,
            "statuses": statuses.map((p) => p.toMap()).toList(),
        };
    }
}
