part of '../../models.dart';

/// VectorsDB Collections List
class VectorsdbCollectionList implements Model {
    /// Total number of collections that matched your query.
    final int total;

    /// List of collections.
    final List<VectorsdbCollection> collections;

    VectorsdbCollectionList({
        required this.total,
        required this.collections,
    });

    factory VectorsdbCollectionList.fromMap(Map<String, dynamic> map) {
        return VectorsdbCollectionList(
            total: map['total'],
            collections: List<VectorsdbCollection>.from(map['collections'].map((p) => VectorsdbCollection.fromMap(p))),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "total": total,
            "collections": collections.map((p) => p.toMap()).toList(),
        };
    }
}
