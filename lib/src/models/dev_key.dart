part of '../../models.dart';

/// DevKey
class DevKey implements Model {
  /// Key ID.
  final String $id;

  /// Key creation date in ISO 8601 format.
  final String $createdAt;

  /// Key update date in ISO 8601 format.
  final String $updatedAt;

  /// Key name.
  final String name;

  /// Key expiration date in ISO 8601 format.
  final String expire;

  /// Secret key.
  final String secret;

  /// Most recent access date in ISO 8601 format. This attribute is only updated again after 24 hours.
  final String accessedAt;

  /// List of SDK user agents that used this key.
  final List<String> sdks;

  DevKey({
    required this.$id,
    required this.$createdAt,
    required this.$updatedAt,
    required this.name,
    required this.expire,
    required this.secret,
    required this.accessedAt,
    required this.sdks,
  });

  factory DevKey.fromMap(Map<String, dynamic> map) {
    return DevKey(
      $id: map['\$id'].toString(),
      $createdAt: map['\$createdAt'].toString(),
      $updatedAt: map['\$updatedAt'].toString(),
      name: map['name'].toString(),
      expire: map['expire'].toString(),
      secret: map['secret'].toString(),
      accessedAt: map['accessedAt'].toString(),
      sdks: List.from(map['sdks'] ?? []),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "\$createdAt": $createdAt,
      "\$updatedAt": $updatedAt,
      "name": name,
      "expire": expire,
      "secret": secret,
      "accessedAt": accessedAt,
      "sdks": sdks,
    };
  }
}
