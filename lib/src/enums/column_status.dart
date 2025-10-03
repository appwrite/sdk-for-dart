part of '../../enums.dart';

enum ColumnStatus {
  available(value: 'available'),
  processing(value: 'processing'),
  deleting(value: 'deleting'),
  stuck(value: 'stuck'),
  failed(value: 'failed');

  const ColumnStatus({required this.value});

  final String value;

  String toJson() => value;
}
