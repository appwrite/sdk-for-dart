part of '../../models.dart';

/// Topic list
class TopicList implements Model {
  /// Total number of topics documents that matched your query.
  final int total;

  /// List of topics.
  final List<Topic> topics;

  TopicList({
    required this.total,
    required this.topics,
  });

  factory TopicList.fromMap(Map<String, dynamic> map) {
    return TopicList(
      total: map['total'],
      topics: List<Topic>.from(map['topics'].map((p) => Topic.fromMap(p))),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "total": total,
      "topics": topics.map((p) => p.toMap()).toList(),
    };
  }
}
