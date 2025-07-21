part of '../../models.dart';

/// Frameworks List
class FrameworkList<T> implements Model {
    /// Total number of frameworks documents that matched your query.
    final int total;

    /// List of frameworks.
    final List<Framework<T>> frameworks;

    FrameworkList({
        required this.total,
        required this.frameworks,
    });

    factory FrameworkList.fromMap(Map<String, dynamic> map, [T Function(Map<String, dynamic>)? fromJson]) {
        return FrameworkList(
            total: 
map['total'],
            frameworks: 
List<Framework<T>>.from(map['frameworks'].map((p) => Framework.fromMap(p, fromJson))),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "total": total,
            "frameworks": frameworks.map((p) => p.toMap()).toList(),
        };
    }

}
