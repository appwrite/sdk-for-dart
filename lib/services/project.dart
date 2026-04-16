part of '../dart_appwrite.dart';

  /// The Project service allows you to manage all the projects in your Appwrite
  /// server.
class Project extends Service {
    Project(super.client);

  /// Get a list of all API keys from the current project.
    Future<models.KeyList> listKeys({List<String>? queries, bool? total}) async {
        final String apiPath = '/project/keys';

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,
if (total != null) 'total': total,

      
    };

    final Map<String, String> apiHeaders = {
      
    };

    final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.KeyList.fromMap(res.data);

    }

  /// Create a new API key. It's recommended to have multiple API keys with
  /// strict scopes for separate functions within your project.
    Future<models.Key> createKey({required String keyId, required String name, required List<enums.Scopes> scopes, String? expire}) async {
        final String apiPath = '/project/keys';

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

  /// Get a key by its unique ID. 
    Future<models.Key> getKey({required String keyId}) async {
        final String apiPath = '/project/keys/{keyId}'.replaceAll('{keyId}', keyId);

    final Map<String, dynamic> apiParams = {
      
      
    };

    final Map<String, String> apiHeaders = {
      
    };

    final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Key.fromMap(res.data);

    }

  /// Update a key by its unique ID. Use this endpoint to update the name,
  /// scopes, or expiration time of an API key.
    Future<models.Key> updateKey({required String keyId, required String name, required List<enums.Scopes> scopes, String? expire}) async {
        final String apiPath = '/project/keys/{keyId}'.replaceAll('{keyId}', keyId);

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
        final String apiPath = '/project/keys/{keyId}'.replaceAll('{keyId}', keyId);

    final Map<String, dynamic> apiParams = {
      
      
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',

    };

    final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;

    }

  /// Update the project labels. Labels can be used to easily filter projects in
  /// an organization.
    Future<models.Project> updateLabels({required List<String> labels}) async {
        final String apiPath = '/project/labels';

    final Map<String, dynamic> apiParams = {
      
      'labels': labels,

    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',

    };

    final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Project.fromMap(res.data);

    }

  /// Get a list of all platforms in the project. This endpoint returns an array
  /// of all platforms and their configurations.
    Future<models.PlatformList> listPlatforms({List<String>? queries, bool? total}) async {
        final String apiPath = '/project/platforms';

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,
if (total != null) 'total': total,

      
    };

    final Map<String, String> apiHeaders = {
      
    };

    final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.PlatformList.fromMap(res.data);

    }

  /// Create a new Android platform for your project. Use this endpoint to
  /// register a new Android platform where your users will run your application
  /// which will interact with the Appwrite API.
    Future<models.PlatformAndroid> createAndroidPlatform({required String platformId, required String name, required String applicationId}) async {
        final String apiPath = '/project/platforms/android';

    final Map<String, dynamic> apiParams = {
      
      'platformId': platformId,
'name': name,
'applicationId': applicationId,

    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',

    };

    final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.PlatformAndroid.fromMap(res.data);

    }

  /// Update an Android platform by its unique ID. Use this endpoint to update
  /// the platform's name or application ID.
    Future<models.PlatformAndroid> updateAndroidPlatform({required String platformId, required String name, required String applicationId}) async {
        final String apiPath = '/project/platforms/android/{platformId}'.replaceAll('{platformId}', platformId);

    final Map<String, dynamic> apiParams = {
      
      'name': name,
'applicationId': applicationId,

    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',

    };

    final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.PlatformAndroid.fromMap(res.data);

    }

  /// Create a new Apple platform for your project. Use this endpoint to register
  /// a new Apple platform where your users will run your application which will
  /// interact with the Appwrite API.
    Future<models.PlatformApple> createApplePlatform({required String platformId, required String name, required String bundleIdentifier}) async {
        final String apiPath = '/project/platforms/apple';

    final Map<String, dynamic> apiParams = {
      
      'platformId': platformId,
'name': name,
'bundleIdentifier': bundleIdentifier,

    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',

    };

    final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.PlatformApple.fromMap(res.data);

    }

  /// Update an Apple platform by its unique ID. Use this endpoint to update the
  /// platform's name or bundle identifier.
    Future<models.PlatformApple> updateApplePlatform({required String platformId, required String name, required String bundleIdentifier}) async {
        final String apiPath = '/project/platforms/apple/{platformId}'.replaceAll('{platformId}', platformId);

    final Map<String, dynamic> apiParams = {
      
      'name': name,
'bundleIdentifier': bundleIdentifier,

    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',

    };

    final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.PlatformApple.fromMap(res.data);

    }

  /// Create a new Linux platform for your project. Use this endpoint to register
  /// a new Linux platform where your users will run your application which will
  /// interact with the Appwrite API.
    Future<models.PlatformLinux> createLinuxPlatform({required String platformId, required String name, required String packageName}) async {
        final String apiPath = '/project/platforms/linux';

    final Map<String, dynamic> apiParams = {
      
      'platformId': platformId,
'name': name,
'packageName': packageName,

    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',

    };

    final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.PlatformLinux.fromMap(res.data);

    }

  /// Update a Linux platform by its unique ID. Use this endpoint to update the
  /// platform's name or package name.
    Future<models.PlatformLinux> updateLinuxPlatform({required String platformId, required String name, required String packageName}) async {
        final String apiPath = '/project/platforms/linux/{platformId}'.replaceAll('{platformId}', platformId);

    final Map<String, dynamic> apiParams = {
      
      'name': name,
'packageName': packageName,

    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',

    };

    final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.PlatformLinux.fromMap(res.data);

    }

  /// Create a new web platform for your project. Use this endpoint to register a
  /// new platform where your users will run your application which will interact
  /// with the Appwrite API.
    Future<models.PlatformWeb> createWebPlatform({required String platformId, required String name, required String hostname}) async {
        final String apiPath = '/project/platforms/web';

    final Map<String, dynamic> apiParams = {
      
      'platformId': platformId,
'name': name,
'hostname': hostname,

    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',

    };

    final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.PlatformWeb.fromMap(res.data);

    }

  /// Update a web platform by its unique ID. Use this endpoint to update the
  /// platform's name or hostname.
    Future<models.PlatformWeb> updateWebPlatform({required String platformId, required String name, required String hostname}) async {
        final String apiPath = '/project/platforms/web/{platformId}'.replaceAll('{platformId}', platformId);

    final Map<String, dynamic> apiParams = {
      
      'name': name,
'hostname': hostname,

    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',

    };

    final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.PlatformWeb.fromMap(res.data);

    }

  /// Create a new Windows platform for your project. Use this endpoint to
  /// register a new Windows platform where your users will run your application
  /// which will interact with the Appwrite API.
    Future<models.PlatformWindows> createWindowsPlatform({required String platformId, required String name, required String packageIdentifierName}) async {
        final String apiPath = '/project/platforms/windows';

    final Map<String, dynamic> apiParams = {
      
      'platformId': platformId,
'name': name,
'packageIdentifierName': packageIdentifierName,

    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',

    };

    final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.PlatformWindows.fromMap(res.data);

    }

  /// Update a Windows platform by its unique ID. Use this endpoint to update the
  /// platform's name or package identifier name.
    Future<models.PlatformWindows> updateWindowsPlatform({required String platformId, required String name, required String packageIdentifierName}) async {
        final String apiPath = '/project/platforms/windows/{platformId}'.replaceAll('{platformId}', platformId);

    final Map<String, dynamic> apiParams = {
      
      'name': name,
'packageIdentifierName': packageIdentifierName,

    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',

    };

    final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.PlatformWindows.fromMap(res.data);

    }

  /// Get a platform by its unique ID. This endpoint returns the platform's
  /// details, including its name, type, and key configurations.
    Future<models.Model> getPlatform({required String platformId}) async {
        final String apiPath = '/project/platforms/{platformId}'.replaceAll('{platformId}', platformId);

    final Map<String, dynamic> apiParams = {
      
      
    };

    final Map<String, String> apiHeaders = {
      
    };

    final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

    return () {
      if (res.data is! Map<String, dynamic>) {
        throw StateError('Unable to match response to any expected response model.');
      }

      final response = res.data as Map<String, dynamic>;
      if (response['type'] == 'web') {
        return models.PlatformWeb.fromMap(response);
      }
      if (response['type'] == 'apple') {
        return models.PlatformApple.fromMap(response);
      }
      if (response['type'] == 'android') {
        return models.PlatformAndroid.fromMap(response);
      }
      if (response['type'] == 'windows') {
        return models.PlatformWindows.fromMap(response);
      }
      if (response['type'] == 'linux') {
        return models.PlatformLinux.fromMap(response);
      }

      throw StateError('Unable to match response to any expected response model.');
    }();

    }

  /// Delete a platform by its unique ID. This endpoint removes the platform and
  /// all its configurations from the project.
    Future deletePlatform({required String platformId}) async {
        final String apiPath = '/project/platforms/{platformId}'.replaceAll('{platformId}', platformId);

    final Map<String, dynamic> apiParams = {
      
      
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',

    };

    final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;

    }

  /// Update the status of a specific protocol. Use this endpoint to enable or
  /// disable a protocol in your project. 
    Future<models.Project> updateProtocolStatus({required enums.ProtocolId protocolId, required bool enabled}) async {
        final String apiPath = '/project/protocols/{protocolId}/status'.replaceAll('{protocolId}', protocolId.value);

    final Map<String, dynamic> apiParams = {
      
      'enabled': enabled,

    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',

    };

    final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Project.fromMap(res.data);

    }

  /// Update the status of a specific service. Use this endpoint to enable or
  /// disable a service in your project. 
    Future<models.Project> updateServiceStatus({required enums.ServiceId serviceId, required bool enabled}) async {
        final String apiPath = '/project/services/{serviceId}/status'.replaceAll('{serviceId}', serviceId.value);

    final Map<String, dynamic> apiParams = {
      
      'enabled': enabled,

    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',

    };

    final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Project.fromMap(res.data);

    }

  /// Get a list of all project environment variables.
    Future<models.VariableList> listVariables({List<String>? queries, bool? total}) async {
        final String apiPath = '/project/variables';

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,
if (total != null) 'total': total,

      
    };

    final Map<String, String> apiHeaders = {
      
    };

    final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.VariableList.fromMap(res.data);

    }

  /// Create a new project environment variable. These variables can be accessed
  /// by all functions and sites in the project.
    Future<models.Variable> createVariable({required String variableId, required String key, required String value, bool? secret}) async {
        final String apiPath = '/project/variables';

    final Map<String, dynamic> apiParams = {
      
      'variableId': variableId,
'key': key,
'value': value,
if (secret != null) 'secret': secret,

    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',

    };

    final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Variable.fromMap(res.data);

    }

  /// Get a variable by its unique ID. 
    Future<models.Variable> getVariable({required String variableId}) async {
        final String apiPath = '/project/variables/{variableId}'.replaceAll('{variableId}', variableId);

    final Map<String, dynamic> apiParams = {
      
      
    };

    final Map<String, String> apiHeaders = {
      
    };

    final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Variable.fromMap(res.data);

    }

  /// Update variable by its unique ID.
    Future<models.Variable> updateVariable({required String variableId, String? key, String? value, bool? secret}) async {
        final String apiPath = '/project/variables/{variableId}'.replaceAll('{variableId}', variableId);

    final Map<String, dynamic> apiParams = {
      
      'key': key,
'value': value,
'secret': secret,

    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',

    };

    final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Variable.fromMap(res.data);

    }

  /// Delete a variable by its unique ID. 
    Future deleteVariable({required String variableId}) async {
        final String apiPath = '/project/variables/{variableId}'.replaceAll('{variableId}', variableId);

    final Map<String, dynamic> apiParams = {
      
      
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',

    };

    final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;

    }
}
