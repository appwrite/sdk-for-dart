part of '../../enums.dart';

enum Secure {
  tls(value: 'tls'),
  ssl(value: 'ssl');

  const Secure({required this.value});

  final String value;

  String toJson() => value;
}
