part of '../../enums.dart';

enum ProjectOAuth2MicrosoftPrompt {
  none(value: "none"),
  login(value: "login"),
  consent(value: "consent"),
  selectAccount(value: "select_account");

  const ProjectOAuth2MicrosoftPrompt({required this.value});

  final String value;

  String toJson() => value;
}
