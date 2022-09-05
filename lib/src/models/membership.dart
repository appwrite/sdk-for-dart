part of dart_appwrite.models;

/// Membership
class Membership implements Model {
    /// Membership ID.
    final String $id;
    /// Membership creation date in ISO 8601 format.
    final String $createdAt;
    /// Membership update date in ISO 8601 format.
    final String $updatedAt;
    /// User ID.
    final String userId;
    /// User name.
    final String userName;
    /// User email address.
    final String userEmail;
    /// Team ID.
    final String teamId;
    /// Team name.
    final String teamName;
    /// Date, the user has been invited to join the team in ISO 8601 format.
    final String invited;
    /// Date, the user has accepted the invitation to join the team in ISO 8601 format.
    final String joined;
    /// User confirmation status, true if the user has joined the team or false otherwise.
    final bool confirm;
    /// User list of roles
    final List roles;

    Membership({
        required this.$id,
        required this.$createdAt,
        required this.$updatedAt,
        required this.userId,
        required this.userName,
        required this.userEmail,
        required this.teamId,
        required this.teamName,
        required this.invited,
        required this.joined,
        required this.confirm,
        required this.roles,
    });

    factory Membership.fromMap(Map<String, dynamic> map) {
        return Membership(
            $id: map['\$id'].toString(),
            $createdAt: map['\$createdAt'].toString(),
            $updatedAt: map['\$updatedAt'].toString(),
            userId: map['userId'].toString(),
            userName: map['userName'].toString(),
            userEmail: map['userEmail'].toString(),
            teamId: map['teamId'].toString(),
            teamName: map['teamName'].toString(),
            invited: map['invited'].toString(),
            joined: map['joined'].toString(),
            confirm: map['confirm'],
            roles: map['roles'],
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "\$createdAt": $createdAt,
            "\$updatedAt": $updatedAt,
            "userId": userId,
            "userName": userName,
            "userEmail": userEmail,
            "teamId": teamId,
            "teamName": teamName,
            "invited": invited,
            "joined": joined,
            "confirm": confirm,
            "roles": roles,
        };
    }
}
