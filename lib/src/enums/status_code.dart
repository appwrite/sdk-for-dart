part of '../../enums.dart';

enum StatusCode {
  movedPermanently301(value: '301'),
  found302(value: '302'),
  temporaryRedirect307(value: '307'),
  permanentRedirect308(value: '308');

  const StatusCode({required this.value});

  final String value;

  String toJson() => value;
}
