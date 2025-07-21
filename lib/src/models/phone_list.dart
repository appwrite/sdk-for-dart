part of '../../models.dart';

/// Phones List
class PhoneList<T> implements Model {
    /// Total number of phones documents that matched your query.
    final int total;

    /// List of phones.
    final List<Phone<T>> phones;

    PhoneList({
        required this.total,
        required this.phones,
    });

    factory PhoneList.fromMap(Map<String, dynamic> map, [T Function(Map<String, dynamic>)? fromJson]) {
        return PhoneList(
            total: 
map['total'],
            phones: 
List<Phone<T>>.from(map['phones'].map((p) => Phone.fromMap(p, fromJson))),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "total": total,
            "phones": phones.map((p) => p.toMap()).toList(),
        };
    }

    // Public getters for private underscore fields
}
