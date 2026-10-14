part of '../../enums.dart';

enum OAuth2ZohoPrompt {
  consent(value: "consent");

  const OAuth2ZohoPrompt({required this.value});

  final String value;

  String toJson() => value;
}
