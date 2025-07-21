part of '../../models.dart';

/// Teams List
class TeamList<T> implements Model {
    /// Total number of teams documents that matched your query.
    final int total;

    /// List of teams.
    final List<Team<T>> teams;

    TeamList({
        required this.total,
        required this.teams,
    });

    factory TeamList.fromMap(Map<String, dynamic> map, [T Function(Map<String, dynamic>)? fromJson]) {
        return TeamList(
            total: 
map['total'],
            teams: 
List<Team<T>>.from(map['teams'].map((p) => Team.fromMap(p, fromJson))),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "total": total,
            "teams": teams.map((p) => p.toMap()).toList(),
        };
    }

}
