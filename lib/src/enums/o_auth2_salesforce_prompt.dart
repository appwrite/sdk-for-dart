part of '../../enums.dart';

enum OAuth2SalesforcePrompt {
  login(value: "login"),
  consent(value: "consent");

  const OAuth2SalesforcePrompt({required this.value});

  final String value;

  String toJson() => value;
}
