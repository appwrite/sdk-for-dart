part of '../../models.dart';

/// Attributes List
class AttributeList implements Model {
    /// Total number of attributes in the given collection.
    final int total;

    /// List of attributes.
    final List attributes;

    AttributeList({
        required this.total,
        required this.attributes,
    });

    factory AttributeList.fromMap(Map<String, dynamic> map) {
        return AttributeList(
            total: map['total'],
            attributes: List.from(map['attributes'] ?? []),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "total": total,
            "attributes": attributes,
        };
    }
}
