part of '../../models.dart';

/// Sites List
class SiteList implements Model {
  /// Total number of sites that matched your query.
  final int total;

  /// List of sites.
  final List<Site> sites;

  SiteList({
    required this.total,
    required this.sites,
  });

  factory SiteList.fromMap(Map<String, dynamic> map) {
    return SiteList(
      total: map['total'],
      sites: List<Site>.from(map['sites'].map((p) => Site.fromMap(p))),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "total": total,
      "sites": sites.map((p) => p.toMap()).toList(),
    };
  }
}
