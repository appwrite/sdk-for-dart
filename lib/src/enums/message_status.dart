part of dart_appwrite.enums;

enum MessageStatus {
    draft(value: 'draft'),
    scheduled(value: 'scheduled'),
    processing(value: 'processing');

    const MessageStatus({
        required this.value
    });

    final String value;

    String toJson() => value;
}