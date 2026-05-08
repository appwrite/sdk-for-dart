part of '../../enums.dart';

enum DatabaseType {
    legacy(value: 'legacy'),
    tablesdb(value: 'tablesdb'),
    documentsdb(value: 'documentsdb'),
    vectorsdb(value: 'vectorsdb');

    const DatabaseType({
        required this.value
    });

    final String value;

    String toJson() => value;
}