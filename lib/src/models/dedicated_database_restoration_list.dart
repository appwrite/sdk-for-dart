part of '../../models.dart';

/// Dedicated database restorations list
class DedicatedDatabaseRestorationList implements Model {
  /// Total number of restorations that matched your query.
  final int total;

  /// List of restorations.
  final List<DedicatedDatabaseRestoration> restorations;

  DedicatedDatabaseRestorationList({
    required this.total,
    required this.restorations,
  });
  factory DedicatedDatabaseRestorationList.fromMap(
    Map<String, dynamic> map,
  ) {
    return DedicatedDatabaseRestorationList(
      total: map['total'],
      restorations: List<DedicatedDatabaseRestoration>.from(
        map['restorations'].map((p) => DedicatedDatabaseRestoration.fromMap(p)),
      ),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "total": total,
      "restorations": restorations.map((p) => p.toMap()).toList(),
    };
  }
}
