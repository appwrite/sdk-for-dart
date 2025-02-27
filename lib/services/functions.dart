part of '../dart_appwrite.dart';

/// The Functions Service allows you view, create and manage your Cloud
/// Functions.
class Functions extends Service {
    Functions(super.client);

    /// Get a list of all the project's functions. You can use the query params to
    /// filter your results.
    Future<models.FunctionList> list({List<String>? queries, String? search}) async {
        final String apiPath = '/functions';

        final Map<String, dynamic> apiParams = {
            'queries': queries,
'search': search,

            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.FunctionList.fromMap(res.data);

    }

    /// Create a new function. You can pass a list of
    /// [permissions](https://appwrite.io/docs/permissions) to allow different
    /// project users or team with access to execute the function using the client
    /// API.
    Future<models.Func> create({required String functionId, required String name, required enums.Runtime runtime, List<String>? execute, List<String>? events, String? schedule, int? timeout, bool? enabled, bool? logging, String? entrypoint, String? commands, List<String>? scopes, String? installationId, String? providerRepositoryId, String? providerBranch, bool? providerSilentMode, String? providerRootDirectory, String? templateRepository, String? templateOwner, String? templateRootDirectory, String? templateVersion, String? specification}) async {
        final String apiPath = '/functions';

        final Map<String, dynamic> apiParams = {
            
            'functionId': functionId,
'name': name,
'runtime': runtime.value,
'execute': execute,
'events': events,
'schedule': schedule,
'timeout': timeout,
'enabled': enabled,
'logging': logging,
'entrypoint': entrypoint,
'commands': commands,
'scopes': scopes,
'installationId': installationId,
'providerRepositoryId': providerRepositoryId,
'providerBranch': providerBranch,
'providerSilentMode': providerSilentMode,
'providerRootDirectory': providerRootDirectory,
'templateRepository': templateRepository,
'templateOwner': templateOwner,
'templateRootDirectory': templateRootDirectory,
'templateVersion': templateVersion,
'specification': specification,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Func.fromMap(res.data);

    }

    /// Get a list of all runtimes that are currently active on your instance.
    Future<models.RuntimeList> listRuntimes() async {
        final String apiPath = '/functions/runtimes';

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.RuntimeList.fromMap(res.data);

    }

    /// List allowed function specifications for this instance.
    /// 
    Future<models.SpecificationList> listSpecifications() async {
        final String apiPath = '/functions/specifications';

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.SpecificationList.fromMap(res.data);

    }

    /// Get a function by its unique ID.
    Future<models.Func> get({required String functionId}) async {
        final String apiPath = '/functions/{functionId}'.replaceAll('{functionId}', functionId);

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Func.fromMap(res.data);

    }

    /// Update function by its unique ID.
    Future<models.Func> update({required String functionId, required String name, enums.Runtime? runtime, List<String>? execute, List<String>? events, String? schedule, int? timeout, bool? enabled, bool? logging, String? entrypoint, String? commands, List<String>? scopes, String? installationId, String? providerRepositoryId, String? providerBranch, bool? providerSilentMode, String? providerRootDirectory, String? specification}) async {
        final String apiPath = '/functions/{functionId}'.replaceAll('{functionId}', functionId);

        final Map<String, dynamic> apiParams = {
            
            'name': name,
'runtime': runtime?.value,
'execute': execute,
'events': events,
'schedule': schedule,
'timeout': timeout,
'enabled': enabled,
'logging': logging,
'entrypoint': entrypoint,
'commands': commands,
'scopes': scopes,
'installationId': installationId,
'providerRepositoryId': providerRepositoryId,
'providerBranch': providerBranch,
'providerSilentMode': providerSilentMode,
'providerRootDirectory': providerRootDirectory,
'specification': specification,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Func.fromMap(res.data);

    }

    /// Delete a function by its unique ID.
    Future delete({required String functionId}) async {
        final String apiPath = '/functions/{functionId}'.replaceAll('{functionId}', functionId);

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

    }

    /// Get a list of all the project's code deployments. You can use the query
    /// params to filter your results.
    Future<models.DeploymentList> listDeployments({required String functionId, List<String>? queries, String? search}) async {
        final String apiPath = '/functions/{functionId}/deployments'.replaceAll('{functionId}', functionId);

        final Map<String, dynamic> apiParams = {
            'queries': queries,
'search': search,

            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.DeploymentList.fromMap(res.data);

    }

    /// Create a new function code deployment. Use this endpoint to upload a new
    /// version of your code function. To execute your newly uploaded code, you'll
    /// need to update the function's deployment to use your new deployment UID.
    /// 
    /// This endpoint accepts a tar.gz file compressed with your code. Make sure to
    /// include any dependencies your code has within the compressed file. You can
    /// learn more about code packaging in the [Appwrite Cloud Functions
    /// tutorial](https://appwrite.io/docs/functions).
    /// 
    /// Use the "command" param to set the entrypoint used to execute your code.
    Future<models.Deployment> createDeployment({required String functionId, required InputFile code, required bool activate, String? entrypoint, String? commands, Function(UploadProgress)? onProgress}) async {
        final String apiPath = '/functions/{functionId}/deployments'.replaceAll('{functionId}', functionId);

        final Map<String, dynamic> apiParams = {
            
            'entrypoint': entrypoint,
'commands': commands,
'code': code,
'activate': activate,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'multipart/form-data',

        };

        String idParamName = '';
        final paramName = 'code';
        final res = await client.chunkedUpload(
            path: apiPath,
            params: apiParams,
            paramName: paramName,
            idParamName: idParamName,
            headers: apiHeaders,
            onProgress: onProgress,
        );

        return models.Deployment.fromMap(res.data);

    }

    /// Get a code deployment by its unique ID.
    Future<models.Deployment> getDeployment({required String functionId, required String deploymentId}) async {
        final String apiPath = '/functions/{functionId}/deployments/{deploymentId}'.replaceAll('{functionId}', functionId).replaceAll('{deploymentId}', deploymentId);

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Deployment.fromMap(res.data);

    }

    /// Update the function code deployment ID using the unique function ID. Use
    /// this endpoint to switch the code deployment that should be executed by the
    /// execution endpoint.
    Future<models.Func> updateDeployment({required String functionId, required String deploymentId}) async {
        final String apiPath = '/functions/{functionId}/deployments/{deploymentId}'.replaceAll('{functionId}', functionId).replaceAll('{deploymentId}', deploymentId);

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Func.fromMap(res.data);

    }

    /// Delete a code deployment by its unique ID.
    Future deleteDeployment({required String functionId, required String deploymentId}) async {
        final String apiPath = '/functions/{functionId}/deployments/{deploymentId}'.replaceAll('{functionId}', functionId).replaceAll('{deploymentId}', deploymentId);

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

    }

    /// Create a new build for an existing function deployment. This endpoint
    /// allows you to rebuild a deployment with the updated function configuration,
    /// including its entrypoint and build commands if they have been modified The
    /// build process will be queued and executed asynchronously. The original
    /// deployment's code will be preserved and used for the new build.
    Future createBuild({required String functionId, required String deploymentId, String? buildId}) async {
        final String apiPath = '/functions/{functionId}/deployments/{deploymentId}/build'.replaceAll('{functionId}', functionId).replaceAll('{deploymentId}', deploymentId);

        final Map<String, dynamic> apiParams = {
            
            'buildId': buildId,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

    }

    /// Cancel an ongoing function deployment build. If the build is already in
    /// progress, it will be stopped and marked as canceled. If the build hasn't
    /// started yet, it will be marked as canceled without executing. You cannot
    /// cancel builds that have already completed (status 'ready') or failed. The
    /// response includes the final build status and details.
    Future<models.Build> updateDeploymentBuild({required String functionId, required String deploymentId}) async {
        final String apiPath = '/functions/{functionId}/deployments/{deploymentId}/build'.replaceAll('{functionId}', functionId).replaceAll('{deploymentId}', deploymentId);

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Build.fromMap(res.data);

    }

    /// Get a Deployment's contents by its unique ID. This endpoint supports range
    /// requests for partial or streaming file download.
    Future<Uint8List> getDeploymentDownload({required String functionId, required String deploymentId}) async {
        final String apiPath = '/functions/{functionId}/deployments/{deploymentId}/download'.replaceAll('{functionId}', functionId).replaceAll('{deploymentId}', deploymentId);

        final Map<String, dynamic> params = {
            
            
            'project': client.config['project'],
            'key': client.config['key'],
        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: params, responseType: ResponseType.bytes);
        return res.data;
    }

    /// Get a list of all the current user function execution logs. You can use the
    /// query params to filter your results.
    Future<models.ExecutionList> listExecutions({required String functionId, List<String>? queries, String? search}) async {
        final String apiPath = '/functions/{functionId}/executions'.replaceAll('{functionId}', functionId);

        final Map<String, dynamic> apiParams = {
            'queries': queries,
'search': search,

            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.ExecutionList.fromMap(res.data);

    }

    /// Trigger a function execution. The returned object will return you the
    /// current execution status. You can ping the `Get Execution` endpoint to get
    /// updates on the current execution status. Once this endpoint is called, your
    /// function execution process will start asynchronously.
    Future<models.Execution> createExecution({required String functionId, String? body, bool? xasync, String? path, enums.ExecutionMethod? method, Map? headers, String? scheduledAt}) async {
        final String apiPath = '/functions/{functionId}/executions'.replaceAll('{functionId}', functionId);

        final Map<String, dynamic> apiParams = {
            
            'body': body,
'async': xasync,
'path': path,
'method': method?.value,
'headers': headers,
'scheduledAt': scheduledAt,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Execution.fromMap(res.data);

    }

    /// Get a function execution log by its unique ID.
    Future<models.Execution> getExecution({required String functionId, required String executionId}) async {
        final String apiPath = '/functions/{functionId}/executions/{executionId}'.replaceAll('{functionId}', functionId).replaceAll('{executionId}', executionId);

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Execution.fromMap(res.data);

    }

    /// Delete a function execution by its unique ID.
    /// 
    Future deleteExecution({required String functionId, required String executionId}) async {
        final String apiPath = '/functions/{functionId}/executions/{executionId}'.replaceAll('{functionId}', functionId).replaceAll('{executionId}', executionId);

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

    }

    /// Get a list of all variables of a specific function.
    Future<models.VariableList> listVariables({required String functionId}) async {
        final String apiPath = '/functions/{functionId}/variables'.replaceAll('{functionId}', functionId);

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.VariableList.fromMap(res.data);

    }

    /// Create a new function environment variable. These variables can be accessed
    /// in the function at runtime as environment variables.
    Future<models.Variable> createVariable({required String functionId, required String key, required String value}) async {
        final String apiPath = '/functions/{functionId}/variables'.replaceAll('{functionId}', functionId);

        final Map<String, dynamic> apiParams = {
            
            'key': key,
'value': value,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Variable.fromMap(res.data);

    }

    /// Get a variable by its unique ID.
    Future<models.Variable> getVariable({required String functionId, required String variableId}) async {
        final String apiPath = '/functions/{functionId}/variables/{variableId}'.replaceAll('{functionId}', functionId).replaceAll('{variableId}', variableId);

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Variable.fromMap(res.data);

    }

    /// Update variable by its unique ID.
    Future<models.Variable> updateVariable({required String functionId, required String variableId, required String key, String? value}) async {
        final String apiPath = '/functions/{functionId}/variables/{variableId}'.replaceAll('{functionId}', functionId).replaceAll('{variableId}', variableId);

        final Map<String, dynamic> apiParams = {
            
            'key': key,
'value': value,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Variable.fromMap(res.data);

    }

    /// Delete a variable by its unique ID.
    Future deleteVariable({required String functionId, required String variableId}) async {
        final String apiPath = '/functions/{functionId}/variables/{variableId}'.replaceAll('{functionId}', functionId).replaceAll('{variableId}', variableId);

        final Map<String, dynamic> apiParams = {
            
            
        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

    }
}