part of '../../models.dart';

/// Deployments List
class DeploymentList<T> implements Model {
  /// Total number of deployments documents that matched your query.
  final int total;

  /// List of deployments.
  final List<Deployment<T>> deployments;

  DeploymentList({required this.total, required this.deployments});

  factory DeploymentList.fromMap(
    Map<String, dynamic> map, [
    T Function(Map<String, dynamic>)? fromJson,
  ]) {
    return DeploymentList(
      total: map['total'],
      deployments: List<Deployment<T>>.from(
        map['deployments'].map((p) => Deployment.fromMap(p, fromJson)),
      ),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "total": total,
      "deployments": deployments.map((p) => p.toMap()).toList(),
    };
  }

  // Public getters for private underscore fields
}
