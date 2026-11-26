part of '../../enums.dart';

enum MonitorSeverity {
  info(value: "info"),
  warning(value: "warning"),
  error(value: "error"),
  critical(value: "critical");

  const MonitorSeverity({required this.value});

  final String value;

  String toJson() => value;
}
