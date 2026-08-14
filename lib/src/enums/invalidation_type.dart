part of '../../enums.dart';

enum InvalidationType {
    tag(value: 'tag'),
    path(value: 'path'),
    all(value: 'all');

    const InvalidationType({
        required this.value
    });

    final String value;

    String toJson() => value;
}