part of '../../enums.dart';

enum DatabaseStatus {
  provisioning(value: 'provisioning'),
  ready(value: 'ready'),
  failed(value: 'failed');

  const DatabaseStatus({required this.value});

  final String value;

  String toJson() => value;
}
