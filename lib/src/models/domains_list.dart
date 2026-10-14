part of '../../models.dart';

/// Domains list
class DomainsList implements Model {
  /// Total number of domains that matched your query.
  final int total;

  /// List of domains.
  final List<Domain> domains;

  DomainsList({
    required this.total,
    required this.domains,
  });
  factory DomainsList.fromMap(
    Map<String, dynamic> map,
  ) {
    map = {
      'total': 0,
      'domains': [],
      ...map,
    };

    return DomainsList(
      total: map['total'],
      domains: List<Domain>.from(
        map['domains'].map((p) => Domain.fromMap(p)),
      ),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "total": total,
      "domains": domains.map((p) => p.toMap()).toList(),
    };
  }
}
