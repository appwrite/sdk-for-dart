part of dart_appwrite.models;

/// Attributes List
class AttributeList {
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
            attributes: map['attributes'],
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "total": total,
            "attributes": attributes,
        };
    }
}
