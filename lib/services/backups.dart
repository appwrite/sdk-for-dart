part of '../dart_appwrite.dart';

class Backups extends Service {
    Backups(super.client);

  /// List all archives for a project.
    Future<models.BackupArchiveList> listArchives({List<String>? queries}) async {
        final String apiPath = '/backups/archives';

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,

      
    };

    final Map<String, String> apiHeaders = {
      
    };

    final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.BackupArchiveList.fromMap(res.data);

    }

  /// Create a new archive asynchronously for a project.
    Future<models.BackupArchive> createArchive({required List<String> services, String? resourceId}) async {
        final String apiPath = '/backups/archives';

    final Map<String, dynamic> apiParams = {
      
      'services': services,
'resourceId': resourceId,

    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',

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
      'content-type': 'application/json',

    };

    final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

    return  res.data;

    }

  /// List all policies for a project.
    Future<models.BackupPolicyList> listPolicies({List<String>? queries}) async {
        final String apiPath = '/backups/policies';

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,

      
    };

    final Map<String, String> apiHeaders = {
      
    };

    final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.BackupPolicyList.fromMap(res.data);

    }

  /// Create a new backup policy.
    Future<models.BackupPolicy> createPolicy({required String policyId, required List<String> services, required int retention, required String schedule, String? name, String? resourceId, bool? enabled}) async {
        final String apiPath = '/backups/policies';

    final Map<String, dynamic> apiParams = {
      
      'policyId': policyId,
if (name != null) 'name': name,
'services': services,
'resourceId': resourceId,
if (enabled != null) 'enabled': enabled,
'retention': retention,
'schedule': schedule,

    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',

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
      
    };

    final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.BackupPolicy.fromMap(res.data);

    }

  /// Update an existing policy using it's ID.
    Future<models.BackupPolicy> updatePolicy({required String policyId, String? name, int? retention, String? schedule, bool? enabled}) async {
        final String apiPath = '/backups/policies/{policyId}'.replaceAll('{policyId}', policyId);

    final Map<String, dynamic> apiParams = {
      
      'name': name,
'retention': retention,
if (schedule != null) 'schedule': schedule,
'enabled': enabled,

    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',

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
      'content-type': 'application/json',

    };

    final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

    return  res.data;

    }

  /// Create and trigger a new restoration for a backup on a project.
    Future<models.BackupRestoration> createRestoration({required String archiveId, required List<String> services, String? newResourceId, String? newResourceName}) async {
        final String apiPath = '/backups/restoration';

    final Map<String, dynamic> apiParams = {
      
      'archiveId': archiveId,
'services': services,
if (newResourceId != null) 'newResourceId': newResourceId,
if (newResourceName != null) 'newResourceName': newResourceName,

    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',

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
      
    };

    final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.BackupRestoration.fromMap(res.data);

    }
}