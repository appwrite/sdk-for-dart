part of '../../models.dart';

/// ResourceToken
class ResourceToken<T> implements Model {
  /// Token ID.
  final String $id;

  /// Token creation date in ISO 8601 format.
  final String $createdAt;

  /// Resource ID.
  final String resourceId;

  /// Resource type.
  final String resourceType;

  /// Token expiration date in ISO 8601 format.
  final String expire;

  /// JWT encoded string.
  final String secret;

  /// Most recent access date in ISO 8601 format. This attribute is only updated again after 24 hours.
  final String accessedAt;

  ResourceToken({
    required this.$id,
    required this.$createdAt,
    required this.resourceId,
    required this.resourceType,
    required this.expire,
    required this.secret,
    required this.accessedAt,
  });

  factory ResourceToken.fromMap(
    Map<String, dynamic> map, [
    T Function(Map<String, dynamic>)? fromJson,
  ]) {
    return ResourceToken(
      $id: map['\$id'].toString(),
      $createdAt: map['\$createdAt'].toString(),
      resourceId: map['resourceId'].toString(),
      resourceType: map['resourceType'].toString(),
      expire: map['expire'].toString(),
      secret: map['secret'].toString(),
      accessedAt: map['accessedAt'].toString(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "\$createdAt": $createdAt,
      "resourceId": resourceId,
      "resourceType": resourceType,
      "expire": expire,
      "secret": secret,
      "accessedAt": accessedAt,
    };
  }

  // Public getters for private underscore fields
}
