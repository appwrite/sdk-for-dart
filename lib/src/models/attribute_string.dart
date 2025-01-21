part of '../../models.dart';

/// AttributeString
class AttributeString implements Model {
  /// Attribute Key.
  final String key;

  /// Attribute type.
  final String type;

  /// Attribute status. Possible values: `available`, `processing`, `deleting`, `stuck`, or `failed`
  final String status;

  /// Error message. Displays error generated on failure of creating or deleting an attribute.
  final String error;

  /// Is attribute required?
  final bool xrequired;

  /// Is attribute an array?
  final bool? array;

  /// Attribute creation date in ISO 8601 format.
  final String $createdAt;

  /// Attribute update date in ISO 8601 format.
  final String $updatedAt;

  /// Attribute size.
  final int size;

  /// Default value for attribute when not provided. Cannot be set when attribute is required.
  final String? xdefault;

  AttributeString({
    required this.key,
    required this.type,
    required this.status,
    required this.error,
    required this.xrequired,
    this.array,
    required this.$createdAt,
    required this.$updatedAt,
    required this.size,
    this.xdefault,
  });

  factory AttributeString.fromMap(Map<String, dynamic> map) {
    return AttributeString(
      key: map['key'].toString(),
      type: map['type'].toString(),
      status: map['status'].toString(),
      error: map['error'].toString(),
      xrequired: map['required'],
      array: map['array'],
      $createdAt: map['\$createdAt'].toString(),
      $updatedAt: map['\$updatedAt'].toString(),
      size: map['size'],
      xdefault: map['default']?.toString(),
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
      "size": size,
      "default": xdefault,
    };
  }
}
