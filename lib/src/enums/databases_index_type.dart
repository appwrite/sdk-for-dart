part of '../../enums.dart';

enum DatabasesIndexType {
    key(value: 'key'),
    fulltext(value: 'fulltext'),
    unique(value: 'unique'),
    spatial(value: 'spatial');

    const DatabasesIndexType({
        required this.value
    });

    final String value;

    String toJson() => value;
}