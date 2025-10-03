part of '../../models.dart';

/// ColumnRelationship
class ColumnRelationship implements Model {
  /// Column Key.
  final String key;

  /// Column type.
  final String type;

  /// Column status. Possible values: `available`, `processing`, `deleting`, `stuck`, or `failed`
  final enums.ColumnStatus status;

  /// Error message. Displays error generated on failure of creating or deleting an column.
  final String error;

  /// Is column required?
  final bool xrequired;

  /// Is column an array?
  final bool? array;

  /// Column creation date in ISO 8601 format.
  final String $createdAt;

  /// Column update date in ISO 8601 format.
  final String $updatedAt;

  /// The ID of the related table.
  final String relatedTable;

  /// The type of the relationship.
  final String relationType;

  /// Is the relationship two-way?
  final bool twoWay;

  /// The key of the two-way relationship.
  final String twoWayKey;

  /// How deleting the parent document will propagate to child documents.
  final String onDelete;

  /// Whether this is the parent or child side of the relationship
  final String side;

  ColumnRelationship({
    required this.key,
    required this.type,
    required this.status,
    required this.error,
    required this.xrequired,
    this.array,
    required this.$createdAt,
    required this.$updatedAt,
    required this.relatedTable,
    required this.relationType,
    required this.twoWay,
    required this.twoWayKey,
    required this.onDelete,
    required this.side,
  });

  factory ColumnRelationship.fromMap(Map<String, dynamic> map) {
    return ColumnRelationship(
      key: map['key'].toString(),
      type: map['type'].toString(),
      status: enums.ColumnStatus.values.firstWhere(
        (e) => e.value == map['status'],
      ),
      error: map['error'].toString(),
      xrequired: map['required'],
      array: map['array'],
      $createdAt: map['\$createdAt'].toString(),
      $updatedAt: map['\$updatedAt'].toString(),
      relatedTable: map['relatedTable'].toString(),
      relationType: map['relationType'].toString(),
      twoWay: map['twoWay'],
      twoWayKey: map['twoWayKey'].toString(),
      onDelete: map['onDelete'].toString(),
      side: map['side'].toString(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "key": key,
      "type": type,
      "status": status.value,
      "error": error,
      "required": xrequired,
      "array": array,
      "\$createdAt": $createdAt,
      "\$updatedAt": $updatedAt,
      "relatedTable": relatedTable,
      "relationType": relationType,
      "twoWay": twoWay,
      "twoWayKey": twoWayKey,
      "onDelete": onDelete,
      "side": side,
    };
  }
}
