part of '../../models.dart';

/// Migration
class Migration implements Model {
  /// Migration ID.
  final String $id;

  /// Migration creation date in ISO 8601 format.
  final String $createdAt;

  /// Variable creation date in ISO 8601 format.
  final String $updatedAt;

  /// Migration status ( pending, processing, failed, completed )
  final String status;

  /// Migration stage ( init, processing, source-check, destination-check, migrating, finished )
  final String stage;

  /// A string containing the type of source of the migration.
  final String source;

  /// A string containing the type of destination of the migration.
  final String destination;

  /// Resources to migrate.
  final List<String> resources;

  /// ID of the resource being migrated.
  final String resourceId;

  /// Internal ID of the resource being migrated.
  final String resourceInternalId;

  /// Type of the resource being migrated.
  final String resourceType;

  /// ID of the parent resource that contains the migrated resource.
  final String parentResourceId;

  /// Internal ID of the parent resource that contains the migrated resource.
  final String parentResourceInternalId;

  /// Type of the parent resource that contains the migrated resource.
  final String parentResourceType;

  /// ID of the destination resource created or overwritten by the migration.
  final String destinationResourceId;

  /// Internal ID of the destination resource created or overwritten by the migration.
  final String destinationResourceInternalId;

  /// Type of the destination resource created or overwritten by the migration.
  final String destinationResourceType;

  /// A group of counters that represent the total progress of the migration.
  final Map<String, dynamic> statusCounters;

  /// An array of objects containing the report data of the resources that were migrated.
  final List<Map> resourceData;

  /// All errors that occurred during the migration process.
  final List<String> errors;

  /// Migration options used during the migration process.
  final Map<String, dynamic> options;

  Migration({
    required this.$id,
    required this.$createdAt,
    required this.$updatedAt,
    required this.status,
    required this.stage,
    required this.source,
    required this.destination,
    required this.resources,
    required this.resourceId,
    required this.resourceInternalId,
    required this.resourceType,
    required this.parentResourceId,
    required this.parentResourceInternalId,
    required this.parentResourceType,
    required this.destinationResourceId,
    required this.destinationResourceInternalId,
    required this.destinationResourceType,
    required this.statusCounters,
    required this.resourceData,
    required this.errors,
    required this.options,
  });
  factory Migration.fromMap(
    Map<String, dynamic> map,
  ) {
    map = {
      '\$id': "",
      '\$createdAt': "",
      '\$updatedAt': "",
      'status': "",
      'stage': "",
      'source': "",
      'destination': "Appwrite",
      'resources': [],
      'resourceId': "",
      'resourceInternalId': "",
      'resourceType': "",
      'parentResourceId': "",
      'parentResourceInternalId': "",
      'parentResourceType': "",
      'destinationResourceId': "",
      'destinationResourceInternalId': "",
      'destinationResourceType': "",
      'statusCounters': <String, dynamic>{},
      'resourceData': [],
      'errors': [],
      'options': <String, dynamic>{},
      ...map,
    };

    return Migration(
      $id: map['\$id'].toString(),
      $createdAt: map['\$createdAt'].toString(),
      $updatedAt: map['\$updatedAt'].toString(),
      status: map['status'].toString(),
      stage: map['stage'].toString(),
      source: map['source'].toString(),
      destination: map['destination'].toString(),
      resources: List.from(map['resources'] ?? []),
      resourceId: map['resourceId'].toString(),
      resourceInternalId: map['resourceInternalId'].toString(),
      resourceType: map['resourceType'].toString(),
      parentResourceId: map['parentResourceId'].toString(),
      parentResourceInternalId: map['parentResourceInternalId'].toString(),
      parentResourceType: map['parentResourceType'].toString(),
      destinationResourceId: map['destinationResourceId'].toString(),
      destinationResourceInternalId:
          map['destinationResourceInternalId'].toString(),
      destinationResourceType: map['destinationResourceType'].toString(),
      statusCounters: map['statusCounters'],
      resourceData: List.from(map['resourceData'] ?? []),
      errors: List.from(map['errors'] ?? []),
      options: map['options'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "\$createdAt": $createdAt,
      "\$updatedAt": $updatedAt,
      "status": status,
      "stage": stage,
      "source": source,
      "destination": destination,
      "resources": resources,
      "resourceId": resourceId,
      "resourceInternalId": resourceInternalId,
      "resourceType": resourceType,
      "parentResourceId": parentResourceId,
      "parentResourceInternalId": parentResourceInternalId,
      "parentResourceType": parentResourceType,
      "destinationResourceId": destinationResourceId,
      "destinationResourceInternalId": destinationResourceInternalId,
      "destinationResourceType": destinationResourceType,
      "statusCounters": statusCounters,
      "resourceData": resourceData,
      "errors": errors,
      "options": options,
    };
  }
}
