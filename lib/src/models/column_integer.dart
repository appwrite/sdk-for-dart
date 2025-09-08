part of '../../models.dart';

/// ColumnInteger
class ColumnInteger implements Model {
  /// Column Key.
  final String key;

  /// Column type.
  final String type;

  /// Column status. Possible values: `available`, `processing`, `deleting`, `stuck`, or `failed`
  final String status;

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

  /// Minimum value to enforce for new documents.
  final int? min;

  /// Maximum value to enforce for new documents.
  final int? max;

  /// Default value for column when not provided. Cannot be set when column is required.
  final int? xdefault;

  ColumnInteger({
    required this.key,
    required this.type,
    required this.status,
    required this.error,
    required this.xrequired,
    this.array,
    required this.$createdAt,
    required this.$updatedAt,
    this.min,
    this.max,
    this.xdefault,
  });

  factory ColumnInteger.fromMap(Map<String, dynamic> map) {
    return ColumnInteger(
      key: map['key'].toString(),
      type: map['type'].toString(),
      status: map['status'].toString(),
      error: map['error'].toString(),
      xrequired: map['required'],
      array: map['array'],
      $createdAt: map['\$createdAt'].toString(),
      $updatedAt: map['\$updatedAt'].toString(),
      min: map['min'],
      max: map['max'],
      xdefault: map['default'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "key": key,
      "type": type,
      "status": status,
      "error": error,
      "required": xrequired,
      "array": array,
      "\$createdAt": $createdAt,
      "\$updatedAt": $updatedAt,
      "min": min,
      "max": max,
      "default": xdefault,
    };
  }
}
