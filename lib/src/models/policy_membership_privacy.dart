part of '../../models.dart';

/// Policy Membership Privacy
class PolicyMembershipPrivacy implements Model {
  /// Policy ID.
  final String $id;

  /// Whether user ID is visible in memberships.
  final bool userId;

  /// Whether user email is visible in memberships.
  final bool userEmail;

  /// Whether user phone is visible in memberships.
  final bool userPhone;

  /// Whether user name is visible in memberships.
  final bool userName;

  /// Whether user MFA status is visible in memberships.
  final bool userMFA;

  PolicyMembershipPrivacy({
    required this.$id,
    required this.userId,
    required this.userEmail,
    required this.userPhone,
    required this.userName,
    required this.userMFA,
  });

  factory PolicyMembershipPrivacy.fromMap(Map<String, dynamic> map) {
    return PolicyMembershipPrivacy(
      $id: map['\$id'].toString(),
      userId: map['userId'],
      userEmail: map['userEmail'],
      userPhone: map['userPhone'],
      userName: map['userName'],
      userMFA: map['userMFA'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "userId": userId,
      "userEmail": userEmail,
      "userPhone": userPhone,
      "userName": userName,
      "userMFA": userMFA,
    };
  }
}
