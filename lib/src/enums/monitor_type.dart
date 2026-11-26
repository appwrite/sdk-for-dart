part of '../../enums.dart';

enum MonitorType {
  usage(value: "usage"),
  http(value: "http"),
  dns(value: "dns"),
  tcp(value: "tcp"),
  smtp(value: "smtp"),
  budget(value: "budget");

  const MonitorType({required this.value});

  final String value;

  String toJson() => value;
}
