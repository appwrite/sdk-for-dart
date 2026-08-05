part of '../../enums.dart';

enum EmbeddingModel {
    nomicEmbedText(value: 'nomic-embed-text'),
    embeddingGemma(value: 'embedding-gemma'),
    allMinilm(value: 'all-minilm'),
    bgeSmall(value: 'bge-small');

    const EmbeddingModel({
        required this.value
    });

    final String value;

    String toJson() => value;
}