part of '../../enums.dart';

enum MonitorStatus {
  ok(value: "ok"),
  firing(value: "firing");

  const MonitorStatus({required this.value});

  final String value;

  String toJson() => value;
}
