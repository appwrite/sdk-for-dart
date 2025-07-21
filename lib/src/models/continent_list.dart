part of '../../models.dart';

/// Continents List
class ContinentList<T> implements Model {
    /// Total number of continents documents that matched your query.
    final int total;

    /// List of continents.
    final List<Continent<T>> continents;

    ContinentList({
        required this.total,
        required this.continents,
    });

    factory ContinentList.fromMap(Map<String, dynamic> map, [T Function(Map<String, dynamic>)? fromJson]) {
        return ContinentList(
            total: 
map['total'],
            continents: 
List<Continent<T>>.from(map['continents'].map((p) => Continent.fromMap(p, fromJson))),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "total": total,
            "continents": continents.map((p) => p.toMap()).toList(),
        };
    }

    // Public getters for private underscore fields
}
