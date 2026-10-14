part of '../../models.dart';

/// OperationList
class DedicatedDatabaseOperationList implements Model {
  /// Total number of operations.
  final int total;

  /// List of operations.
  final List<DedicatedDatabaseOperation> operations;

  DedicatedDatabaseOperationList({
    required this.total,
    required this.operations,
  });
  factory DedicatedDatabaseOperationList.fromMap(
    Map<String, dynamic> map,
  ) {
    map = {
      'total': 0,
      'operations': [],
      ...map,
    };

    return DedicatedDatabaseOperationList(
      total: map['total'],
      operations: List<DedicatedDatabaseOperation>.from(
        map['operations'].map((p) => DedicatedDatabaseOperation.fromMap(p)),
      ),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "total": total,
      "operations": operations.map((p) => p.toMap()).toList(),
    };
  }
}
