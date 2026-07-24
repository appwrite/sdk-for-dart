part of '../dart_appwrite.dart';

/// The Organization service allows you to manage organization-level projects.
class Organization extends Service {
  Organization(super.client);

  /// Get the current organization.
  Future<models.Organization> get() async {
    final String apiPath = '/organization';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'accept': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Organization.fromMap(res.data);
  }

  /// Update the current organization's name.
  Future<models.Organization> update({required String name}) async {
    final String apiPath = '/organization';

    final Map<String, dynamic> apiParams = {
      'name': name,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Organization.fromMap(res.data);
  }

  /// Delete the current organization. All projects that belong to the
  /// organization are deleted as well.
  Future delete() async {
    final String apiPath = '/organization';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// List app installations on the organization. Any organization member can
  /// read installations.
  Future<models.AppInstallationList> listInstallations(
      {List<String>? queries, bool? total}) async {
    final String apiPath = '/organization/installations';

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,
      if (total != null) 'total': total,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'accept': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.AppInstallationList.fromMap(res.data);
  }

  /// Install an app on the organization. Only organization members with the
  /// owner role can install apps. The installation is granted the scopes the app
  /// currently requests.
  Future<models.AppInstallation> createInstallation(
      {required String appId, String? authorizationDetails}) async {
    final String apiPath = '/organization/installations';

    final Map<String, dynamic> apiParams = {
      'appId': appId,
      if (authorizationDetails != null)
        'authorizationDetails': authorizationDetails,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.AppInstallation.fromMap(res.data);
  }

  /// Get an app installation on the organization by its unique ID. Any
  /// organization member can read installations.
  Future<models.AppInstallation> getInstallation(
      {required String installationId}) async {
    final String apiPath = '/organization/installations/{installationId}'
        .replaceAll('{installationId}', installationId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'accept': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.AppInstallation.fromMap(res.data);
  }

  /// Update an app installation on the organization. Only organization members
  /// with the owner role can update installations. The installation's granted
  /// scopes are refreshed to the scopes the app currently requests; previously
  /// issued installation access tokens are revoked.
  Future<models.AppInstallation> updateInstallation(
      {required String installationId, String? authorizationDetails}) async {
    final String apiPath = '/organization/installations/{installationId}'
        .replaceAll('{installationId}', installationId);

    final Map<String, dynamic> apiParams = {
      if (authorizationDetails != null)
        'authorizationDetails': authorizationDetails,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.AppInstallation.fromMap(res.data);
  }

  /// Uninstall an app from the organization by its installation ID. Only
  /// organization members with the owner role can remove installations.
  /// Previously issued installation access tokens are revoked.
  Future deleteInstallation({required String installationId}) async {
    final String apiPath = '/organization/installations/{installationId}'
        .replaceAll('{installationId}', installationId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// Get a list of all API keys from the current organization.
  Future<models.KeyList> listKeys({List<String>? queries, bool? total}) async {
    final String apiPath = '/organization/keys';

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,
      if (total != null) 'total': total,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'accept': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.KeyList.fromMap(res.data);
  }

  /// Create a new organization API key.
  Future<models.Key> createKey(
      {required String keyId,
      required String name,
      required List<enums.OrganizationKeyScopes> scopes,
      String? expire}) async {
    final String apiPath = '/organization/keys';

    final Map<String, dynamic> apiParams = {
      'keyId': keyId,
      'name': name,
      'scopes': scopes.map((e) => e.value).toList(),
      if (expire != null) 'expire': expire,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Key.fromMap(res.data);
  }

  /// Get a key by its unique ID. This endpoint returns details about a specific
  /// API key in your organization including its scopes.
  Future<models.Key> getKey({required String keyId}) async {
    final String apiPath =
        '/organization/keys/{keyId}'.replaceAll('{keyId}', keyId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'accept': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Key.fromMap(res.data);
  }

  /// Update a key by its unique ID. Use this endpoint to update the name,
  /// scopes, or expiration time of an API key.
  Future<models.Key> updateKey(
      {required String keyId,
      required String name,
      required List<enums.OrganizationKeyScopes> scopes,
      String? expire}) async {
    final String apiPath =
        '/organization/keys/{keyId}'.replaceAll('{keyId}', keyId);

    final Map<String, dynamic> apiParams = {
      'name': name,
      'scopes': scopes.map((e) => e.value).toList(),
      if (expire != null) 'expire': expire,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Key.fromMap(res.data);
  }

  /// Delete a key by its unique ID. Once deleted, the key can no longer be used
  /// to authenticate API calls.
  Future deleteKey({required String keyId}) async {
    final String apiPath =
        '/organization/keys/{keyId}'.replaceAll('{keyId}', keyId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// Get a list of all memberships from the current organization.
  Future<models.MembershipList> listMemberships(
      {List<String>? queries, String? search, bool? total}) async {
    final String apiPath = '/organization/memberships';

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,
      if (search != null) 'search': search,
      if (total != null) 'total': total,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'accept': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.MembershipList.fromMap(res.data);
  }

  /// Invite a new member to join the current organization. An email with a link
  /// to join the organization will be sent to the new member's email address. If
  /// member doesn't exist in the project it will be automatically created.
  Future<models.Membership> createMembership(
      {required List<String> roles,
      String? email,
      String? userId,
      String? phone,
      String? url,
      String? name}) async {
    final String apiPath = '/organization/memberships';

    final Map<String, dynamic> apiParams = {
      if (email != null) 'email': email,
      if (userId != null) 'userId': userId,
      if (phone != null) 'phone': phone,
      'roles': roles,
      if (url != null) 'url': url,
      if (name != null) 'name': name,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Membership.fromMap(res.data);
  }

  /// Get a membership from the current organization by its unique ID.
  Future<models.Membership> getMembership(
      {required String membershipId}) async {
    final String apiPath = '/organization/memberships/{membershipId}'
        .replaceAll('{membershipId}', membershipId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'accept': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Membership.fromMap(res.data);
  }

  /// Modify the roles of a member in the current organization.
  Future<models.Membership> updateMembership(
      {required String membershipId, required List<String> roles}) async {
    final String apiPath = '/organization/memberships/{membershipId}'
        .replaceAll('{membershipId}', membershipId);

    final Map<String, dynamic> apiParams = {
      'roles': roles,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Membership.fromMap(res.data);
  }

  /// Remove a member from the current organization. The member is removed
  /// whether they accepted the invitation or not; a pending invitation is
  /// revoked.
  Future deleteMembership({required String membershipId}) async {
    final String apiPath = '/organization/memberships/{membershipId}'
        .replaceAll('{membershipId}', membershipId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// Get a list of all projects. You can use the query params to filter your
  /// results.
  Future<models.ProjectList> listProjects(
      {List<String>? queries, String? search, bool? total}) async {
    final String apiPath = '/organization/projects';

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,
      if (search != null) 'search': search,
      if (total != null) 'total': total,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'accept': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ProjectList.fromMap(res.data);
  }

  /// Create a new project.
  Future<models.Project> createProject(
      {required String projectId,
      required String name,
      enums.Region? region}) async {
    final String apiPath = '/organization/projects';

    final Map<String, dynamic> apiParams = {
      'projectId': projectId,
      'name': name,
      if (region != null) 'region': region.value,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Project.fromMap(res.data);
  }

  /// Get a project.
  Future<models.Project> getProject({required String projectId}) async {
    final String apiPath = '/organization/projects/{projectId}'
        .replaceAll('{projectId}', projectId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Project.fromMap(res.data);
  }

  /// Update a project by its unique ID.
  Future<models.Project> updateProject(
      {required String projectId, required String name}) async {
    final String apiPath = '/organization/projects/{projectId}'
        .replaceAll('{projectId}', projectId);

    final Map<String, dynamic> apiParams = {
      'name': name,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(HttpMethod.patch,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Project.fromMap(res.data);
  }

  /// Delete a project by its unique ID.
  Future deleteProject({required String projectId}) async {
    final String apiPath = '/organization/projects/{projectId}'
        .replaceAll('{projectId}', projectId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }
}
