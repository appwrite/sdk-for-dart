part of '../../models.dart';

/// Countries List
class CountryList<T> implements Model {
    /// Total number of countries documents that matched your query.
    final int total;

    /// List of countries.
    final List<Country<T>> countries;

    CountryList({
        required this.total,
        required this.countries,
    });

    factory CountryList.fromMap(Map<String, dynamic> map, [T Function(Map<String, dynamic>)? fromJson]) {
        return CountryList(
            total: 
map['total'],
            countries: 
List<Country<T>>.from(map['countries'].map((p) => Country.fromMap(p, fromJson))),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "total": total,
            "countries": countries.map((p) => p.toMap()).toList(),
        };
    }

    // Public getters for private underscore fields
}
