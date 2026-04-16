part of '../../models.dart';

/// Platform Apple
class PlatformApple implements Model {
  /// Platform ID.
  final String $id;

  /// Platform creation date in ISO 8601 format.
  final String $createdAt;

  /// Platform update date in ISO 8601 format.
  final String $updatedAt;

  /// Platform name.
  final String name;

  /// Platform type. Possible values are: windows, apple, android, linux, web.
  final enums.PlatformType type;

  /// Apple bundle identifier.
  final String bundleIdentifier;

  PlatformApple({
    required this.$id,
    required this.$createdAt,
    required this.$updatedAt,
    required this.name,
    required this.type,
    required this.bundleIdentifier,
  });

  factory PlatformApple.fromMap(Map<String, dynamic> map) {
    return PlatformApple(
      $id: map['\$id'].toString(),
      $createdAt: map['\$createdAt'].toString(),
      $updatedAt: map['\$updatedAt'].toString(),
      name: map['name'].toString(),
      type: enums.PlatformType.values.firstWhere((e) => e.value == map['type']),
      bundleIdentifier: map['bundleIdentifier'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "\$createdAt": $createdAt,
      "\$updatedAt": $updatedAt,
      "name": name,
      "type": type.value,
      "bundleIdentifier": bundleIdentifier,
    };
  }
}
