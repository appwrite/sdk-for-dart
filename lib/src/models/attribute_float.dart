part of '../../models.dart';

/// AttributeFloat
class AttributeFloat implements Model {
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

    /// Minimum value to enforce for new documents.
    final double? min;

    /// Maximum value to enforce for new documents.
    final double? max;

    /// Default value for attribute when not provided. Cannot be set when attribute is required.
    final double? xdefault;

    AttributeFloat({
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

    factory AttributeFloat.fromMap(Map<String, dynamic> map) {
        return AttributeFloat(
            key: map['key'].toString(),
            type: map['type'].toString(),
            status: enums.AttributeStatus.values.firstWhere((e) => e.value == map['status']),
            error: map['error'].toString(),
            xrequired: map['required'],
            array: map['array'],
            $createdAt: map['\$createdAt'].toString(),
            $updatedAt: map['\$updatedAt'].toString(),
            min: map['min']?.toDouble(),
            max: map['max']?.toDouble(),
            xdefault: map['default']?.toDouble(),
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
            "min": min,
            "max": max,
            "default": xdefault,
        };
    }
}
