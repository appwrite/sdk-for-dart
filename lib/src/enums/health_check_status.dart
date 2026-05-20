part of '../../enums.dart';

enum HealthCheckStatus {
    pass(value: 'pass'),
    fail(value: 'fail');

    const HealthCheckStatus({
        required this.value
    });

    final String value;

    String toJson() => value;
}