part of '../../enums.dart';

enum DeploymentDownloadType {
    source(value: 'source'),
    output(value: 'output');

    const DeploymentDownloadType({
        required this.value
    });

    final String value;

    String toJson() => value;
}