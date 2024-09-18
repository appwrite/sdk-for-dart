part of '../../models.dart';

/// Deployments List
class DeploymentList implements Model {
  /// Total number of deployments documents that matched your query.
  final int total;

  /// List of deployments.
  final List<Deployment> deployments;

  DeploymentList({
    required this.total,
    required this.deployments,
  });

  factory DeploymentList.fromMap(Map<String, dynamic> map) {
    return DeploymentList(
      total: (map['total'] is String)
          ? int.tryParse(map['total']) ?? 0
          : map['total'] ?? 0,
      deployments: List<Deployment>.from(
          map['deployments'].map((p) => Deployment.fromMap(p))),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "total": total,
      "deployments": deployments.map((p) => p.toMap()).toList(),
    };
  }
}
