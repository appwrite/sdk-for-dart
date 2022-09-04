part of dart_appwrite.models;

/// Users List
class UserList implements Model {
    /// Total number of users documents that matched your query.
    final int total;
    /// List of users.
    final List<User> users;

    UserList({        required this.total,
        required this.users,
    });

    factory UserList.fromMap(Map<String, dynamic> map) {
        return UserList(
            total: map['total'],
            users: List<User>.from(map['users'].map((p) => User.fromMap(p))),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "total": total,
            "users": users.map((p) => p.toMap()),
        };
    }
}
