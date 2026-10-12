part of '../../enums.dart';

enum OAuth2DiscordPrompt {
  none(value: "none"),
  consent(value: "consent");

  const OAuth2DiscordPrompt({required this.value});

  final String value;

  String toJson() => value;
}
