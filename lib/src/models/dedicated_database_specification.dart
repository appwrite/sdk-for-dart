part of '../../models.dart';

/// Specification
class DedicatedDatabaseSpecification implements Model {
    /// Specification slug. Use this value when creating a dedicated database.
    final String slug;

    /// Human readable specification name.
    final String name;

    /// Monthly price of the specification in USD.
    final double price;

    /// Allocated CPU in millicores.
    final int cpu;

    /// Allocated memory in MB.
    final int memory;

    /// Maximum number of concurrent connections.
    final int maxConnections;

    /// Included storage in GB before overage charges apply.
    final int includedStorage;

    /// Included bandwidth in GB before overage charges apply.
    final int includedBandwidth;

    /// Whether the specification is available on the current plan.
    final bool enabled;

    DedicatedDatabaseSpecification({
        required this.slug,
        required this.name,
        required this.price,
        required this.cpu,
        required this.memory,
        required this.maxConnections,
        required this.includedStorage,
        required this.includedBandwidth,
        required this.enabled,
    });

    factory DedicatedDatabaseSpecification.fromMap(Map<String, dynamic> map) {
        return DedicatedDatabaseSpecification(
            slug: map['slug'].toString(),
            name: map['name'].toString(),
            price: map['price'].toDouble(),
            cpu: map['cpu'],
            memory: map['memory'],
            maxConnections: map['maxConnections'],
            includedStorage: map['includedStorage'],
            includedBandwidth: map['includedBandwidth'],
            enabled: map['enabled'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "slug": slug,
            "name": name,
            "price": price,
            "cpu": cpu,
            "memory": memory,
            "maxConnections": maxConnections,
            "includedStorage": includedStorage,
            "includedBandwidth": includedBandwidth,
            "enabled": enabled,
        };
    }
}
