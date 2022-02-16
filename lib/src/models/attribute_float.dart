part of dart_appwrite.models;

/// AttributeFloat
class AttributeFloat extends AbstractAttribute {
    /// Minimum value to enforce for new documents.
    final double? min;
    /// Maximum value to enforce for new documents.
    final double? max;
    /// Default value for attribute when not provided. Cannot be set when attribute is required.
    final double? xdefault;

    AttributeFloat({
        required String key,
        required String type,
        required String status,
        required bool xrequired,
        bool? array,
        this.min,
        this.max,
        this.xdefault,
    }) : super(key: key, type: type, status: status, xrequired: xrequired, array: array);

    factory AttributeFloat.fromMap(Map<String, dynamic> map) {
        return AttributeFloat(
            key: map['key'].toString(),
            type: map['type'].toString(),
            status: map['status'].toString(),
            xrequired: map['required'],
            array: map['array'],
            min: map['min'].toDouble(),
            max: map['max'].toDouble(),
            xdefault: map['default']?.toDouble(),
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
