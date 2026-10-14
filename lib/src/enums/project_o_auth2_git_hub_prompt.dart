part of '../../enums.dart';

enum ProjectOAuth2GitHubPrompt {
  selectAccount(value: "select_account");

  const ProjectOAuth2GitHubPrompt({required this.value});

  final String value;

  String toJson() => value;
}
