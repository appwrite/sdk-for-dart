part of '../../enums.dart';

enum IndexStatus {
    available(value: 'available'),
    processing(value: 'processing'),
    deleting(value: 'deleting'),
    stuck(value: 'stuck'),
    failed(value: 'failed');

    const IndexStatus({
        required this.value
    });

    final String value;

    String toJson() => value;
}