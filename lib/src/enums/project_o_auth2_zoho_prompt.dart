part of '../../enums.dart';

enum ProjectOAuth2ZohoPrompt {
  consent(value: "consent");

  const ProjectOAuth2ZohoPrompt({required this.value});

  final String value;

  String toJson() => value;
}
