part of '../../enums.dart';

enum Region {
    fra(value: 'fra'),
    nyc(value: 'nyc'),
    syd(value: 'syd'),
    sfo(value: 'sfo'),
    sgp(value: 'sgp'),
    tor(value: 'tor');

    const Region({
        required this.value
    });

    final String value;

    String toJson() => value;
}