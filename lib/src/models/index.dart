part of '../../models.dart';

/// Index
class Index implements Model {
    /// Index Key.
    final String key;
    /// Index type.
    final String type;
    /// Index status. Possible values: `available`, `processing`, `deleting`, `stuck`, or `failed`
    final String status;
    /// Error message. Displays error generated on failure of creating or deleting an index.
    final String error;
    /// Index attributes.
    final List<String> attributes;
    /// Index orders.
    final List<String>? orders;
    /// Index creation date in ISO 8601 format.
    final String $createdAt;
    /// Index update date in ISO 8601 format.
    final String $updatedAt;

    Index({
        required this.key,
        required this.type,
        required this.status,
        required this.error,
        required this.attributes,
        this.orders,
        required this.$createdAt,
        required this.$updatedAt,
    });

    factory Index.fromMap(Map<String, dynamic> map) {
        return Index(
            key: map['key'].toString(),
            type: map['type'].toString(),
            status: map['status'].toString(),
            error: map['error'].toString(),
            attributes: List<String>.from(map['attributes']?.map((x) => x.toString()) ?? []),
            orders: List<String>.from(map['orders']?.map((x) => x.toString()) ?? []),
            $createdAt: map['\$createdAt'].toString(),
            $updatedAt: map['\$updatedAt'].toString(),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "key": key,
            "type": type,
            "status": status,
            "error": error,
            "attributes": attributes,
            "orders": orders,
            "\$createdAt": $createdAt,
            "\$updatedAt": $updatedAt,
        };
    }
}