part of dart_appwrite.models;

/// AttributeEnum
class AttributeEnum extends AbstractAttribute {
    /// Array of elements in enumerated type.
    final List elements;
    /// String format.
    final String format;
    /// Default value for attribute when not provided. Cannot be set when attribute is required.
    final String? xdefault;

    AttributeEnum({
        required String key,
        required String type,
        required String status,
        required bool xrequired,
        bool? array,
        required this.elements,
        required this.format,
        this.xdefault,
    }) : super(key: key, type: type, status: status, xrequired: xrequired, array: array);

    factory AttributeEnum.fromMap(Map<String, dynamic> map) {
        return AttributeEnum(
            key: map['key'].toString(),
            type: map['type'].toString(),
            status: map['status'].toString(),
            xrequired: map['required'],
            array: map['array'],
            elements: map['elements'],
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
            "elements": elements,
            "format": format,
            "default": xdefault,
        };
    }
}
