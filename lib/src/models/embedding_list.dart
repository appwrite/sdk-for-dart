part of '../../models.dart';

/// Embedding list
class EmbeddingList implements Model {
    /// Total number of embeddings that matched your query.
    final int total;

    /// List of embeddings.
    final List<Embedding> embeddings;

    EmbeddingList({
        required this.total,
        required this.embeddings,
    });

    factory EmbeddingList.fromMap(Map<String, dynamic> map) {
        return EmbeddingList(
            total: map['total'],
            embeddings: List<Embedding>.from(map['embeddings'].map((p) => Embedding.fromMap(p))),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "total": total,
            "embeddings": embeddings.map((p) => p.toMap()).toList(),
        };
    }
}
