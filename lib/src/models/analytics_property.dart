part of '../../models.dart';

/// AnalyticsProperty
class AnalyticsProperty implements Model {
  /// Analytics property ID.
  final String $id;

  /// Property creation date in ISO 8601 format.
  final String $createdAt;

  /// Property update date in ISO 8601 format.
  final String $updatedAt;

  /// Human-readable name of the tracked website or application.
  final String name;

  /// Primary domain being tracked (e.g. example.com). May be empty for mobile and agent properties.
  final String domain;

  /// Whether tracking is currently active.
  final bool enabled;

  /// List of origins allowed to send tracking events. Use [&quot;*&quot;] to allow all. Managed by Appwrite for a property linked to a site, following the site&#039;s production domains.
  final List<String> allowedOrigins;

  /// Kind of product this property tracks. Decides which dashboard panels apply.
  final enums.AnalyticsPropertyType type;

  /// Whether events sent from a signed-in client session record that user&#039;s ID.
  final bool identifyUsers;

  /// Most recent event date in ISO 8601 format. This attribute is only updated again after 24 hours.
  final String accessedAt;

  /// First event date in ISO 8601 format. Empty until the property receives its first event.
  final String firstAccessedAt;

  AnalyticsProperty({
    required this.$id,
    required this.$createdAt,
    required this.$updatedAt,
    required this.name,
    required this.domain,
    required this.enabled,
    required this.allowedOrigins,
    required this.type,
    required this.identifyUsers,
    required this.accessedAt,
    required this.firstAccessedAt,
  });
  factory AnalyticsProperty.fromMap(
    Map<String, dynamic> map,
  ) {
    map = {
      '\$id': "",
      '\$createdAt': "",
      '\$updatedAt': "",
      'name': "",
      'domain': "",
      'enabled': true,
      'allowedOrigins': ["*"],
      'type': "web",
      'identifyUsers': false,
      'accessedAt': "",
      'firstAccessedAt': "",
      ...map,
    };

    return AnalyticsProperty(
      $id: map['\$id'].toString(),
      $createdAt: map['\$createdAt'].toString(),
      $updatedAt: map['\$updatedAt'].toString(),
      name: map['name'].toString(),
      domain: map['domain'].toString(),
      enabled: map['enabled'],
      allowedOrigins: List.from(map['allowedOrigins'] ?? []),
      type: enums.AnalyticsPropertyType.values.firstWhere(
        (e) => e.value == map['type'],
      ),
      identifyUsers: map['identifyUsers'],
      accessedAt: map['accessedAt'].toString(),
      firstAccessedAt: map['firstAccessedAt'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "\$createdAt": $createdAt,
      "\$updatedAt": $updatedAt,
      "name": name,
      "domain": domain,
      "enabled": enabled,
      "allowedOrigins": allowedOrigins,
      "type": type.value,
      "identifyUsers": identifyUsers,
      "accessedAt": accessedAt,
      "firstAccessedAt": firstAccessedAt,
    };
  }
}
