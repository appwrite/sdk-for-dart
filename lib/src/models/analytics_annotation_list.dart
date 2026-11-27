part of '../../models.dart';

/// Analytics annotations list
class AnalyticsAnnotationList implements Model {
  /// Total number of annotations that matched your query.
  final int total;

  /// List of annotations.
  final List<AnalyticsAnnotation> annotations;

  AnalyticsAnnotationList({
    required this.total,
    required this.annotations,
  });
  factory AnalyticsAnnotationList.fromMap(
    Map<String, dynamic> map,
  ) {
    map = {
      'total': 0,
      'annotations': [],
      ...map,
    };

    return AnalyticsAnnotationList(
      total: map['total'],
      annotations: List<AnalyticsAnnotation>.from(
        map['annotations'].map((p) => AnalyticsAnnotation.fromMap(p)),
      ),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "total": total,
      "annotations": annotations.map((p) => p.toMap()).toList(),
    };
  }
}
