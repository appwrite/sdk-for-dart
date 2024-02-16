part of dart_appwrite.enums;

enum Factor {
    totp(value: 'totp'),
    phone(value: 'phone'),
    email(value: 'email');

    const Factor({
        required this.value
    });

    final String value;

    String toJson() => value;
}