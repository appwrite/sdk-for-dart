part of '../../models.dart';

/// Index
class Index implements Model {
    /// Index ID.
    final String $id;

    /// Index creation date in ISO 8601 format.
    final String $createdAt;

    /// Index update date in ISO 8601 format.
    final String $updatedAt;

    /// Index key.
    final String key;

    /// Index type.
    final String type;

    /// Index status. Possible values: `available`, `processing`, `deleting`, `stuck`, or `failed`
    final enums.IndexStatus status;

    /// Error message. Displays error generated on failure of creating or deleting an index.
    final String error;

    /// Index attributes.
    final List<String> attributes;

    /// Index attributes length.
    final List<int> lengths;

    /// Index orders.
    final List<String>? orders;

    Index({
        required this.$id,
        required this.$createdAt,
        required this.$updatedAt,
        required this.key,
        required this.type,
        required this.status,
        required this.error,
        required this.attributes,
        required this.lengths,
        this.orders,
    });

    factory Index.fromMap(Map<String, dynamic> map) {
        return Index(
            $id: map['\$id'].toString(),
            $createdAt: map['\$createdAt'].toString(),
            $updatedAt: map['\$updatedAt'].toString(),
            key: map['key'].toString(),
            type: map['type'].toString(),
            status: enums.IndexStatus.values.firstWhere((e) => e.value == map['status']),
            error: map['error'].toString(),
            attributes: List.from(map['attributes'] ?? []),
            lengths: List.from(map['lengths'] ?? []),
            orders: List.from(map['orders'] ?? []),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "\$createdAt": $createdAt,
            "\$updatedAt": $updatedAt,
            "key": key,
            "type": type,
            "status": status.value,
            "error": error,
            "attributes": attributes,
            "lengths": lengths,
            "orders": orders,
        };
    }
}
