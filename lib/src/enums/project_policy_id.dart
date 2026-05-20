part of '../../enums.dart';

enum ProjectPolicyId {
    passwordDictionary(value: 'password-dictionary'),
    passwordHistory(value: 'password-history'),
    passwordPersonalData(value: 'password-personal-data'),
    sessionAlert(value: 'session-alert'),
    sessionDuration(value: 'session-duration'),
    sessionInvalidation(value: 'session-invalidation'),
    sessionLimit(value: 'session-limit'),
    userLimit(value: 'user-limit'),
    membershipPrivacy(value: 'membership-privacy');

    const ProjectPolicyId({
        required this.value
    });

    final String value;

    String toJson() => value;
}