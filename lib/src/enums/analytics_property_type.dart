part of '../../enums.dart';

enum AnalyticsPropertyType {
  web(value: "web"),
  mobile(value: "mobile"),
  agent(value: "agent");

  const AnalyticsPropertyType({required this.value});

  final String value;

  String toJson() => value;
}
