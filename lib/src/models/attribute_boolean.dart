part of dart_appwrite.models;

/// AttributeBoolean
class AttributeBoolean extends AbstractAttribute {
    /// Default value for attribute when not provided. Cannot be set when attribute is required.
    final bool? xdefault;

    AttributeBoolean({
        required String key,
        required String type,
        required String status,
        required bool xrequired,
        bool? array,
        this.xdefault,
    }):super(key: key, type: type, status: status, xrequired: xrequired, array: array);

    factory AttributeBoolean.fromMap(Map<String, dynamic> map) {
        return AttributeBoolean(
            key: map['key'].toString(),
            type: map['type'].toString(),
            status: map['status'].toString(),
            xrequired: map['required'],
            array: map['array'],
            xdefault: map['default'],
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
            "default": xdefault,
        };
    }
}
