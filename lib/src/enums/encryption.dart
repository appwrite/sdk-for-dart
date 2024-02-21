part of dart_appwrite.enums;

enum Encryption {
    none(value: 'none'),
    ssl(value: 'ssl'),
    tls(value: 'tls');

    const Encryption({
        required this.value
    });

    final String value;

    String toJson() => value;
}