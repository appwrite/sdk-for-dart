part of '../../models.dart';

/// Identities List
class IdentityList<T> implements Model {
  /// Total number of identities documents that matched your query.
  final int total;

  /// List of identities.
  final List<Identity<T>> identities;

  IdentityList({required this.total, required this.identities});

  factory IdentityList.fromMap(
    Map<String, dynamic> map, [
    T Function(Map<String, dynamic>)? fromJson,
  ]) {
    return IdentityList(
      total: map['total'],
      identities: List<Identity<T>>.from(
        map['identities'].map((p) => Identity.fromMap(p, fromJson)),
      ),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "total": total,
      "identities": identities.map((p) => p.toMap()).toList(),
    };
  }
}
