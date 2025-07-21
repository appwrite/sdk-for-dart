part of '../../models.dart';

/// Target list
class TargetList<T> implements Model {
  /// Total number of targets documents that matched your query.
  final int total;

  /// List of targets.
  final List<Target<T>> targets;

  TargetList({required this.total, required this.targets});

  factory TargetList.fromMap(
    Map<String, dynamic> map, [
    T Function(Map<String, dynamic>)? fromJson,
  ]) {
    return TargetList(
      total: map['total'],
      targets: List<Target<T>>.from(
        map['targets'].map((p) => Target.fromMap(p, fromJson)),
      ),
    );
  }

  Map<String, dynamic> toMap() {
    return {"total": total, "targets": targets.map((p) => p.toMap()).toList()};
  }

  // Public getters for private underscore fields
}
