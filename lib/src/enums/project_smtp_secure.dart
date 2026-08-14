part of '../../enums.dart';

enum ProjectSMTPSecure {
    tls(value: 'tls'),
    ssl(value: 'ssl');

    const ProjectSMTPSecure({
        required this.value
    });

    final String value;

    String toJson() => value;
}