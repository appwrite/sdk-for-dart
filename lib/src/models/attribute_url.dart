part of '../../models.dart';

/// AttributeURL
class AttributeUrl implements Model {
  /// Attribute Key.
  final String key;

  /// Attribute type.
  final String type;

  /// Attribute status. Possible values: `available`, `processing`, `deleting`, `stuck`, or `failed`
  final enums.AttributeStatus status;

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

  /// String format.
  final String format;

  /// Default value for attribute when not provided. Cannot be set when attribute is required.
  final String? xdefault;

  AttributeUrl({
    required this.key,
    required this.type,
    required this.status,
    required this.error,
    required this.xrequired,
    this.array,
    required this.$createdAt,
    required this.$updatedAt,
    required this.format,
    this.xdefault,
  });

  factory AttributeUrl.fromMap(Map<String, dynamic> map) {
    return AttributeUrl(
      key: map['key'].toString(),
      type: map['type'].toString(),
      status: enums.AttributeStatus.values
          .firstWhere((e) => e.value == map['status']),
      error: map['error'].toString(),
      xrequired: map['required'],
      array: map['array'],
      $createdAt: map['\$createdAt'].toString(),
      $updatedAt: map['\$updatedAt'].toString(),
      format: map['format'].toString(),
      xdefault: map['default']?.toString(),
    );
  }

  @override
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
      "format": format,
      "default": xdefault,
    };
  }
}
