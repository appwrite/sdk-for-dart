part of '../dart_appwrite.dart';

  /// The Sites Service allows you view, create and manage your web applications.
class Sites extends Service {
    Sites(super.client);

  /// Get a list of all the project's sites. You can use the query params to
  /// filter your results.
    Future<models.SiteList> list({List<String>? queries, String? search, bool? total}) async {
        final String apiPath = '/sites';

    final Map<String, dynamic> apiParams = {
      'queries': queries,
'search': search,
'total': total,

      
    };

    final Map<String, String> apiHeaders = {
      
    };

    final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.SiteList.fromMap(res.data);

    }

  /// Create a new site.
    Future<models.Site> create({required String siteId, required String name, required enums.Framework framework, required enums.BuildRuntime buildRuntime, bool? enabled, bool? logging, int? timeout, String? installCommand, String? buildCommand, String? outputDirectory, enums.Adapter? adapter, String? installationId, String? fallbackFile, String? providerRepositoryId, String? providerBranch, bool? providerSilentMode, String? providerRootDirectory, String? specification}) async {
        final String apiPath = '/sites';

    final Map<String, dynamic> apiParams = {
      
      'siteId': siteId,
'name': name,
'framework': framework.value,
'enabled': enabled,
'logging': logging,
'timeout': timeout,
'installCommand': installCommand,
'buildCommand': buildCommand,
'outputDirectory': outputDirectory,
'buildRuntime': buildRuntime.value,
'adapter': adapter?.value,
'installationId': installationId,
'fallbackFile': fallbackFile,
'providerRepositoryId': providerRepositoryId,
'providerBranch': providerBranch,
'providerSilentMode': providerSilentMode,
'providerRootDirectory': providerRootDirectory,
'specification': specification,

    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',

    };

    final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Site.fromMap(res.data);

    }

  /// Get a list of all frameworks that are currently available on the server
  /// instance.
    Future<models.FrameworkList> listFrameworks() async {
        final String apiPath = '/sites/frameworks';

    final Map<String, dynamic> apiParams = {
      
      
    };

    final Map<String, String> apiHeaders = {
      
    };

    final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.FrameworkList.fromMap(res.data);

    }

  /// List allowed site specifications for this instance.
    Future<models.SpecificationList> listSpecifications() async {
        final String apiPath = '/sites/specifications';

    final Map<String, dynamic> apiParams = {
      
      
    };

    final Map<String, String> apiHeaders = {
      
    };

    final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.SpecificationList.fromMap(res.data);

    }

  /// Get a site by its unique ID.
    Future<models.Site> get({required String siteId}) async {
        final String apiPath = '/sites/{siteId}'.replaceAll('{siteId}', siteId);

    final Map<String, dynamic> apiParams = {
      
      
    };

    final Map<String, String> apiHeaders = {
      
    };

    final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Site.fromMap(res.data);

    }

  /// Update site by its unique ID.
    Future<models.Site> update({required String siteId, required String name, required enums.Framework framework, bool? enabled, bool? logging, int? timeout, String? installCommand, String? buildCommand, String? outputDirectory, enums.BuildRuntime? buildRuntime, enums.Adapter? adapter, String? fallbackFile, String? installationId, String? providerRepositoryId, String? providerBranch, bool? providerSilentMode, String? providerRootDirectory, String? specification}) async {
        final String apiPath = '/sites/{siteId}'.replaceAll('{siteId}', siteId);

    final Map<String, dynamic> apiParams = {
      
      'name': name,
'framework': framework.value,
'enabled': enabled,
'logging': logging,
'timeout': timeout,
'installCommand': installCommand,
'buildCommand': buildCommand,
'outputDirectory': outputDirectory,
'buildRuntime': buildRuntime?.value,
'adapter': adapter?.value,
'fallbackFile': fallbackFile,
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

    return models.Site.fromMap(res.data);

    }

  /// Delete a site by its unique ID.
    Future delete({required String siteId}) async {
        final String apiPath = '/sites/{siteId}'.replaceAll('{siteId}', siteId);

    final Map<String, dynamic> apiParams = {
      
      
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',

    };

    final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

    return  res.data;

    }

  /// Update the site active deployment. Use this endpoint to switch the code
  /// deployment that should be used when visitor opens your site.
    Future<models.Site> updateSiteDeployment({required String siteId, required String deploymentId}) async {
        final String apiPath = '/sites/{siteId}/deployment'.replaceAll('{siteId}', siteId);

    final Map<String, dynamic> apiParams = {
      
      'deploymentId': deploymentId,

    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',

    };

    final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Site.fromMap(res.data);

    }

  /// Get a list of all the site's code deployments. You can use the query params
  /// to filter your results.
    Future<models.DeploymentList> listDeployments({required String siteId, List<String>? queries, String? search, bool? total}) async {
        final String apiPath = '/sites/{siteId}/deployments'.replaceAll('{siteId}', siteId);

    final Map<String, dynamic> apiParams = {
      'queries': queries,
'search': search,
'total': total,

      
    };

    final Map<String, String> apiHeaders = {
      
    };

    final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.DeploymentList.fromMap(res.data);

    }

  /// Create a new site code deployment. Use this endpoint to upload a new
  /// version of your site code. To activate your newly uploaded code, you'll
  /// need to update the function's deployment to use your new deployment ID.
    Future<models.Deployment> createDeployment({required String siteId, required InputFile code, required bool activate, String? installCommand, String? buildCommand, String? outputDirectory, Function(UploadProgress)? onProgress}) async {
        final String apiPath = '/sites/{siteId}/deployments'.replaceAll('{siteId}', siteId);

    final Map<String, dynamic> apiParams = {
      
      'installCommand': installCommand,
'buildCommand': buildCommand,
'outputDirectory': outputDirectory,
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

  /// Create a new build for an existing site deployment. This endpoint allows
  /// you to rebuild a deployment with the updated site configuration, including
  /// its commands and output directory if they have been modified. The build
  /// process will be queued and executed asynchronously. The original
  /// deployment's code will be preserved and used for the new build.
    Future<models.Deployment> createDuplicateDeployment({required String siteId, required String deploymentId}) async {
        final String apiPath = '/sites/{siteId}/deployments/duplicate'.replaceAll('{siteId}', siteId);

    final Map<String, dynamic> apiParams = {
      
      'deploymentId': deploymentId,

    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',

    };

    final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Deployment.fromMap(res.data);

    }

  /// Create a deployment based on a template.
  /// 
  /// Use this endpoint with combination of
  /// [listTemplates](https://appwrite.io/docs/products/sites/templates) to find
  /// the template details.
    Future<models.Deployment> createTemplateDeployment({required String siteId, required String repository, required String owner, required String rootDirectory, required String version, bool? activate}) async {
        final String apiPath = '/sites/{siteId}/deployments/template'.replaceAll('{siteId}', siteId);

    final Map<String, dynamic> apiParams = {
      
      'repository': repository,
'owner': owner,
'rootDirectory': rootDirectory,
'version': version,
'activate': activate,

    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',

    };

    final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Deployment.fromMap(res.data);

    }

  /// Create a deployment when a site is connected to VCS.
  /// 
  /// This endpoint lets you create deployment from a branch, commit, or a tag.
    Future<models.Deployment> createVcsDeployment({required String siteId, required enums.VCSDeploymentType type, required String reference, bool? activate}) async {
        final String apiPath = '/sites/{siteId}/deployments/vcs'.replaceAll('{siteId}', siteId);

    final Map<String, dynamic> apiParams = {
      
      'type': type.value,
'reference': reference,
'activate': activate,

    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',

    };

    final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Deployment.fromMap(res.data);

    }

  /// Get a site deployment by its unique ID.
    Future<models.Deployment> getDeployment({required String siteId, required String deploymentId}) async {
        final String apiPath = '/sites/{siteId}/deployments/{deploymentId}'.replaceAll('{siteId}', siteId).replaceAll('{deploymentId}', deploymentId);

    final Map<String, dynamic> apiParams = {
      
      
    };

    final Map<String, String> apiHeaders = {
      
    };

    final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Deployment.fromMap(res.data);

    }

  /// Delete a site deployment by its unique ID.
    Future deleteDeployment({required String siteId, required String deploymentId}) async {
        final String apiPath = '/sites/{siteId}/deployments/{deploymentId}'.replaceAll('{siteId}', siteId).replaceAll('{deploymentId}', deploymentId);

    final Map<String, dynamic> apiParams = {
      
      
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',

    };

    final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

    return  res.data;

    }

  /// Get a site deployment content by its unique ID. The endpoint response
  /// return with a 'Content-Disposition: attachment' header that tells the
  /// browser to start downloading the file to user downloads directory.
    Future<Uint8List> getDeploymentDownload({required String siteId, required String deploymentId, enums.DeploymentDownloadType? type}) async {
        final String apiPath = '/sites/{siteId}/deployments/{deploymentId}/download'.replaceAll('{siteId}', siteId).replaceAll('{deploymentId}', deploymentId);

    final Map<String, dynamic> params = {
      'type': type?.value,

      
      'project': client.config['project'],
      'key': client.config['key'],
    };

    final res = await client.call(HttpMethod.get, path: apiPath, params: params, responseType: ResponseType.bytes);
    return res.data;
    }

  /// Cancel an ongoing site deployment build. If the build is already in
  /// progress, it will be stopped and marked as canceled. If the build hasn't
  /// started yet, it will be marked as canceled without executing. You cannot
  /// cancel builds that have already completed (status 'ready') or failed. The
  /// response includes the final build status and details.
    Future<models.Deployment> updateDeploymentStatus({required String siteId, required String deploymentId}) async {
        final String apiPath = '/sites/{siteId}/deployments/{deploymentId}/status'.replaceAll('{siteId}', siteId).replaceAll('{deploymentId}', deploymentId);

    final Map<String, dynamic> apiParams = {
      
      
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',

    };

    final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Deployment.fromMap(res.data);

    }

  /// Get a list of all site logs. You can use the query params to filter your
  /// results.
    Future<models.ExecutionList> listLogs({required String siteId, List<String>? queries, bool? total}) async {
        final String apiPath = '/sites/{siteId}/logs'.replaceAll('{siteId}', siteId);

    final Map<String, dynamic> apiParams = {
      'queries': queries,
'total': total,

      
    };

    final Map<String, String> apiHeaders = {
      
    };

    final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ExecutionList.fromMap(res.data);

    }

  /// Get a site request log by its unique ID.
    Future<models.Execution> getLog({required String siteId, required String logId}) async {
        final String apiPath = '/sites/{siteId}/logs/{logId}'.replaceAll('{siteId}', siteId).replaceAll('{logId}', logId);

    final Map<String, dynamic> apiParams = {
      
      
    };

    final Map<String, String> apiHeaders = {
      
    };

    final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Execution.fromMap(res.data);

    }

  /// Delete a site log by its unique ID.
    Future deleteLog({required String siteId, required String logId}) async {
        final String apiPath = '/sites/{siteId}/logs/{logId}'.replaceAll('{siteId}', siteId).replaceAll('{logId}', logId);

    final Map<String, dynamic> apiParams = {
      
      
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',

    };

    final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

    return  res.data;

    }

  /// Get a list of all variables of a specific site.
    Future<models.VariableList> listVariables({required String siteId}) async {
        final String apiPath = '/sites/{siteId}/variables'.replaceAll('{siteId}', siteId);

    final Map<String, dynamic> apiParams = {
      
      
    };

    final Map<String, String> apiHeaders = {
      
    };

    final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.VariableList.fromMap(res.data);

    }

  /// Create a new site variable. These variables can be accessed during build
  /// and runtime (server-side rendering) as environment variables.
    Future<models.Variable> createVariable({required String siteId, required String key, required String value, bool? secret}) async {
        final String apiPath = '/sites/{siteId}/variables'.replaceAll('{siteId}', siteId);

    final Map<String, dynamic> apiParams = {
      
      'key': key,
'value': value,
'secret': secret,

    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',

    };

    final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Variable.fromMap(res.data);

    }

  /// Get a variable by its unique ID.
    Future<models.Variable> getVariable({required String siteId, required String variableId}) async {
        final String apiPath = '/sites/{siteId}/variables/{variableId}'.replaceAll('{siteId}', siteId).replaceAll('{variableId}', variableId);

    final Map<String, dynamic> apiParams = {
      
      
    };

    final Map<String, String> apiHeaders = {
      
    };

    final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Variable.fromMap(res.data);

    }

  /// Update variable by its unique ID.
    Future<models.Variable> updateVariable({required String siteId, required String variableId, required String key, String? value, bool? secret}) async {
        final String apiPath = '/sites/{siteId}/variables/{variableId}'.replaceAll('{siteId}', siteId).replaceAll('{variableId}', variableId);

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
    Future deleteVariable({required String siteId, required String variableId}) async {
        final String apiPath = '/sites/{siteId}/variables/{variableId}'.replaceAll('{siteId}', siteId).replaceAll('{variableId}', variableId);

    final Map<String, dynamic> apiParams = {
      
      
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',

    };

    final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

    return  res.data;

    }
}