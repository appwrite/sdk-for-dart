part of '../../enums.dart';

enum DatabaseType {
    legacy(value: 'legacy'),
    tablesdb(value: 'tablesdb'),
    documentsdb(value: 'documentsdb'),
    vectorsdb(value: 'vectorsdb'),
    mysql(value: 'mysql'),
    postgresql(value: 'postgresql'),
    mongodb(value: 'mongodb');

    const DatabaseType({
        required this.value
    });

    final String value;

    String toJson() => value;
}