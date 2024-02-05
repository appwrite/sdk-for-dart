part of dart_appwrite.enums;

enum Runtime {
    node180(value: 'node-18.0'),
    php80(value: 'php-8.0'),
    ruby31(value: 'ruby-3.1'),
    python39(value: 'python-3.9');

    const Runtime({
        required this.value
    });

    final String value;

    String toJson() => value;
}