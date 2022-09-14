part of dart_appwrite;

    /// The Functions Service allows you view, create and manage your Cloud
    /// Functions.
class Functions extends Service {
    Functions(super.client);

    /// List Functions
    ///
    /// Get a list of all the project's functions. You can use the query params to
    /// filter your results.
    ///
    Future<models.FunctionList> list({List<String>? queries, String? search}) async {
        final String path = '/functions';

        final Map<String, dynamic> params = {
            'queries': queries,
'search': search,

            
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);

        return models.FunctionList.fromMap(res.data);


    }
    /// Create Function
    ///
    /// Create a new function. You can pass a list of
    /// [permissions](/docs/permissions) to allow different project users or team
    /// with access to execute the function using the client API.
    ///
    Future<models.Func> create({required String functionId, required String name, required List<String> execute, required String runtime, List<String>? events, String? schedule, int? timeout, bool? enabled}) async {
        final String path = '/functions';

        final Map<String, dynamic> params = {
            
            'functionId': functionId,
'name': name,
'execute': execute,
'runtime': runtime,
'events': events,
'schedule': schedule,
'timeout': timeout,
'enabled': enabled,

        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: path, params: params, headers: headers);

        return models.Func.fromMap(res.data);


    }
    /// List runtimes
    ///
    /// Get a list of all runtimes that are currently active on your instance.
    ///
    Future<models.RuntimeList> listRuntimes() async {
        final String path = '/functions/runtimes';

        final Map<String, dynamic> params = {
            
            
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);

        return models.RuntimeList.fromMap(res.data);


    }
    /// Get Function
    ///
    /// Get a function by its unique ID.
    ///
    Future<models.Func> get({required String functionId}) async {
        final String path = '/functions/{functionId}'.replaceAll('{functionId}', functionId);

        final Map<String, dynamic> params = {
            
            
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);

        return models.Func.fromMap(res.data);


    }
    /// Update Function
    ///
    /// Update function by its unique ID.
    ///
    Future<models.Func> update({required String functionId, required String name, required List<String> execute, List<String>? events, String? schedule, int? timeout, bool? enabled}) async {
        final String path = '/functions/{functionId}'.replaceAll('{functionId}', functionId);

        final Map<String, dynamic> params = {
            
            'name': name,
'execute': execute,
'events': events,
'schedule': schedule,
'timeout': timeout,
'enabled': enabled,

        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.put, path: path, params: params, headers: headers);

        return models.Func.fromMap(res.data);


    }
    /// Delete Function
    ///
    /// Delete a function by its unique ID.
    ///
    Future delete({required String functionId}) async {
        final String path = '/functions/{functionId}'.replaceAll('{functionId}', functionId);

        final Map<String, dynamic> params = {
            
            
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.delete, path: path, params: params, headers: headers);

        return  res.data;


    }
    /// List Deployments
    ///
    /// Get a list of all the project's code deployments. You can use the query
    /// params to filter your results.
    ///
    Future<models.DeploymentList> listDeployments({required String functionId, List<String>? queries, String? search}) async {
        final String path = '/functions/{functionId}/deployments'.replaceAll('{functionId}', functionId);

        final Map<String, dynamic> params = {
            'queries': queries,
'search': search,

            
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);

        return models.DeploymentList.fromMap(res.data);


    }
    /// Create Deployment
    ///
    /// Create a new function code deployment. Use this endpoint to upload a new
    /// version of your code function. To execute your newly uploaded code, you'll
    /// need to update the function's deployment to use your new deployment UID.
    /// 
    /// This endpoint accepts a tar.gz file compressed with your code. Make sure to
    /// include any dependencies your code has within the compressed file. You can
    /// learn more about code packaging in the [Appwrite Cloud Functions
    /// tutorial](/docs/functions).
    /// 
    /// Use the "command" param to set the entry point used to execute your code.
    ///
    Future<models.Deployment> createDeployment({required String functionId, required String entrypoint, required InputFile code, required bool activate, Function(UploadProgress)? onProgress}) async {
        final String path = '/functions/{functionId}/deployments'.replaceAll('{functionId}', functionId);

        final Map<String, dynamic> params = {
            
            'entrypoint': entrypoint,
'code': code,
'activate': activate,

        };

        final Map<String, String> headers = {
            'content-type': 'multipart/form-data',

        };

        String idParamName = '';
        final paramName = 'code';
        final res = await client.chunkedUpload(
            path: path,
            params: params,
            paramName: paramName,
            idParamName: idParamName,
            headers: headers,
            onProgress: onProgress,
        );

        return models.Deployment.fromMap(res.data);


    }
    /// Get Deployment
    ///
    /// Get a code deployment by its unique ID.
    ///
    Future<models.Deployment> getDeployment({required String functionId, required String deploymentId}) async {
        final String path = '/functions/{functionId}/deployments/{deploymentId}'.replaceAll('{functionId}', functionId).replaceAll('{deploymentId}', deploymentId);

        final Map<String, dynamic> params = {
            
            
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);

        return models.Deployment.fromMap(res.data);


    }
    /// Update Function Deployment
    ///
    /// Update the function code deployment ID using the unique function ID. Use
    /// this endpoint to switch the code deployment that should be executed by the
    /// execution endpoint.
    ///
    Future<models.Func> updateDeployment({required String functionId, required String deploymentId}) async {
        final String path = '/functions/{functionId}/deployments/{deploymentId}'.replaceAll('{functionId}', functionId).replaceAll('{deploymentId}', deploymentId);

        final Map<String, dynamic> params = {
            
            
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.patch, path: path, params: params, headers: headers);

        return models.Func.fromMap(res.data);


    }
    /// Delete Deployment
    ///
    /// Delete a code deployment by its unique ID.
    ///
    Future deleteDeployment({required String functionId, required String deploymentId}) async {
        final String path = '/functions/{functionId}/deployments/{deploymentId}'.replaceAll('{functionId}', functionId).replaceAll('{deploymentId}', deploymentId);

        final Map<String, dynamic> params = {
            
            
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.delete, path: path, params: params, headers: headers);

        return  res.data;


    }
    /// Retry Build
    Future retryBuild({required String functionId, required String deploymentId, required String buildId}) async {
        final String path = '/functions/{functionId}/deployments/{deploymentId}/builds/{buildId}'.replaceAll('{functionId}', functionId).replaceAll('{deploymentId}', deploymentId).replaceAll('{buildId}', buildId);

        final Map<String, dynamic> params = {
            
            
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: path, params: params, headers: headers);

        return  res.data;


    }
    /// List Executions
    ///
    /// Get a list of all the current user function execution logs. You can use the
    /// query params to filter your results. On admin mode, this endpoint will
    /// return a list of all of the project's executions. [Learn more about
    /// different API modes](/docs/admin).
    ///
    Future<models.ExecutionList> listExecutions({required String functionId, List<String>? queries, String? search}) async {
        final String path = '/functions/{functionId}/executions'.replaceAll('{functionId}', functionId);

        final Map<String, dynamic> params = {
            'queries': queries,
'search': search,

            
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);

        return models.ExecutionList.fromMap(res.data);


    }
    /// Create Execution
    ///
    /// Trigger a function execution. The returned object will return you the
    /// current execution status. You can ping the `Get Execution` endpoint to get
    /// updates on the current execution status. Once this endpoint is called, your
    /// function execution process will start asynchronously.
    ///
    Future<models.Execution> createExecution({required String functionId, String? data, bool? xasync}) async {
        final String path = '/functions/{functionId}/executions'.replaceAll('{functionId}', functionId);

        final Map<String, dynamic> params = {
            
            'data': data,
'async': xasync,

        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: path, params: params, headers: headers);

        return models.Execution.fromMap(res.data);


    }
    /// Get Execution
    ///
    /// Get a function execution log by its unique ID.
    ///
    Future<models.Execution> getExecution({required String functionId, required String executionId}) async {
        final String path = '/functions/{functionId}/executions/{executionId}'.replaceAll('{functionId}', functionId).replaceAll('{executionId}', executionId);

        final Map<String, dynamic> params = {
            
            
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);

        return models.Execution.fromMap(res.data);


    }
    /// List Variables
    ///
    /// Get a list of all variables of a specific function.
    ///
    Future<models.VariableList> listVariables({required String functionId}) async {
        final String path = '/functions/{functionId}/variables'.replaceAll('{functionId}', functionId);

        final Map<String, dynamic> params = {
            
            
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);

        return models.VariableList.fromMap(res.data);


    }
    /// Create Variable
    ///
    /// Create a new function variable. These variables can be accessed within
    /// function in the `env` object under the request variable.
    ///
    Future<models.Variable> createVariable({required String functionId, required String key, required String value}) async {
        final String path = '/functions/{functionId}/variables'.replaceAll('{functionId}', functionId);

        final Map<String, dynamic> params = {
            
            'key': key,
'value': value,

        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.post, path: path, params: params, headers: headers);

        return models.Variable.fromMap(res.data);


    }
    /// Get Variable
    ///
    /// Get a variable by its unique ID.
    ///
    Future<models.Variable> getVariable({required String functionId, required String variableId}) async {
        final String path = '/functions/{functionId}/variables/{variableId}'.replaceAll('{functionId}', functionId).replaceAll('{variableId}', variableId);

        final Map<String, dynamic> params = {
            
            
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);

        return models.Variable.fromMap(res.data);


    }
    /// Update Variable
    ///
    /// Update variable by its unique ID.
    ///
    Future<models.Variable> updateVariable({required String functionId, required String variableId, required String key, String? value}) async {
        final String path = '/functions/{functionId}/variables/{variableId}'.replaceAll('{functionId}', functionId).replaceAll('{variableId}', variableId);

        final Map<String, dynamic> params = {
            
            'key': key,
'value': value,

        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.put, path: path, params: params, headers: headers);

        return models.Variable.fromMap(res.data);


    }
    /// Delete Variable
    ///
    /// Delete a variable by its unique ID.
    ///
    Future deleteVariable({required String functionId, required String variableId}) async {
        final String path = '/functions/{functionId}/variables/{variableId}'.replaceAll('{functionId}', functionId).replaceAll('{variableId}', variableId);

        final Map<String, dynamic> params = {
            
            
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',

        };

        final res = await client.call(HttpMethod.delete, path: path, params: params, headers: headers);

        return  res.data;


    }
}