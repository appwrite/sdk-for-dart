part of '../../models.dart';

/// Restoration
class BackupRestoration implements Model {
  /// Restoration ID.
  final String $id;

  /// Restoration creation time in ISO 8601 format.
  final String $createdAt;

  /// Restoration update date in ISO 8601 format.
  final String $updatedAt;

  /// Backup archive ID.
  final String archiveId;

  /// Backup policy ID.
  final String policyId;

  /// The status of the restoration. Possible values: pending, downloading, processing, completed, failed.
  final String status;

  /// The restoration start time. Null until the restoration starts.
  final String? startedAt;

  /// Migration ID.
  final String migrationId;

  /// The services that are backed up by this policy.
  final List<String> services;

  /// The resources that are backed up by this policy.
  final List<String> resources;

  /// Restoration options as a key-value object.
  final Map<String, dynamic> options;

  BackupRestoration({
    required this.$id,
    required this.$createdAt,
    required this.$updatedAt,
    required this.archiveId,
    required this.policyId,
    required this.status,
    this.startedAt,
    required this.migrationId,
    required this.services,
    required this.resources,
    required this.options,
  });
  factory BackupRestoration.fromMap(
    Map<String, dynamic> map,
  ) {
    map = {
      '\$id': "",
      '\$createdAt': "",
      '\$updatedAt': "",
      'archiveId': "",
      'policyId': "",
      'status': "",
      'migrationId': "",
      'options': <String, dynamic>{},
      ...map,
    };

    return BackupRestoration(
      $id: map['\$id'].toString(),
      $createdAt: map['\$createdAt'].toString(),
      $updatedAt: map['\$updatedAt'].toString(),
      archiveId: map['archiveId'].toString(),
      policyId: map['policyId'].toString(),
      status: map['status'].toString(),
      startedAt: map['startedAt']?.toString(),
      migrationId: map['migrationId'].toString(),
      services: List.from(map['services'] ?? []),
      resources: List.from(map['resources'] ?? []),
      options: map['options'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "\$createdAt": $createdAt,
      "\$updatedAt": $updatedAt,
      "archiveId": archiveId,
      "policyId": policyId,
      "status": status,
      "startedAt": startedAt,
      "migrationId": migrationId,
      "services": services,
      "resources": resources,
      "options": options,
    };
  }
}
