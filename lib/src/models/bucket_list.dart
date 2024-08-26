part of '../../models.dart';

/// Buckets List
class BucketList implements Model {
  /// Total number of buckets documents that matched your query.
  final int total;

  /// List of buckets.
  final List<Bucket> buckets;

  BucketList({
    required this.total,
    required this.buckets,
  });

  factory BucketList.fromMap(Map<String, dynamic> map) {
    return BucketList(
      total: map['total'],
      buckets: List<Bucket>.from(map['buckets'].map((p) => Bucket.fromMap(p))),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "total": total,
      "buckets": buckets.map((p) => p.toMap()).toList(),
    };
  }
}
