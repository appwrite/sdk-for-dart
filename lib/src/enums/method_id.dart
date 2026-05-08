part of '../../enums.dart';

enum MethodId {
  emailPassword(value: 'email-password'),
  magicUrl(value: 'magic-url'),
  emailOtp(value: 'email-otp'),
  anonymous(value: 'anonymous'),
  invites(value: 'invites'),
  jwt(value: 'jwt'),
  phone(value: 'phone');

  const MethodId({required this.value});

  final String value;

  String toJson() => value;
}
