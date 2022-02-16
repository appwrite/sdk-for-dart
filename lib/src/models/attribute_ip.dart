part of dart_appwrite.models;

/// AttributeIP
class AttributeIp extends AbstractAttribute {
    /// String format.
    final String format;
    /// Default value for attribute when not provided. Cannot be set when attribute is required.
    final String? xdefault;

    AttributeIp({
        required String key,
        required String type,
        required String status,
        required bool xrequired,
        bool? array,
        required this.format,
        this.xdefault,
    }) : super(key: key, type: type, status: status, xrequired: xrequired, array: array);

    factory AttributeIp.fromMap(Map<String, dynamic> map) {
        return AttributeIp(
            key: map['key'].toString(),
            type: map['type'].toString(),
            status: map['status'].toString(),
            xrequired: map['required'],
            array: map['array'],
            format: map['format'].toString(),
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
            "format": format,
            "default": xdefault,
        };
    }
}
