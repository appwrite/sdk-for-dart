part of '../../models.dart';

/// Runtimes List
class RuntimeList<T> implements Model {
    /// Total number of runtimes documents that matched your query.
    final int total;

    /// List of runtimes.
    final List<Runtime<T>> runtimes;

    RuntimeList({
        required this.total,
        required this.runtimes,
    });

    factory RuntimeList.fromMap(Map<String, dynamic> map, [T Function(Map<String, dynamic>)? fromJson]) {
        return RuntimeList(
            total: 
map['total'],
            runtimes: 
List<Runtime<T>>.from(map['runtimes'].map((p) => Runtime.fromMap(p, fromJson))),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "total": total,
            "runtimes": runtimes.map((p) => p.toMap()).toList(),
        };
    }

}
