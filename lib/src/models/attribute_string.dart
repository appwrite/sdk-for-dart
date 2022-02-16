part of dart_appwrite.models;

/// AttributeString
class AttributeString extends AbstractAttribute {
    /// Attribute size.
    final int size;
    /// Default value for attribute when not provided. Cannot be set when attribute is required.
    final String? xdefault;

    AttributeString({
        required String key,
        required String type,
        required String status,
        required bool xrequired,
        bool? array,
        required this.size,
        this.xdefault,
    }) : super(key: key, type: type, status: status, xrequired: xrequired, array: array);

    factory AttributeString.fromMap(Map<String, dynamic> map) {
        return AttributeString(
            key: map['key'].toString(),
            type: map['type'].toString(),
            status: map['status'].toString(),
            xrequired: map['required'],
            array: map['array'],
            size: map['size'],
            xdefault: map['default']?.toString(),
        );
    }

    @override
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
