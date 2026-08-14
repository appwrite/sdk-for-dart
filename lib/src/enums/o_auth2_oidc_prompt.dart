part of '../../enums.dart';

enum OAuth2OidcPrompt {
  none(value: 'none'),
  login(value: 'login'),
  consent(value: 'consent'),
  selectAccount(value: 'select_account');

  const OAuth2OidcPrompt({required this.value});

  final String value;

  String toJson() => value;
}
