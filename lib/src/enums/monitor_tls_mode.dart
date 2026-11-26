part of '../../enums.dart';

enum MonitorTlsMode {
  none(value: "none"),
  starttls(value: "starttls"),
  implicit(value: "implicit"),
  auto(value: "auto");

  const MonitorTlsMode({required this.value});

  final String value;

  String toJson() => value;
}
