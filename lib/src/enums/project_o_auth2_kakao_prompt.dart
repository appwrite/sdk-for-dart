part of '../../enums.dart';

enum ProjectOAuth2KakaoPrompt {
  none(value: "none"),
  login(value: "login"),
  create(value: "create"),
  selectAccount(value: "select_account");

  const ProjectOAuth2KakaoPrompt({required this.value});

  final String value;

  String toJson() => value;
}
