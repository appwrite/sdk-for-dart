part of '../../models.dart';

/// Logs List
class LogList<T> implements Model {
  /// Total number of logs documents that matched your query.
  final int total;

  /// List of logs.
  final List<Log<T>> logs;

  LogList({required this.total, required this.logs});

  factory LogList.fromMap(
    Map<String, dynamic> map, [
    T Function(Map<String, dynamic>)? fromJson,
  ]) {
    return LogList(
      total: map['total'],
      logs: List<Log<T>>.from(map['logs'].map((p) => Log.fromMap(p, fromJson))),
    );
  }

  Map<String, dynamic> toMap() {
    return {"total": total, "logs": logs.map((p) => p.toMap()).toList()};
  }

  // Public getters for private underscore fields
}
