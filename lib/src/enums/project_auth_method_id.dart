part of '../../enums.dart';

enum ProjectAuthMethodId {
  emailPassword(value: 'email-password'),
  magicUrl(value: 'magic-url'),
  emailOtp(value: 'email-otp'),
  anonymous(value: 'anonymous'),
  invites(value: 'invites'),
  jwt(value: 'jwt'),
  phone(value: 'phone');

  const ProjectAuthMethodId({required this.value});

  final String value;

  String toJson() => value;
}
