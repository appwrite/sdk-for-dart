part of '../../models.dart';

/// Executions List
class ExecutionList<T> implements Model {
  /// Total number of executions documents that matched your query.
  final int total;

  /// List of executions.
  final List<Execution<T>> executions;

  ExecutionList({required this.total, required this.executions});

  factory ExecutionList.fromMap(
    Map<String, dynamic> map, [
    T Function(Map<String, dynamic>)? fromJson,
  ]) {
    return ExecutionList(
      total: map['total'],
      executions: List<Execution<T>>.from(
        map['executions'].map((p) => Execution.fromMap(p, fromJson)),
      ),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "total": total,
      "executions": executions.map((p) => p.toMap()).toList(),
    };
  }

  // Public getters for private underscore fields
}
