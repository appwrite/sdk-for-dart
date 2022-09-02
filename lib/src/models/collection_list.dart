part of dart_appwrite.models;

/// Collections List
class CollectionList implements Model {
    /// Total number of collections documents that matched your query.
    final int total;
    /// List of collections.
    final List<Collection> collections;

    CollectionList({        required this.total,
        required this.collections,
    });

    factory CollectionList.fromMap(Map<String, dynamic> map) {
        return CollectionList(
            total: map['total'],
            collections: List<Collection>.from(map['collections'].map((p) => Collection.fromMap(p))),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "total": total,
            "collections": collections.map((p) => p.toMap()),
        };
    }
}
