part of '../../models.dart';

/// Embedding
class Embedding implements Model {
  /// Embedding model used to generate embeddings.
  final String model;

  /// Number of dimensions for each embedding vector.
  final int dimension;

  /// Embedding vector values. If an error occurs, this will be an empty array.
  final List<double> embedding;

  /// Error message if embedding generation fails. Empty string if no error.
  final String error;

  Embedding({
    required this.model,
    required this.dimension,
    required this.embedding,
    required this.error,
  });

  factory Embedding.fromMap(Map<String, dynamic> map) {
    return Embedding(
      model: map['model'].toString(),
      dimension: map['dimension'],
      embedding: List.from(map['embedding'] ?? []),
      error: map['error'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "model": model,
      "dimension": dimension,
      "embedding": embedding,
      "error": error,
    };
  }
}
