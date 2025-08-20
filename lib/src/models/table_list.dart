part of '../../models.dart';

/// Tables List
class TableList implements Model {
    /// Total number of tables rows that matched your query.
    final int total;

    /// List of tables.
    final List<Table> tables;

    TableList({
        required this.total,
        required this.tables,
    });

    factory TableList.fromMap(Map<String, dynamic> map) {
        return TableList(
            total: map['total'],
            tables: List<Table>.from(map['tables'].map((p) => Table.fromMap(p))),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "total": total,
            "tables": tables.map((p) => p.toMap()).toList(),
        };
    }
}
