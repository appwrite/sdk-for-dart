part of '../../models.dart';

/// ColumnBoolean
class ColumnBoolean implements Model {
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

  /// Default value for column when not provided. Cannot be set when column is required.
  final bool? xdefault;

  ColumnBoolean({
    required this.key,
    required this.type,
    required this.status,
    required this.error,
    required this.xrequired,
    this.array,
    required this.$createdAt,
    required this.$updatedAt,
    this.xdefault,
  });

  factory ColumnBoolean.fromMap(Map<String, dynamic> map) {
    return ColumnBoolean(
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
      xdefault: map['default'],
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
      "default": xdefault,
    };
  }
}
