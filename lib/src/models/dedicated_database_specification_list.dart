part of '../../models.dart';

/// SpecificationList
class DedicatedDatabaseSpecificationList implements Model {
  /// List of dedicated database specifications.
  final List<DedicatedDatabaseSpecification> specifications;

  /// Total number of specifications.
  final int total;

  DedicatedDatabaseSpecificationList({
    required this.specifications,
    required this.total,
  });
  factory DedicatedDatabaseSpecificationList.fromMap(
    Map<String, dynamic> map,
  ) {
    map = {
      'total': 0,
      ...map,
    };

    return DedicatedDatabaseSpecificationList(
      specifications: List<DedicatedDatabaseSpecification>.from(
        map['specifications']
            .map((p) => DedicatedDatabaseSpecification.fromMap(p)),
      ),
      total: map['total'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "specifications": specifications.map((p) => p.toMap()).toList(),
      "total": total,
    };
  }
}
