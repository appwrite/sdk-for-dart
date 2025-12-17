part of '../../models.dart';

/// Columns List
class ColumnList implements Model {
    /// Total number of columns in the given table.
    final int total;

    /// List of columns.
    final List columns;

    ColumnList({
        required this.total,
        required this.columns,
    });

    factory ColumnList.fromMap(Map<String, dynamic> map) {
        return ColumnList(
            total: map['total'],
            columns: List.from(map['columns'] ?? []),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "total": total,
            "columns": columns,
        };
    }
}
