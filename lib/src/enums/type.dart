part of '../../enums.dart';

enum Type {
  tablesdb(value: 'tablesdb'),
  legacy(value: 'legacy');

  const Type({required this.value});

  final String value;

  String toJson() => value;
}
