part of '../../models.dart';

/// Provider list
class ProviderList<T> implements Model {
    /// Total number of providers documents that matched your query.
    final int total;

    /// List of providers.
    final List<Provider<T>> providers;

    ProviderList({
        required this.total,
        required this.providers,
    });

    factory ProviderList.fromMap(Map<String, dynamic> map, [T Function(Map<String, dynamic>)? fromJson]) {
        return ProviderList(
            total: 
map['total'],
            providers: 
List<Provider<T>>.from(map['providers'].map((p) => Provider.fromMap(p, fromJson))),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "total": total,
            "providers": providers.map((p) => p.toMap()).toList(),
        };
    }

}
