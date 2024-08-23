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
    final List attributes;
    /// Index orders.
    final List? orders;

    Index({
        required this.key,
        required this.type,
        required this.status,
        required this.error,
        required this.attributes,
        this.orders,
    });

    factory Index.fromMap(Map<String, dynamic> map) {
        return Index(
            key: map['key'].toString(),
            type: map['type'].toString(),
            status: map['status'].toString(),
            error: map['error'].toString(),
            attributes: map['attributes'] ?? [],
            orders: map['orders'],
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
        };
    }
}
