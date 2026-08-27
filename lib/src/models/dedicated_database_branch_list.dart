part of '../../models.dart';

/// BranchList
class DedicatedDatabaseBranchList implements Model {
  /// Total number of branches.
  final int total;

  /// List of branches.
  final List<DedicatedDatabaseBranch> branches;

  DedicatedDatabaseBranchList({
    required this.total,
    required this.branches,
  });
  factory DedicatedDatabaseBranchList.fromMap(
    Map<String, dynamic> map,
  ) {
    return DedicatedDatabaseBranchList(
      total: map['total'],
      branches: List<DedicatedDatabaseBranch>.from(
        map['branches'].map((p) => DedicatedDatabaseBranch.fromMap(p)),
      ),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "total": total,
      "branches": branches.map((p) => p.toMap()).toList(),
    };
  }
}
