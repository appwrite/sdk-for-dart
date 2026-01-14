part of '../../models.dart';

/// Bucket
class Bucket implements Model {
  /// Bucket ID.
  final String $id;

  /// Bucket creation time in ISO 8601 format.
  final String $createdAt;

  /// Bucket update date in ISO 8601 format.
  final String $updatedAt;

  /// Bucket permissions. [Learn more about permissions](https://appwrite.io/docs/permissions).
  final List<String> $permissions;

  /// Whether file-level security is enabled. [Learn more about permissions](https://appwrite.io/docs/permissions).
  final bool fileSecurity;

  /// Bucket name.
  final String name;

  /// Bucket enabled.
  final bool enabled;

  /// Maximum file size supported.
  final int maximumFileSize;

  /// Allowed file extensions.
  final List<String> allowedFileExtensions;

  /// Compression algorithm chosen for compression. Will be one of none, [gzip](https://en.wikipedia.org/wiki/Gzip), or [zstd](https://en.wikipedia.org/wiki/Zstd).
  final String compression;

  /// Bucket is encrypted.
  final bool encryption;

  /// Virus scanning is enabled.
  final bool antivirus;

  /// Image transformations are enabled.
  final bool transformations;

  /// Total size of this bucket in bytes.
  final int totalSize;

  Bucket({
    required this.$id,
    required this.$createdAt,
    required this.$updatedAt,
    required this.$permissions,
    required this.fileSecurity,
    required this.name,
    required this.enabled,
    required this.maximumFileSize,
    required this.allowedFileExtensions,
    required this.compression,
    required this.encryption,
    required this.antivirus,
    required this.transformations,
    required this.totalSize,
  });

  factory Bucket.fromMap(Map<String, dynamic> map) {
    return Bucket(
      $id: map['\$id'].toString(),
      $createdAt: map['\$createdAt'].toString(),
      $updatedAt: map['\$updatedAt'].toString(),
      $permissions: List.from(map['\$permissions'] ?? []),
      fileSecurity: map['fileSecurity'],
      name: map['name'].toString(),
      enabled: map['enabled'],
      maximumFileSize: map['maximumFileSize'],
      allowedFileExtensions: List.from(map['allowedFileExtensions'] ?? []),
      compression: map['compression'].toString(),
      encryption: map['encryption'],
      antivirus: map['antivirus'],
      transformations: map['transformations'],
      totalSize: map['totalSize'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "\$createdAt": $createdAt,
      "\$updatedAt": $updatedAt,
      "\$permissions": $permissions,
      "fileSecurity": fileSecurity,
      "name": name,
      "enabled": enabled,
      "maximumFileSize": maximumFileSize,
      "allowedFileExtensions": allowedFileExtensions,
      "compression": compression,
      "encryption": encryption,
      "antivirus": antivirus,
      "transformations": transformations,
      "totalSize": totalSize,
    };
  }
}
