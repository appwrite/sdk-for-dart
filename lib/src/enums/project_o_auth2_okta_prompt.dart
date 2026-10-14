part of '../../enums.dart';

enum ProjectOAuth2OktaPrompt {
  none(value: "none"),
  login(value: "login"),
  consent(value: "consent");

  const ProjectOAuth2OktaPrompt({required this.value});

  final String value;

  String toJson() => value;
}
