part of '../../enums.dart';

enum OAuth2Auth0Prompt {
  none(value: "none"),
  login(value: "login"),
  consent(value: "consent");

  const OAuth2Auth0Prompt({required this.value});

  final String value;

  String toJson() => value;
}
