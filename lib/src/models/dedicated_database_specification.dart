part of '../../models.dart';

/// Specification
class DedicatedDatabaseSpecification implements Model {
  /// Specification slug. Use this value when creating a dedicated database.
  final String slug;

  /// Human readable specification name.
  final String name;

  /// Monthly price of the specification in USD.
  final double price;

  /// Price per GB of storage above the included amount, per month, in USD.
  final double? storageOverageRate;

  /// Price per GB of bandwidth above the included amount, per month, in USD.
  final double? bandwidthOverageRate;

  /// High availability replica price as a fraction of the specification price.
  final double? replicaRate;

  /// Point-in-time recovery price as a fraction of the specification price.
  final double? pitrRate;

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
    this.storageOverageRate,
    this.bandwidthOverageRate,
    this.replicaRate,
    this.pitrRate,
    required this.cpu,
    required this.memory,
    required this.maxConnections,
    required this.includedStorage,
    required this.includedBandwidth,
    required this.enabled,
  });
  factory DedicatedDatabaseSpecification.fromMap(
    Map<String, dynamic> map,
  ) {
    return DedicatedDatabaseSpecification(
      slug: map['slug'].toString(),
      name: map['name'].toString(),
      price: map['price'].toDouble(),
      storageOverageRate: map['storageOverageRate']?.toDouble(),
      bandwidthOverageRate: map['bandwidthOverageRate']?.toDouble(),
      replicaRate: map['replicaRate']?.toDouble(),
      pitrRate: map['pitrRate']?.toDouble(),
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
      "storageOverageRate": storageOverageRate,
      "bandwidthOverageRate": bandwidthOverageRate,
      "replicaRate": replicaRate,
      "pitrRate": pitrRate,
      "cpu": cpu,
      "memory": memory,
      "maxConnections": maxConnections,
      "includedStorage": includedStorage,
      "includedBandwidth": includedBandwidth,
      "enabled": enabled,
    };
  }
}
