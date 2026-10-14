part of '../../enums.dart';

enum OAuth2OktaPrompt {
  none(value: "none"),
  login(value: "login"),
  consent(value: "consent");

  const OAuth2OktaPrompt({required this.value});

  final String value;

  String toJson() => value;
}
