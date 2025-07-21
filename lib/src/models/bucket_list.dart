part of '../../models.dart';

/// Buckets List
class BucketList<T> implements Model {
  /// Total number of buckets documents that matched your query.
  final int total;

  /// List of buckets.
  final List<Bucket<T>> buckets;

  BucketList({required this.total, required this.buckets});

  factory BucketList.fromMap(
    Map<String, dynamic> map, [
    T Function(Map<String, dynamic>)? fromJson,
  ]) {
    return BucketList(
      total: map['total'],
      buckets: List<Bucket<T>>.from(
        map['buckets'].map((p) => Bucket.fromMap(p, fromJson)),
      ),
    );
  }

  Map<String, dynamic> toMap() {
    return {"total": total, "buckets": buckets.map((p) => p.toMap()).toList()};
  }

  // Public getters for private underscore fields
}
