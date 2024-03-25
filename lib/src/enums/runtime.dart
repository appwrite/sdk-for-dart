part of '../../enums.dart';

enum Runtime {
    node145(value: 'node-14.5'),
    node160(value: 'node-16.0'),
    node180(value: 'node-18.0'),
    node190(value: 'node-19.0'),
    node200(value: 'node-20.0'),
    node210(value: 'node-21.0'),
    php80(value: 'php-8.0'),
    php81(value: 'php-8.1'),
    php82(value: 'php-8.2'),
    php83(value: 'php-8.3'),
    ruby30(value: 'ruby-3.0'),
    ruby31(value: 'ruby-3.1'),
    ruby32(value: 'ruby-3.2'),
    ruby33(value: 'ruby-3.3'),
    python38(value: 'python-3.8'),
    python39(value: 'python-3.9'),
    python310(value: 'python-3.10'),
    python311(value: 'python-3.11'),
    python312(value: 'python-3.12'),
    deno140(value: 'deno-1.40'),
    dart215(value: 'dart-2.15'),
    dart216(value: 'dart-2.16'),
    dart217(value: 'dart-2.17'),
    dart218(value: 'dart-2.18'),
    dart30(value: 'dart-3.0'),
    dart31(value: 'dart-3.1'),
    dart33(value: 'dart-3.3'),
    dotnet31(value: 'dotnet-3.1'),
    dotnet60(value: 'dotnet-6.0'),
    dotnet70(value: 'dotnet-7.0'),
    java80(value: 'java-8.0'),
    java110(value: 'java-11.0'),
    java170(value: 'java-17.0'),
    java180(value: 'java-18.0'),
    java210(value: 'java-21.0'),
    swift55(value: 'swift-5.5'),
    swift58(value: 'swift-5.8'),
    swift59(value: 'swift-5.9'),
    kotlin16(value: 'kotlin-1.6'),
    kotlin18(value: 'kotlin-1.8'),
    kotlin19(value: 'kotlin-1.9'),
    cpp17(value: 'cpp-17'),
    cpp20(value: 'cpp-20'),
    bun10(value: 'bun-1.0');

    const Runtime({
        required this.value
    });

    final String value;

    String toJson() => value;
}