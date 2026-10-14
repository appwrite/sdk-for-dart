part of '../../enums.dart';

enum WafRuleAction {
  bypass(value: "bypass"),
  deny(value: "deny"),
  challenge(value: "challenge"),
  rateLimit(value: "rateLimit"),
  redirect(value: "redirect");

  const WafRuleAction({required this.value});

  final String value;

  String toJson() => value;
}
