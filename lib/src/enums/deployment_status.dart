part of '../../enums.dart';

enum DeploymentStatus {
  waiting(value: 'waiting'),
  processing(value: 'processing'),
  building(value: 'building'),
  ready(value: 'ready'),
  failed(value: 'failed');

  const DeploymentStatus({required this.value});

  final String value;

  String toJson() => value;
}
