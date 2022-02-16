part of dart_appwrite.models;

/// AttributeURL
class AttributeUrl extends AbstractAttribute {
    /// String format.
    final String format;
    /// Default value for attribute when not provided. Cannot be set when attribute is required.
    final String? xdefault;

    AttributeUrl({
        required String key,
        required String type,
        required String status,
        required bool xrequired,
        bool? array,
        required this.format,
        this.xdefault,
    }) : super(key: key, type: type, status: status, xrequired: xrequired, array: array);

    factory AttributeUrl.fromMap(Map<String, dynamic> map) {
        return AttributeUrl(
            key: map['key'].toString(),
            type: map['type'].toString(),
            status: map['status'].toString(),
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
            "required": xrequired,
            "array": array,
            "format": format,
            "default": xdefault,
        };
    }
}
