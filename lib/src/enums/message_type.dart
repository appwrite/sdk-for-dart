part of dart_appwrite.enums;

enum MessageType {
    draft(value: 'draft'),
    cancelled(value: 'cancelled'),
    processing(value: 'processing');

    const MessageType({
        required this.value
    });

    final String value;

    String toJson() => value;
}