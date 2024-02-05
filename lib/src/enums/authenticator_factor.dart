part of dart_appwrite.enums;

enum AuthenticatorFactor {
    totp(value: 'totp');

    const AuthenticatorFactor({
        required this.value
    });

    final String value;

    String toJson() => value;
}