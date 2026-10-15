part of '../../enums.dart';

enum ProxyRuleProtocol {
  http(value: "http"),
  smtp(value: "smtp");

  const ProxyRuleProtocol({required this.value});

  final String value;

  String toJson() => value;
}
