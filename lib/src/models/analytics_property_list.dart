part of '../../models.dart';

/// Analytics properties list
class AnalyticsPropertyList implements Model {
  /// Total number of properties that matched your query.
  final int total;

  /// List of properties.
  final List<AnalyticsProperty> properties;

  AnalyticsPropertyList({
    required this.total,
    required this.properties,
  });
  factory AnalyticsPropertyList.fromMap(
    Map<String, dynamic> map,
  ) {
    map = {
      'total': 0,
      'properties': [],
      ...map,
    };

    return AnalyticsPropertyList(
      total: map['total'],
      properties: List<AnalyticsProperty>.from(
        map['properties'].map((p) => AnalyticsProperty.fromMap(p)),
      ),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "total": total,
      "properties": properties.map((p) => p.toMap()).toList(),
    };
  }
}
