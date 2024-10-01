part of '../../models.dart';

/// Provider list
class ProviderList implements Model {
    /// Total number of providers documents that matched your query.
    final int total;
    /// List of providers.
    final List<Provider> providers;

    ProviderList({
        required this.total,
        required this.providers,
    });

    factory ProviderList.fromMap(Map<String, dynamic> map) {
        return ProviderList(
            total: (map['total'] is String) ?
                        int.tryParse(map['total']) ?? 0:map['total'] ?? 0,
            providers: List<Provider>.from(map['providers'].map((p) => Provider.fromMap(p))),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "total": total,
            "providers": providers.map((p) => p.toMap()).toList(),
        };
    }
}
