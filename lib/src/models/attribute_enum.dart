part of '../../models.dart';

/// AttributeEnum
class AttributeEnum<T> implements Model {
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

    /// Array of elements in enumerated type.
    final List<String> elements;

    /// String format.
    final String format;

    /// Default value for attribute when not provided. Cannot be set when attribute is required.
    final String? xdefault;

    AttributeEnum({
        required this.key,
        required this.type,
        required this.status,
        required this.error,
        required this.xrequired,
        this.array,
        required this.$createdAt,
        required this.$updatedAt,
        required this.elements,
        required this.format,
        this.xdefault,
    });

    factory AttributeEnum.fromMap(Map<String, dynamic> map, [T Function(Map<String, dynamic>)? fromJson]) {
        return AttributeEnum(
            key: 
map['key'].toString(),
            type: 
map['type'].toString(),
            status: 
map['status'].toString(),
            error: 
map['error'].toString(),
            xrequired: 
map['required'],
            array: 
map['array'],
            $createdAt: 
map['\$createdAt'].toString(),
            $updatedAt: 
map['\$updatedAt'].toString(),
            elements: 
List.from(map['elements'] ?? []),
            format: 
map['format'].toString(),
            xdefault: 
map['default']?.toString(),
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
            "elements": elements,
            "format": format,
            "default": xdefault,
        };
    }

}
