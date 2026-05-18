part of '../../enums.dart';

enum ProjectProtocolId {
    rest(value: 'rest'),
    graphql(value: 'graphql'),
    websocket(value: 'websocket');

    const ProjectProtocolId({
        required this.value
    });

    final String value;

    String toJson() => value;
}