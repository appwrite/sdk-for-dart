part of '../../models.dart';

/// OAuth2 Providers List
class OAuth2ProviderList implements Model {
  /// Total number of OAuth2 providers in the given project.
  final int total;

  /// List of OAuth2 providers.
  final List providers;

  OAuth2ProviderList({
    required this.total,
    required this.providers,
  });

  factory OAuth2ProviderList.fromMap(Map<String, dynamic> map) {
    return OAuth2ProviderList(
      total: map['total'],
      providers: List.from(map['providers'] ?? []),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "total": total,
      "providers": providers,
    };
  }
}
