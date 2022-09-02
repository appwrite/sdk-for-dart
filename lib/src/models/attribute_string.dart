part of dart_appwrite.models;

/// AttributeString
class AttributeString implements Model {
    /// Attribute Key.
    final String key;
    /// Attribute type.
    final String type;
    /// Attribute status. Possible values: `available`, `processing`, `deleting`, `stuck`, or `failed`
    final String status;
    /// Is attribute required?
    final bool xrequired;
    /// Is attribute an array?
    final bool array;
    /// Attribute size.
    final int size;
    /// Default value for attribute when not provided. Cannot be set when attribute is required.
    final String xdefault;

    AttributeString({        required this.key,
        required this.type,
        required this.status,
        required this.xrequired,
        required this.array,
        required this.size,
        required this.xdefault,
    });

    factory AttributeString.fromMap(Map<String, dynamic> map) {
        return AttributeString(
            key: map['key'].toString(),
            type: map['type'].toString(),
            status: map['status'].toString(),
            xrequired: map['required'],
            array: map['array'],
            size: map['size'],
            xdefault: map['default'].toString(),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "key": key,
            "type": type,
            "status": status,
            "required": xrequired,
            "array": array,
            "size": size,
            "default": xdefault,
        };
    }
}
