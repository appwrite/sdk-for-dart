part of '../../models.dart';

/// Policy Password Pwned
class PolicyPasswordPwned implements Model {
  /// Policy ID.
  final String $id;

  /// Whether passwords are checked against known data breaches and the result recorded on the user.
  final bool enabled;

  /// Whether a sign-in with a breached password is refused until the password is reset.
  final bool sessions;

  /// Whether a breached password is rejected when a user signs up or sets a new password.
  final bool users;

  PolicyPasswordPwned({
    required this.$id,
    required this.enabled,
    required this.sessions,
    required this.users,
  });
  factory PolicyPasswordPwned.fromMap(
    Map<String, dynamic> map,
  ) {
    map = {
      '\$id': "",
      'enabled': true,
      'sessions': false,
      'users': false,
      ...map,
    };

    return PolicyPasswordPwned(
      $id: map['\$id'].toString(),
      enabled: map['enabled'],
      sessions: map['sessions'],
      users: map['users'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "enabled": enabled,
      "sessions": sessions,
      "users": users,
    };
  }
}
