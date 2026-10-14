part of '../../enums.dart';

enum OAuth2KakaoPrompt {
  none(value: "none"),
  login(value: "login"),
  create(value: "create"),
  selectAccount(value: "select_account");

  const OAuth2KakaoPrompt({required this.value});

  final String value;

  String toJson() => value;
}
