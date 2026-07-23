part of '../../models.dart';

/// SpecificationPricing
class DedicatedDatabaseSpecificationPricing implements Model {
  /// Price per GB of storage above the included amount, per month, in USD.
  final double storageOverageRate;

  /// Price per GB of bandwidth above the included amount, per month, in USD.
  final double bandwidthOverageRate;

  /// High availability replica price as a fraction of the specification cost.
  final double replicaRate;

  /// Cross-region replica price as a fraction of the specification cost.
  final double crossRegionReplicaRate;

  /// Point-in-time recovery price as a fraction of the specification cost.
  final double pitrRate;

  DedicatedDatabaseSpecificationPricing({
    required this.storageOverageRate,
    required this.bandwidthOverageRate,
    required this.replicaRate,
    required this.crossRegionReplicaRate,
    required this.pitrRate,
  });

  factory DedicatedDatabaseSpecificationPricing.fromMap(
      Map<String, dynamic> map) {
    return DedicatedDatabaseSpecificationPricing(
      storageOverageRate: map['storageOverageRate'].toDouble(),
      bandwidthOverageRate: map['bandwidthOverageRate'].toDouble(),
      replicaRate: map['replicaRate'].toDouble(),
      crossRegionReplicaRate: map['crossRegionReplicaRate'].toDouble(),
      pitrRate: map['pitrRate'].toDouble(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "storageOverageRate": storageOverageRate,
      "bandwidthOverageRate": bandwidthOverageRate,
      "replicaRate": replicaRate,
      "crossRegionReplicaRate": crossRegionReplicaRate,
      "pitrRate": pitrRate,
    };
  }
}
