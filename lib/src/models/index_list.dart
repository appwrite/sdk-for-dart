part of '../../models.dart';

/// Indexes List
class IndexList implements Model {
    /// Total number of indexes that matched your query.
    final int total;

    /// List of indexes.
    final List<Index> indexes;

    IndexList({
        required this.total,
        required this.indexes,
    });

    factory IndexList.fromMap(Map<String, dynamic> map) {
        return IndexList(
            total: map['total'],
            indexes: List<Index>.from(map['indexes'].map((p) => Index.fromMap(p))),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "total": total,
            "indexes": indexes.map((p) => p.toMap()).toList(),
        };
    }
}
