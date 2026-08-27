part of '../../enums.dart';

enum EmbeddingModel {
  nomicEmbedText(value: "nomic-embed-text"),
  allMinilm(value: "all-minilm");

  const EmbeddingModel({required this.value});

  final String value;

  String toJson() => value;
}
