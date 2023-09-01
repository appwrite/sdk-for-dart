part of dart_appwrite.models;

/// AttributeFloat
class AttributeFloat implements Model {
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
        this.min,
        this.max,
        this.xdefault,
    });

    factory AttributeFloat.fromMap(Map<String, dynamic> map) {
        return AttributeFloat(
            key: map['key'].toString(),
            type: map['type'].toString(),
            status: map['status'].toString(),
            error: map['error'].toString(),
            xrequired: map['required'],
            array: map['array'],
            min: map['min']?.toDouble(),
            max: map['max']?.toDouble(),
            xdefault: map['default']?.toDouble(),
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
            "min": min,
            "max": max,
            "default": xdefault,
        };
    }
}
