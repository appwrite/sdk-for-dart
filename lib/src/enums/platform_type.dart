part of '../../enums.dart';

enum PlatformType {
    windows(value: 'windows'),
    apple(value: 'apple'),
    android(value: 'android'),
    linux(value: 'linux'),
    web(value: 'web');

    const PlatformType({
        required this.value
    });

    final String value;

    String toJson() => value;
}