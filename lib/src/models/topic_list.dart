part of '../../models.dart';

/// Topic list
class TopicList<T> implements Model {
    /// Total number of topics documents that matched your query.
    final int total;

    /// List of topics.
    final List<Topic<T>> topics;

    TopicList({
        required this.total,
        required this.topics,
    });

    factory TopicList.fromMap(Map<String, dynamic> map, [T Function(Map<String, dynamic>)? fromJson]) {
        return TopicList(
            total: 
map['total'],
            topics: 
List<Topic<T>>.from(map['topics'].map((p) => Topic.fromMap(p, fromJson))),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "total": total,
            "topics": topics.map((p) => p.toMap()).toList(),
        };
    }

    // Public getters for private underscore fields
}
