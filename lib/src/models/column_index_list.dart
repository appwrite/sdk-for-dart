part of '../../models.dart';

/// Column Indexes List
class ColumnIndexList implements Model {
    /// Total number of indexes rows that matched your query.
    final int total;

    /// List of indexes.
    final List<ColumnIndex> indexes;

    ColumnIndexList({
        required this.total,
        required this.indexes,
    });

    factory ColumnIndexList.fromMap(Map<String, dynamic> map) {
        return ColumnIndexList(
            total: map['total'],
            indexes: List<ColumnIndex>.from(map['indexes'].map((p) => ColumnIndex.fromMap(p))),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "total": total,
            "indexes": indexes.map((p) => p.toMap()).toList(),
        };
    }
}
