part of '../dart_appwrite.dart';

/// The Project service allows you to manage all the projects in your Appwrite
/// server.
class Project extends Service {
  Project(super.client);

  /// Get a list of all project environment variables.
  Future<models.VariableList> listVariables(
      {List<String>? queries, bool? total}) async {
    final String apiPath = '/project/variables';

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,
      if (total != null) 'total': total,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.VariableList.fromMap(res.data);
  }

  /// Create a new project environment variable. These variables can be accessed
  /// by all functions and sites in the project.
  Future<models.Variable> createVariable(
      {required String variableId,
      required String key,
      required String value,
      bool? secret}) async {
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

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Variable.fromMap(res.data);
  }

  /// Get a variable by its unique ID.
  Future<models.Variable> getVariable({required String variableId}) async {
    final String apiPath = '/project/variables/{variableId}'
        .replaceAll('{variableId}', variableId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Variable.fromMap(res.data);
  }

  /// Update variable by its unique ID.
  Future<models.Variable> updateVariable(
      {required String variableId,
      String? key,
      String? value,
      bool? secret}) async {
    final String apiPath = '/project/variables/{variableId}'
        .replaceAll('{variableId}', variableId);

    final Map<String, dynamic> apiParams = {
      'key': key,
      'value': value,
      'secret': secret,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Variable.fromMap(res.data);
  }

  /// Delete a variable by its unique ID.
  Future deleteVariable({required String variableId}) async {
    final String apiPath = '/project/variables/{variableId}'
        .replaceAll('{variableId}', variableId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }
}
