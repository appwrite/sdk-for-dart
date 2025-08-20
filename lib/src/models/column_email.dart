part of '../../models.dart';

/// ColumnEmail
class ColumnEmail implements Model {
    /// Column Key.
    final String key;

    /// Column type.
    final String type;

    /// Column status. Possible values: `available`, `processing`, `deleting`, `stuck`, or `failed`
    final String status;

    /// Error message. Displays error generated on failure of creating or deleting an column.
    final String error;

    /// Is column required?
    final bool xrequired;

    /// Is column an array?
    final bool? array;

    /// Column creation date in ISO 8601 format.
    final String $createdAt;

    /// Column update date in ISO 8601 format.
    final String $updatedAt;

    /// String format.
    final String format;

    /// Default value for attribute when not provided. Cannot be set when attribute is required.
    final String? xdefault;

    ColumnEmail({
        required this.key,
        required this.type,
        required this.status,
        required this.error,
        required this.xrequired,
        this.array,
        required this.$createdAt,
        required this.$updatedAt,
        required this.format,
        this.xdefault,
    });

    factory ColumnEmail.fromMap(Map<String, dynamic> map) {
        return ColumnEmail(
            key: map['key'].toString(),
            type: map['type'].toString(),
            status: map['status'].toString(),
            error: map['error'].toString(),
            xrequired: map['required'],
            array: map['array'],
            $createdAt: map['\$createdAt'].toString(),
            $updatedAt: map['\$updatedAt'].toString(),
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
            "\$createdAt": $createdAt,
            "\$updatedAt": $updatedAt,
            "format": format,
            "default": xdefault,
        };
    }
}
