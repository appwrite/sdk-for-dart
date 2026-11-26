part of '../../enums.dart';

enum AlertStatus {
  firing(value: "firing"),
  resolved(value: "resolved");

  const AlertStatus({required this.value});

  final String value;

  String toJson() => value;
}
