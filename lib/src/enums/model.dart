part of '../../enums.dart';

enum Model {
    embeddinggemma(value: 'embeddinggemma');

    const Model({
        required this.value
    });

    final String value;

    String toJson() => value;
}