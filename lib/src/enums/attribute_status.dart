part of '../../enums.dart';

enum AttributeStatus {
    available(value: 'available'),
    processing(value: 'processing'),
    deleting(value: 'deleting'),
    stuck(value: 'stuck'),
    failed(value: 'failed');

    const AttributeStatus({
        required this.value
    });

    final String value;

    String toJson() => value;
}