part of '../../enums.dart';

enum ProjectPolicyId {
  passwordDictionary(value: "password-dictionary"),
  passwordHistory(value: "password-history"),
  passwordStrength(value: "password-strength"),
  passwordPersonalData(value: "password-personal-data"),
  passwordPwned(value: "password-pwned"),
  passwordRotation(value: "password-rotation"),
  sessionAlert(value: "session-alert"),
  sessionDuration(value: "session-duration"),
  sessionInvalidation(value: "session-invalidation"),
  sessionLimit(value: "session-limit"),
  userLimit(value: "user-limit"),
  membershipPrivacy(value: "membership-privacy"),
  mfaFactors(value: "mfa-factors"),
  denyAliasedEmail(value: "deny-aliased-email"),
  denyDisposableEmail(value: "deny-disposable-email"),
  denyFreeEmail(value: "deny-free-email"),
  denyCorporateEmail(value: "deny-corporate-email"),
  denyRealtimeGuests(value: "deny-realtime-guests"),
  passkey(value: "passkey");

  const ProjectPolicyId({required this.value});

  final String value;

  String toJson() => value;
}
