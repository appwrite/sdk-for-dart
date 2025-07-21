part of '../../models.dart';

/// Sites List
class SiteList<T> implements Model {
  /// Total number of sites documents that matched your query.
  final int total;

  /// List of sites.
  final List<Site<T>> sites;

  SiteList({required this.total, required this.sites});

  factory SiteList.fromMap(
    Map<String, dynamic> map, [
    T Function(Map<String, dynamic>)? fromJson,
  ]) {
    return SiteList(
      total: map['total'],
      sites: List<Site<T>>.from(
        map['sites'].map((p) => Site.fromMap(p, fromJson)),
      ),
    );
  }

  Map<String, dynamic> toMap() {
    return {"total": total, "sites": sites.map((p) => p.toMap()).toList()};
  }
}
