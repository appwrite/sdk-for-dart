part of '../../enums.dart';

enum VectorsDBIndexType {
    hnswEuclidean(value: 'hnsw_euclidean'),
    hnswDot(value: 'hnsw_dot'),
    hnswCosine(value: 'hnsw_cosine'),
    object(value: 'object'),
    key(value: 'key'),
    unique(value: 'unique');

    const VectorsDBIndexType({
        required this.value
    });

    final String value;

    String toJson() => value;
}