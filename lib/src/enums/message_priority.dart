part of '../../enums.dart';

enum MessagePriority {
    normal(value: 'normal'),
    high(value: 'high');

    const MessagePriority({
        required this.value
    });

    final String value;

    String toJson() => value;
}