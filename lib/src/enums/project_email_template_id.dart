part of '../../enums.dart';

enum ProjectEmailTemplateId {
  verification(value: 'verification'),
  magicSession(value: 'magicSession'),
  recovery(value: 'recovery'),
  invitation(value: 'invitation'),
  mfaChallenge(value: 'mfaChallenge'),
  sessionAlert(value: 'sessionAlert'),
  otpSession(value: 'otpSession');

  const ProjectEmailTemplateId({required this.value});

  final String value;

  String toJson() => value;
}
