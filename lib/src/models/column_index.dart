part of '../../models.dart';

/// Index
class ColumnIndex implements Model {
    /// Index ID.
    final String $id;

    /// Index creation date in ISO 8601 format.
    final String $createdAt;

    /// Index update date in ISO 8601 format.
    final String $updatedAt;

    /// Index Key.
    final String key;

    /// Index type.
    final String type;

    /// Index status. Possible values: `available`, `processing`, `deleting`, `stuck`, or `failed`
    final String status;

    /// Error message. Displays error generated on failure of creating or deleting an index.
    final String error;

    /// Index columns.
    final List<String> columns;

    /// Index columns length.
    final List<int> lengths;

    /// Index orders.
    final List<String>? orders;

    ColumnIndex({
        required this.$id,
        required this.$createdAt,
        required this.$updatedAt,
        required this.key,
        required this.type,
        required this.status,
        required this.error,
        required this.columns,
        required this.lengths,
        this.orders,
    });

    factory ColumnIndex.fromMap(Map<String, dynamic> map) {
        return ColumnIndex(
            $id: map['\$id'].toString(),
            $createdAt: map['\$createdAt'].toString(),
            $updatedAt: map['\$updatedAt'].toString(),
            key: map['key'].toString(),
            type: map['type'].toString(),
            status: map['status'].toString(),
            error: map['error'].toString(),
            columns: List.from(map['columns'] ?? []),
            lengths: List.from(map['lengths'] ?? []),
            orders: List.from(map['orders'] ?? []),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "\$createdAt": $createdAt,
            "\$updatedAt": $updatedAt,
            "key": key,
            "type": type,
            "status": status,
            "error": error,
            "columns": columns,
            "lengths": lengths,
            "orders": orders,
        };
    }
}
