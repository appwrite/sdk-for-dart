part of '../../models.dart';

/// Frameworks List
class FrameworkList implements Model {
    /// Total number of frameworks that matched your query.
    final int total;

    /// List of frameworks.
    final List<Framework> frameworks;

    FrameworkList({
        required this.total,
        required this.frameworks,
    });

    factory FrameworkList.fromMap(Map<String, dynamic> map) {
        return FrameworkList(
            total: map['total'],
            frameworks: List<Framework>.from(map['frameworks'].map((p) => Framework.fromMap(p))),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "total": total,
            "frameworks": frameworks.map((p) => p.toMap()).toList(),
        };
    }
}
