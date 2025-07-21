part of '../../models.dart';

/// Collections List
class CollectionList<T> implements Model {
  /// Total number of collections documents that matched your query.
  final int total;

  /// List of collections.
  final List<Collection<T>> collections;

  CollectionList({required this.total, required this.collections});

  factory CollectionList.fromMap(
    Map<String, dynamic> map, [
    T Function(Map<String, dynamic>)? fromJson,
  ]) {
    return CollectionList(
      total: map['total'],
      collections: List<Collection<T>>.from(
        map['collections'].map((p) => Collection.fromMap(p, fromJson)),
      ),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "total": total,
      "collections": collections.map((p) => p.toMap()).toList(),
    };
  }

  // Public getters for private underscore fields
}
