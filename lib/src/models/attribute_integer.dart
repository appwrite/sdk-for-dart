part of dart_appwrite.models;

/// AttributeInteger
class AttributeInteger extends AbstractAttribute {
    /// Minimum value to enforce for new documents.
    final int? min;
    /// Maximum value to enforce for new documents.
    final int? max;
    /// Default value for attribute when not provided. Cannot be set when attribute is required.
    final int? xdefault;

    AttributeInteger({
        required String key,
        required String type,
        required String status,
        required bool xrequired,
        bool? array,
        this.min,
        this.max,
        this.xdefault,
    }) : super(key: key, type: type, status: status, xrequired: xrequired, array: array);

    factory AttributeInteger.fromMap(Map<String, dynamic> map) {
        return AttributeInteger(
            key: map['key'].toString(),
            type: map['type'].toString(),
            status: map['status'].toString(),
            xrequired: map['required'],
            array: map['array'],
            min: map['min'],
            max: map['max'],
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
            "min": min,
            "max": max,
            "default": xdefault,
        };
    }
}
