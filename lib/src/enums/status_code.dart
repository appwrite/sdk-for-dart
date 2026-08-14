part of '../../enums.dart';

enum StatusCode {
    movedPermanently(value: '301'),
    found(value: '302'),
    temporaryRedirect(value: '307'),
    permanentRedirect(value: '308');

    const StatusCode({
        required this.value
    });

    final String value;

    String toJson() => value;
}