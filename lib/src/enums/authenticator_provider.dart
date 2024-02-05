part of dart_appwrite.enums;

enum AuthenticatorProvider {
    totp(value: 'totp');

    const AuthenticatorProvider({
        required this.value
    });

    final String value;

    String toJson() => value;
}