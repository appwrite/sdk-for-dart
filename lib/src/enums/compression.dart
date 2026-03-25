part of '../../enums.dart';

enum Compression {
  none(value: 'none'),
  gzip(value: 'gzip'),
  zstd(value: 'zstd');

  const Compression({required this.value});

  final String value;

  String toJson() => value;
}
