part of '../../models.dart';

/// Sessions List
class SessionList<T> implements Model {
    /// Total number of sessions documents that matched your query.
    final int total;

    /// List of sessions.
    final List<Session<T>> sessions;

    SessionList({
        required this.total,
        required this.sessions,
    });

    factory SessionList.fromMap(Map<String, dynamic> map, [T Function(Map<String, dynamic>)? fromJson]) {
        return SessionList(
            total: 
map['total'],
            sessions: 
List<Session<T>>.from(map['sessions'].map((p) => Session.fromMap(p, fromJson))),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "total": total,
            "sessions": sessions.map((p) => p.toMap()).toList(),
        };
    }

    // Public getters for private underscore fields
}
