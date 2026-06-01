part of '../dart_appwrite.dart';

class Organization extends Service {
    Organization(super.client);

  /// Get a list of all API keys from the current organization.
    Future<models.KeyList> listKeys({List<String>? queries, bool? total}) async {
        final String apiPath = '/organization/keys';

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,
if (total != null) 'total': total,

      
    };

    final Map<String, String> apiHeaders = {
      
    };

    final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.KeyList.fromMap(res.data);

    }

  /// Create a new organization API key.
    Future<models.Key> createKey({required String keyId, required String name, required List<enums.OrganizationKeyScopes> scopes, String? expire}) async {
        final String apiPath = '/organization/keys';

    final Map<String, dynamic> apiParams = {
      
      'keyId': keyId,
'name': name,
'scopes': scopes.map((e) => e.value).toList(),
'expire': expire,

    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',

    };

    final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Key.fromMap(res.data);

    }

  /// Get a key by its unique ID. This endpoint returns details about a specific
  /// API key in your organization including its scopes.
    Future<models.Key> getKey({required String keyId}) async {
        final String apiPath = '/organization/keys/{keyId}'.replaceAll('{keyId}', keyId);

    final Map<String, dynamic> apiParams = {
      
      
    };

    final Map<String, String> apiHeaders = {
      
    };

    final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Key.fromMap(res.data);

    }

  /// Update a key by its unique ID. Use this endpoint to update the name,
  /// scopes, or expiration time of an API key.
    Future<models.Key> updateKey({required String keyId, required String name, required List<enums.OrganizationKeyScopes> scopes, String? expire}) async {
        final String apiPath = '/organization/keys/{keyId}'.replaceAll('{keyId}', keyId);

    final Map<String, dynamic> apiParams = {
      
      'name': name,
'scopes': scopes.map((e) => e.value).toList(),
'expire': expire,

    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',

    };

    final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Key.fromMap(res.data);

    }

  /// Delete a key by its unique ID. Once deleted, the key can no longer be used
  /// to authenticate API calls.
    Future deleteKey({required String keyId}) async {
        final String apiPath = '/organization/keys/{keyId}'.replaceAll('{keyId}', keyId);

    final Map<String, dynamic> apiParams = {
      
      
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',

    };

    final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;

    }

  /// Get a list of all projects. You can use the query params to filter your
  /// results.
    Future<models.ProjectList> listProjects({List<String>? queries, String? search, bool? total}) async {
        final String apiPath = '/organization/projects';

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,
if (search != null) 'search': search,
if (total != null) 'total': total,

      
    };

    final Map<String, String> apiHeaders = {
      
    };

    final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ProjectList.fromMap(res.data);

    }

  /// Create a new project.
    Future<models.Project> createProject({required String projectId, required String name, enums.Region? region}) async {
        final String apiPath = '/organization/projects';

    final Map<String, dynamic> apiParams = {
      
      'projectId': projectId,
'name': name,
if (region != null) 'region': region.value,

    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',

    };

    final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Project.fromMap(res.data);

    }

  /// Get a project.
    Future<models.Project> getProject({required String projectId}) async {
        final String apiPath = '/organization/projects/{projectId}'.replaceAll('{projectId}', projectId);

    final Map<String, dynamic> apiParams = {
      
      
    };

    final Map<String, String> apiHeaders = {
      
    };

    final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Project.fromMap(res.data);

    }

  /// Update a project by its unique ID.
    Future<models.Project> updateProject({required String projectId, required String name}) async {
        final String apiPath = '/organization/projects/{projectId}'.replaceAll('{projectId}', projectId);

    final Map<String, dynamic> apiParams = {
      
      'name': name,

    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',

    };

    final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Project.fromMap(res.data);

    }

  /// Delete a project by its unique ID.
    Future deleteProject({required String projectId}) async {
        final String apiPath = '/organization/projects/{projectId}'.replaceAll('{projectId}', projectId);

    final Map<String, dynamic> apiParams = {
      
      
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',

    };

    final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;

    }
}
