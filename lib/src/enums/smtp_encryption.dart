part of dart_appwrite.enums;

enum SmtpEncryption {
    none(value: 'none'),
    ssl(value: 'ssl'),
    tls(value: 'tls');

    const SmtpEncryption({
        required this.value
    });

    final String value;

    String toJson() => value;
}