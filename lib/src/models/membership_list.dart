part of '../../models.dart';

/// Memberships List
class MembershipList<T> implements Model {
  /// Total number of memberships documents that matched your query.
  final int total;

  /// List of memberships.
  final List<Membership<T>> memberships;

  MembershipList({required this.total, required this.memberships});

  factory MembershipList.fromMap(
    Map<String, dynamic> map, [
    T Function(Map<String, dynamic>)? fromJson,
  ]) {
    return MembershipList(
      total: map['total'],
      memberships: List<Membership<T>>.from(
        map['memberships'].map((p) => Membership.fromMap(p, fromJson)),
      ),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "total": total,
      "memberships": memberships.map((p) => p.toMap()).toList(),
    };
  }

  // Public getters for private underscore fields
}
