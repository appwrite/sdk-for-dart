part of '../../enums.dart';

enum OAuth2MicrosoftPrompt {
  none(value: "none"),
  login(value: "login"),
  consent(value: "consent"),
  selectAccount(value: "select_account");

  const OAuth2MicrosoftPrompt({required this.value});

  final String value;

  String toJson() => value;
}
