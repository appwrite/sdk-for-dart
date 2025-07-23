part of '../../enums.dart';

enum Adapter {
  static(value: 'static'),
  ssr(value: 'ssr');

  const Adapter({required this.value});

  final String value;

  String toJson() => value;
}
