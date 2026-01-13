part of '../../models.dart';

/// Archive
class BackupArchive implements Model {
  /// Archive ID.
  final String $id;

  /// Archive creation time in ISO 8601 format.
  final String $createdAt;

  /// Archive update date in ISO 8601 format.
  final String $updatedAt;

  /// Archive policy ID.
  final String policyId;

  /// Archive size in bytes.
  final int size;

  /// The status of the archive creation. Possible values: pending, processing, uploading, completed, failed.
  final String status;

  /// The backup start time.
  final String startedAt;

  /// Migration ID.
  final String migrationId;

  /// The services that are backed up by this archive.
  final List<String> services;

  /// The resources that are backed up by this archive.
  final List<String> resources;

  /// The resource ID to backup. Set only if this archive should backup a single resource.
  final String? resourceId;

  /// The resource type to backup. Set only if this archive should backup a single resource.
  final String? resourceType;

  BackupArchive({
    required this.$id,
    required this.$createdAt,
    required this.$updatedAt,
    required this.policyId,
    required this.size,
    required this.status,
    required this.startedAt,
    required this.migrationId,
    required this.services,
    required this.resources,
    this.resourceId,
    this.resourceType,
  });

  factory BackupArchive.fromMap(Map<String, dynamic> map) {
    return BackupArchive(
      $id: map['\$id'].toString(),
      $createdAt: map['\$createdAt'].toString(),
      $updatedAt: map['\$updatedAt'].toString(),
      policyId: map['policyId'].toString(),
      size: map['size'],
      status: map['status'].toString(),
      startedAt: map['startedAt'].toString(),
      migrationId: map['migrationId'].toString(),
      services: List.from(map['services'] ?? []),
      resources: List.from(map['resources'] ?? []),
      resourceId: map['resourceId']?.toString(),
      resourceType: map['resourceType']?.toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "\$createdAt": $createdAt,
      "\$updatedAt": $updatedAt,
      "policyId": policyId,
      "size": size,
      "status": status,
      "startedAt": startedAt,
      "migrationId": migrationId,
      "services": services,
      "resources": resources,
      "resourceId": resourceId,
      "resourceType": resourceType,
    };
  }
}
