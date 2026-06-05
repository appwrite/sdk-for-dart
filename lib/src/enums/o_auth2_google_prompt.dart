part of '../../enums.dart';

enum OAuth2GooglePrompt {
  none(value: 'none'),
  consent(value: 'consent'),
  selectAccount(value: 'select_account');

  const OAuth2GooglePrompt({required this.value});

  final String value;

  String toJson() => value;
}
