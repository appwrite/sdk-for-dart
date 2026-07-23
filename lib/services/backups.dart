part of '../dart_appwrite.dart';

  /// The Backups service allows you to manage backup policies, archives, and
  /// restorations for your project.
class Backups extends Service {
    Backups(super.client);

  /// List all archives for a project.
    Future<models.BackupArchiveList> listArchives({List<String>? queries}) async {
        final String apiPath = '/backups/archives';

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,

      
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'accept': 'application/json',

    };

    final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.BackupArchiveList.fromMap(res.data);

    }

  /// Create a new archive asynchronously for a project.
    Future<models.BackupArchive> createArchive({required List<enums.BackupServices> services, String? resourceId}) async {
        final String apiPath = '/backups/archives';

    final Map<String, dynamic> apiParams = {
      
      'services': services.map((e) => e.value).toList(),
if (resourceId != null) 'resourceId': resourceId,

    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
'accept': 'application/json',

    };

    final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.BackupArchive.fromMap(res.data);

    }

  /// Get a backup archive using it's ID.
    Future<models.BackupArchive> getArchive({required String archiveId}) async {
        final String apiPath = '/backups/archives/{archiveId}'.replaceAll('{archiveId}', archiveId);

    final Map<String, dynamic> apiParams = {
      
      
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'accept': 'application/json',

    };

    final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.BackupArchive.fromMap(res.data);

    }

  /// Delete an existing archive for a project.
    Future deleteArchive({required String archiveId}) async {
        final String apiPath = '/backups/archives/{archiveId}'.replaceAll('{archiveId}', archiveId);

    final Map<String, dynamic> apiParams = {
      
      
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
'accept': 'application/json',

    };

    final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;

    }

  /// List all policies for a project.
    Future<models.BackupPolicyList> listPolicies({List<String>? queries}) async {
        final String apiPath = '/backups/policies';

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,

      
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'accept': 'application/json',

    };

    final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.BackupPolicyList.fromMap(res.data);

    }

  /// Create a new backup policy.
    Future<models.BackupPolicy> createPolicy({required String policyId, required List<enums.BackupServices> services, required int retention, required String schedule, String? name, String? resourceId, bool? enabled}) async {
        final String apiPath = '/backups/policies';

    final Map<String, dynamic> apiParams = {
      
      'policyId': policyId,
if (name != null) 'name': name,
'services': services.map((e) => e.value).toList(),
if (resourceId != null) 'resourceId': resourceId,
if (enabled != null) 'enabled': enabled,
'retention': retention,
'schedule': schedule,

    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
'accept': 'application/json',

    };

    final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.BackupPolicy.fromMap(res.data);

    }

  /// Get a backup policy using it's ID.
    Future<models.BackupPolicy> getPolicy({required String policyId}) async {
        final String apiPath = '/backups/policies/{policyId}'.replaceAll('{policyId}', policyId);

    final Map<String, dynamic> apiParams = {
      
      
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'accept': 'application/json',

    };

    final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.BackupPolicy.fromMap(res.data);

    }

  /// Update an existing policy using it's ID.
    Future<models.BackupPolicy> updatePolicy({required String policyId, String? name, int? retention, String? schedule, bool? enabled}) async {
        final String apiPath = '/backups/policies/{policyId}'.replaceAll('{policyId}', policyId);

    final Map<String, dynamic> apiParams = {
      
      if (name != null) 'name': name,
if (retention != null) 'retention': retention,
if (schedule != null) 'schedule': schedule,
if (enabled != null) 'enabled': enabled,

    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
'accept': 'application/json',

    };

    final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.BackupPolicy.fromMap(res.data);

    }

  /// Delete a policy using it's ID.
    Future deletePolicy({required String policyId}) async {
        final String apiPath = '/backups/policies/{policyId}'.replaceAll('{policyId}', policyId);

    final Map<String, dynamic> apiParams = {
      
      
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
'accept': 'application/json',

    };

    final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;

    }

  /// Create and trigger a new restoration for a backup on a project.
  /// 
  /// For a backup of one database, the restoration resolves its destination
  /// before it is queued. Pass `newResourceId` to restore into that database ID,
  /// including the archived database ID to overwrite it. When `newResourceId` is
  /// omitted, a new database ID is generated and returned in `options`.
  /// 
  /// The restoration migration records the archived database in `resourceId` and
  /// `resourceType`, and the resolved database in `destinationResourceId` and
  /// `destinationResourceType`. Database types are stored canonically as
  /// `database`, `documentsdb`, or `vectorsdb`. Project-wide restorations leave
  /// these fields empty because they do not have a single source or destination
  /// database.
  /// 
  /// To list every migration related to one database, use its canonical type in
  /// a nested `OR(AND(...), AND(...), AND(...))` across the root, parent, and
  /// destination relation pairs: `(resourceType, resourceId)`,
  /// `(parentResourceType, parentResourceId)`, and `(destinationResourceType,
  /// destinationResourceId)`. Legacy and TablesDB databases use `database`; the
  /// operational `resourceType` of a table migration is not rewritten to
  /// `tablesdb`.
  /// 
  /// When restoring a DocumentsDB or VectorsDB database to a new resource from a
  /// dedicated source, the restore provisions a fresh dedicated backing database
  /// at the source database's own specification.
  /// 
    Future<models.BackupRestoration> createRestoration({required String archiveId, required List<enums.BackupServices> services, String? newResourceId, String? newResourceName}) async {
        final String apiPath = '/backups/restoration';

    final Map<String, dynamic> apiParams = {
      
      'archiveId': archiveId,
'services': services.map((e) => e.value).toList(),
if (newResourceId != null) 'newResourceId': newResourceId,
if (newResourceName != null) 'newResourceName': newResourceName,

    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
'accept': 'application/json',

    };

    final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.BackupRestoration.fromMap(res.data);

    }

  /// List all backup restorations for a project.
    Future<models.BackupRestorationList> listRestorations({List<String>? queries}) async {
        final String apiPath = '/backups/restorations';

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,

      
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'accept': 'application/json',

    };

    final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.BackupRestorationList.fromMap(res.data);

    }

  /// Get the current status of a backup restoration.
    Future<models.BackupRestoration> getRestoration({required String restorationId}) async {
        final String apiPath = '/backups/restorations/{restorationId}'.replaceAll('{restorationId}', restorationId);

    final Map<String, dynamic> apiParams = {
      
      
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'accept': 'application/json',

    };

    final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.BackupRestoration.fromMap(res.data);

    }
}
