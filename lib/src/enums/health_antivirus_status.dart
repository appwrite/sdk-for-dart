part of '../../enums.dart';

enum HealthAntivirusStatus {
    disabled(value: 'disabled'),
    offline(value: 'offline'),
    online(value: 'online');

    const HealthAntivirusStatus({
        required this.value
    });

    final String value;

    String toJson() => value;
}