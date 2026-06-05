part of '../../enums.dart';

enum ProjectPolicyId {
  passwordDictionary(value: 'password-dictionary'),
  passwordHistory(value: 'password-history'),
  passwordStrength(value: 'password-strength'),
  passwordPersonalData(value: 'password-personal-data'),
  sessionAlert(value: 'session-alert'),
  sessionDuration(value: 'session-duration'),
  sessionInvalidation(value: 'session-invalidation'),
  sessionLimit(value: 'session-limit'),
  userLimit(value: 'user-limit'),
  membershipPrivacy(value: 'membership-privacy'),
  denyAliasedEmail(value: 'deny-aliased-email'),
  denyDisposableEmail(value: 'deny-disposable-email'),
  denyFreeEmail(value: 'deny-free-email');

  const ProjectPolicyId({required this.value});

  final String value;

  String toJson() => value;
}
