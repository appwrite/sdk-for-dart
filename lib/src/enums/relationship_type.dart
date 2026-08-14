part of '../../enums.dart';

enum RelationshipType {
    oneToOne(value: 'oneToOne'),
    manyToOne(value: 'manyToOne'),
    manyToMany(value: 'manyToMany'),
    oneToMany(value: 'oneToMany');

    const RelationshipType({
        required this.value
    });

    final String value;

    String toJson() => value;
}