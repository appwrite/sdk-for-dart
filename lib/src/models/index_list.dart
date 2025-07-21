part of '../../models.dart';

/// Indexes List
class IndexList<T> implements Model {
  /// Total number of indexes documents that matched your query.
  final int total;

  /// List of indexes.
  final List<Index<T>> indexes;

  IndexList({required this.total, required this.indexes});

  factory IndexList.fromMap(
    Map<String, dynamic> map, [
    T Function(Map<String, dynamic>)? fromJson,
  ]) {
    return IndexList(
      total: map['total'],
      indexes: List<Index<T>>.from(
        map['indexes'].map((p) => Index.fromMap(p, fromJson)),
      ),
    );
  }

  Map<String, dynamic> toMap() {
    return {"total": total, "indexes": indexes.map((p) => p.toMap()).toList()};
  }
}
