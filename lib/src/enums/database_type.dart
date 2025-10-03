part of '../../enums.dart';

enum DatabaseType {
  legacy(value: 'legacy'),
  tablesdb(value: 'tablesdb');

  const DatabaseType({required this.value});

  final String value;

  String toJson() => value;
}
