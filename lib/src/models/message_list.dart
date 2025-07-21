part of '../../models.dart';

/// Message list
class MessageList<T> implements Model {
    /// Total number of messages documents that matched your query.
    final int total;

    /// List of messages.
    final List<Message<T>> messages;

    MessageList({
        required this.total,
        required this.messages,
    });

    factory MessageList.fromMap(Map<String, dynamic> map, [T Function(Map<String, dynamic>)? fromJson]) {
        return MessageList(
            total: 
map['total'],
            messages: 
List<Message<T>>.from(map['messages'].map((p) => Message.fromMap(p, fromJson))),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "total": total,
            "messages": messages.map((p) => p.toMap()).toList(),
        };
    }

    // Public getters for private underscore fields
}
