part of '../../enums.dart';

enum AnalyticsInterval {
  oneHour(value: "1h"),
  oneDay(value: "1d"),
  oneWeek(value: "1w"),
  oneMonth(value: "1m");

  const AnalyticsInterval({required this.value});

  final String value;

  String toJson() => value;
}
