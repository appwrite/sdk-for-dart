part of dart_appwrite.enums;

enum MessagingProviderType {
    email(value: 'email'),
    sms(value: 'sms'),
    push(value: 'push');

    const MessagingProviderType({
        required this.value
    });

    final String value;

    String toJson() => value;
}