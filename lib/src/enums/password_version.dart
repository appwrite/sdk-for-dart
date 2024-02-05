part of dart_appwrite.enums;

enum PasswordVersion {
    sha1(value: 'sha1'),
    sha224(value: 'sha224'),
    sha256(value: 'sha256'),
    sha384(value: 'sha384'),
    sha512224(value: 'sha512/224'),
    sha512256(value: 'sha512/256'),
    sha512(value: 'sha512'),
    sha3224(value: 'sha3-224'),
    sha3256(value: 'sha3-256'),
    sha3384(value: 'sha3-384'),
    sha3512(value: 'sha3-512');

    const PasswordVersion({
        required this.value
    });

    final String value;

    String toJson() => value;
}