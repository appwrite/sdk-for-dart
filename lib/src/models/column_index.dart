part of '../../models.dart';

/// Index
class ColumnIndex implements Model {
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

  /// Index creation date in ISO 8601 format.
  final String $createdAt;

  /// Index update date in ISO 8601 format.
  final String $updatedAt;

  ColumnIndex({
    required this.key,
    required this.type,
    required this.status,
    required this.error,
    required this.columns,
    required this.lengths,
    this.orders,
    required this.$createdAt,
    required this.$updatedAt,
  });

  factory ColumnIndex.fromMap(Map<String, dynamic> map) {
    return ColumnIndex(
      key: map['key'].toString(),
      type: map['type'].toString(),
      status: map['status'].toString(),
      error: map['error'].toString(),
      columns: List.from(map['columns'] ?? []),
      lengths: List.from(map['lengths'] ?? []),
      orders: List.from(map['orders'] ?? []),
      $createdAt: map['\$createdAt'].toString(),
      $updatedAt: map['\$updatedAt'].toString(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "key": key,
      "type": type,
      "status": status,
      "error": error,
      "columns": columns,
      "lengths": lengths,
      "orders": orders,
      "\$createdAt": $createdAt,
      "\$updatedAt": $updatedAt,
    };
  }
}
