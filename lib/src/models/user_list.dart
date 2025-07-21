part of '../../models.dart';

/// Users List
class UserList<T> implements Model {
    /// Total number of users documents that matched your query.
    final int total;

    /// List of users.
    final List<User<T>> users;

    UserList({
        required this.total,
        required this.users,
    });

    factory UserList.fromMap(Map<String, dynamic> map, [T Function(Map<String, dynamic>)? fromJson]) {
        return UserList(
            total: 
map['total'],
            users: 
List<User<T>>.from(map['users'].map((p) => User.fromMap(p, fromJson))),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "total": total,
            "users": users.map((p) => p.toMap()).toList(),
        };
    }

}
