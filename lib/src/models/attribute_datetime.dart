part of dart_appwrite.models;

/// AttributeDatetime
class AttributeDatetime implements Model {
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
    /// ISO 8601 format.
    final String format;
    /// Default value for attribute when not provided. Only null is optional
    final String? xdefault;

    AttributeDatetime({
        required this.key,
        required this.type,
        required this.status,
        required this.error,
        required this.xrequired,
        this.array,
        required this.format,
        this.xdefault,
    });

    factory AttributeDatetime.fromMap(Map<String, dynamic> map) {
        return AttributeDatetime(
            key: map['key'].toString(),
            type: map['type'].toString(),
            status: map['status'].toString(),
            error: map['error'].toString(),
            xrequired: map['required'],
            array: map['array'],
            format: map['format'].toString(),
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
            "format": format,
            "default": xdefault,
        };
    }
}
