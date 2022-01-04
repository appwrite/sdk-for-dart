part of dart_appwrite.models;

/// Attributes List
class AttributeList {
    /// Total sum of items in the list.
    final int sum;
    /// List of attributes.
    final List attributes;

    AttributeList({
        required this.sum,
        required this.attributes,
    });

    factory AttributeList.fromMap(Map<String, dynamic> map) {
        return AttributeList(
            sum: map['sum'],
            attributes: map['attributes'],
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "sum": sum,
            "attributes": attributes,
        };
    }
}
