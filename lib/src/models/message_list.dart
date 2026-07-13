part of '../../models.dart';

/// Message list
class MessageList implements Model {
  /// Total number of messages that matched your query.
  final int total;

  /// List of messages.
  final List<Message> messages;

  MessageList({
    required this.total,
    required this.messages,
  });

  factory MessageList.fromMap(Map<String, dynamic> map) {
    return MessageList(
      total: map['total'],
      messages:
          List<Message>.from(map['messages'].map((p) => Message.fromMap(p))),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "total": total,
      "messages": messages.map((p) => p.toMap()).toList(),
    };
  }
}
