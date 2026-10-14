part of '../../enums.dart';

enum OAuth2GithubPrompt {
  selectAccount(value: "select_account");

  const OAuth2GithubPrompt({required this.value});

  final String value;

  String toJson() => value;
}
