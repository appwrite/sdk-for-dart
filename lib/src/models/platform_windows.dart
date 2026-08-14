part of '../../models.dart';

/// Platform Windows
class PlatformWindows implements Model {
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

  /// Windows package identifier name.
  final String packageIdentifierName;

  PlatformWindows({
    required this.$id,
    required this.$createdAt,
    required this.$updatedAt,
    required this.name,
    required this.type,
    required this.packageIdentifierName,
  });

  factory PlatformWindows.fromMap(Map<String, dynamic> map) {
    return PlatformWindows(
      $id: map['\$id'].toString(),
      $createdAt: map['\$createdAt'].toString(),
      $updatedAt: map['\$updatedAt'].toString(),
      name: map['name'].toString(),
      type: enums.PlatformType.values.firstWhere((e) => e.value == map['type']),
      packageIdentifierName: map['packageIdentifierName'].toString(),
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
      "packageIdentifierName": packageIdentifierName,
    };
  }
}
