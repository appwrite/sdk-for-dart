part of '../../enums.dart';

enum ProjectOAuth2DiscordPrompt {
  none(value: "none"),
  consent(value: "consent");

  const ProjectOAuth2DiscordPrompt({required this.value});

  final String value;

  String toJson() => value;
}
