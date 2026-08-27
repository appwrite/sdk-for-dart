part of '../../models.dart';

/// BackupStorageConfig
class DedicatedDatabaseBackupStorage implements Model {
  /// Storage provider. Possible values: s3 (Amazon S3 or S3-compatible), gcs (Google Cloud Storage), azure (Azure Blob Storage).
  final String provider;

  /// Storage bucket or container name.
  final String bucket;

  /// Storage region.
  final String region;

  /// Object key prefix for backups.
  final String prefix;

  /// Custom endpoint for S3-compatible storage.
  final String endpoint;

  DedicatedDatabaseBackupStorage({
    required this.provider,
    required this.bucket,
    required this.region,
    required this.prefix,
    required this.endpoint,
  });
  factory DedicatedDatabaseBackupStorage.fromMap(
    Map<String, dynamic> map,
  ) {
    return DedicatedDatabaseBackupStorage(
      provider: map['provider'].toString(),
      bucket: map['bucket'].toString(),
      region: map['region'].toString(),
      prefix: map['prefix'].toString(),
      endpoint: map['endpoint'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "provider": provider,
      "bucket": bucket,
      "region": region,
      "prefix": prefix,
      "endpoint": endpoint,
    };
  }
}
