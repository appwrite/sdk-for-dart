part of '../../enums.dart';

enum SmtpEncryption {
  none(value: 'none'),
  ssl(value: 'ssl'),
  tls(value: 'tls');

  const SmtpEncryption({required this.value});

  final String value;

  String toJson() => value;
}
