part of '../../enums.dart';

enum ProtocolId {
  rest(value: 'rest'),
  graphql(value: 'graphql'),
  websocket(value: 'websocket');

  const ProtocolId({required this.value});

  final String value;

  String toJson() => value;
}
