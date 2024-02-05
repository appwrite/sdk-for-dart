part of dart_appwrite.enums;

enum SMTPEncryption {
    none(value: 'none'),
    ssl(value: 'ssl'),
    tls(value: 'tls');

    const SMTPEncryption({
        required this.value
    });

    final String value;

    String toJson() => value;
}