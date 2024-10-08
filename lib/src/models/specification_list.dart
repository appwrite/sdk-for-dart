part of '../../models.dart';

/// Specifications List
class SpecificationList implements Model {
    /// Total number of specifications documents that matched your query.
    final int total;
    /// List of specifications.
    final List<Specification> specifications;

    SpecificationList({
        required this.total,
        required this.specifications,
    });

    factory SpecificationList.fromMap(Map<String, dynamic> map) {
        return SpecificationList(
            total: (map['total'] is String) ?
                        int.tryParse(map['total']) ?? 0:map['total'] ?? 0,
            specifications: List<Specification>.from(map['specifications'].map((p) => Specification.fromMap(p))),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "total": total,
            "specifications": specifications.map((p) => p.toMap()).toList(),
        };
    }
}
