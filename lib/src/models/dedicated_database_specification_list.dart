part of '../../models.dart';

/// SpecificationList
class DedicatedDatabaseSpecificationList implements Model {
    /// List of dedicated database specifications.
    final List<DedicatedDatabaseSpecification> specifications;

    /// Total number of specifications.
    final int total;

    /// Overage and add-on pricing shared across all specifications.
    final DedicatedDatabaseSpecificationPricing pricing;

    DedicatedDatabaseSpecificationList({
        required this.specifications,
        required this.total,
        required this.pricing,
    });

    factory DedicatedDatabaseSpecificationList.fromMap(Map<String, dynamic> map) {
        return DedicatedDatabaseSpecificationList(
            specifications: List<DedicatedDatabaseSpecification>.from(map['specifications'].map((p) => DedicatedDatabaseSpecification.fromMap(p))),
            total: map['total'],
            pricing: DedicatedDatabaseSpecificationPricing.fromMap(map['pricing']),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "specifications": specifications.map((p) => p.toMap()).toList(),
            "total": total,
            "pricing": pricing.toMap(),
        };
    }
}
