part of '../../models.dart';

/// Environments list
class EnvironmentList implements Model {
  /// Total number of environments that matched your query.
  final int total;

  /// List of environments.
  final List<Environment> environments;

  EnvironmentList({
    required this.total,
    required this.environments,
  });
  factory EnvironmentList.fromMap(
    Map<String, dynamic> map,
  ) {
    map = {
      'total': 0,
      'environments': [],
      ...map,
    };

    return EnvironmentList(
      total: map['total'],
      environments: List<Environment>.from(
        map['environments'].map((p) => Environment.fromMap(p)),
      ),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "total": total,
      "environments": environments.map((p) => p.toMap()).toList(),
    };
  }
}
