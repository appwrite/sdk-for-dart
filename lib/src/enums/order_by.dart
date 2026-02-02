part of '../../enums.dart';

enum OrderBy {
    asc(value: 'asc'),
    desc(value: 'desc');

    const OrderBy({
        required this.value
    });

    final String value;

    String toJson() => value;
}