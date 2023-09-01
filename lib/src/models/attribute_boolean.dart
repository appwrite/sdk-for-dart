part of dart_appwrite.models;

/// AttributeBoolean
class AttributeBoolean implements Model {
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
    /// Default value for attribute when not provided. Cannot be set when attribute is required.
    final bool? xdefault;

    AttributeBoolean({
        required this.key,
        required this.type,
        required this.status,
        required this.error,
        required this.xrequired,
        this.array,
        this.xdefault,
    });

    factory AttributeBoolean.fromMap(Map<String, dynamic> map) {
        return AttributeBoolean(
            key: map['key'].toString(),
            type: map['type'].toString(),
            status: map['status'].toString(),
            error: map['error'].toString(),
            xrequired: map['required'],
            array: map['array'],
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
            "default": xdefault,
        };
    }
}
