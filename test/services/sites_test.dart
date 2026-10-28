import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:dart_appwrite/models.dart' as models;
import 'package:dart_appwrite/enums.dart' as enums;
import 'package:dart_appwrite/src/enums.dart';
import 'package:dart_appwrite/src/response.dart';
import 'dart:typed_data';
import 'package:dart_appwrite/dart_appwrite.dart';

class MockClient extends Mock implements Client {
  Map<String, String> config = {'project': 'testproject'};
  String endPoint = 'https://localhost/v1';

  @override
  Future<Response> call(
    HttpMethod? method, {
    String? path = '',
    Map<String, String>? headers = const {},
    Map<String, dynamic>? params = const {},
    ResponseType? responseType,
  }) async {
    return super.noSuchMethod(
      Invocation.method(#call, [method], {
        #path: path,
        #headers: headers,
        #params: params,
        #responseType: responseType,
      }),
      returnValue: Response(),
    );
  }

  @override
  Future<String?> webAuth(Uri? url) async {
    return super.noSuchMethod(
      Invocation.method(#webAuth, [url]),
      returnValue: 'done',
    );
  }

  @override
  Future<Response> chunkedUpload({
    String? path,
    Map<String, dynamic>? params,
    String? paramName,
    String? idParamName,
    Map<String, String>? headers,
    Function(UploadProgress)? onProgress,
    ResponseType? responseType,
    HttpMethod? method = HttpMethod.post,
  }) async {
    return super.noSuchMethod(
      Invocation.method(#chunkedUpload, [], {
        #path: path,
        #params: params,
        #paramName: paramName,
        #idParamName: idParamName,
        #headers: headers,
        #method: method,
      }),
      returnValue: Response(data: {}),
    );
  }
}

void main() {
  group('Sites test', () {
    late MockClient client;
    late Sites sites;

    setUp(() {
      client = MockClient();
      sites = Sites(client);
    });

    test('test method list()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'sites': [],
      };

      when(
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await sites.list(
        queries: [],
        search: "<SEARCH>",
        total: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/sites",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "queries": isA<List>(),
        "search": "<SEARCH>",
        "total": false,
      });
      expect(response, isA<models.SiteList>());
    });

    test('test method create()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "My Site",
        'description': "Marketing site for the spring launch.",
        'enabled': true,
        'live': true,
        'logging': true,
        'framework': "react",
        'deploymentRetention': 7,
        'deploymentId': "5e5ea5c16897e",
        'deploymentCreatedAt': "2020-10-15T06:38:00.000+00:00",
        'deploymentScreenshotLight': "5e5ea5c16897e",
        'deploymentScreenshotDark': "5e5ea5c16897e",
        'latestDeploymentId': "5e5ea5c16897e",
        'latestDeploymentCreatedAt': "2020-10-15T06:38:00.000+00:00",
        'latestDeploymentStatus': "ready",
        'scopes': [],
        'vars': [],
        'timeout': 300,
        'installCommand': "npm install",
        'buildCommand': "npm run build",
        'startCommand': "node custom-server.mjs",
        'outputDirectory': "build",
        'installationId': "6m40at4ejk5h2u9s1hboo",
        'providerRepositoryId': "appwrite",
        'providerBranch': "main",
        'providerRootDirectory': "sites/helloWorld",
        'providerSilentMode': true,
        'providerBranches': [],
        'providerPaths': [],
        'buildSpecification': "s-1vcpu-512mb",
        'runtimeSpecification': "s-1vcpu-512mb",
        'buildRuntime': "node-22",
        'adapter': "static",
        'fallbackFile': "index.html",
      };

      when(
        client.call(
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await sites.create(
        siteId: "<SITE_ID>",
        name: "<NAME>",
        framework: enums.Framework.analog,
        buildRuntime: enums.BuildRuntime.node145,
        enabled: false,
        logging: false,
        timeout: 1,
        installCommand: "<INSTALL_COMMAND>",
        buildCommand: "<BUILD_COMMAND>",
        startCommand: "<START_COMMAND>",
        outputDirectory: "<OUTPUT_DIRECTORY>",
        adapter: enums.Adapter.xstatic,
        installationId: "<INSTALLATION_ID>",
        fallbackFile: "<FALLBACK_FILE>",
        providerRepositoryId: "<PROVIDER_REPOSITORY_ID>",
        providerBranch: "<PROVIDER_BRANCH>",
        providerSilentMode: false,
        providerRootDirectory: "<PROVIDER_ROOT_DIRECTORY>",
        providerBranches: [],
        providerPaths: [],
        buildSpecification: "s-1vcpu-512mb",
        runtimeSpecification: "s-1vcpu-512mb",
        deploymentRetention: 1,
        scopes: [enums.ProjectKeyScopes.projectRead],
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/sites",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "siteId": "<SITE_ID>",
        "name": "<NAME>",
        "framework": enums.Framework.analog.value,
        "enabled": false,
        "logging": false,
        "timeout": 1,
        "installCommand": "<INSTALL_COMMAND>",
        "buildCommand": "<BUILD_COMMAND>",
        "startCommand": "<START_COMMAND>",
        "outputDirectory": "<OUTPUT_DIRECTORY>",
        "buildRuntime": enums.BuildRuntime.node145.value,
        "adapter": enums.Adapter.xstatic.value,
        "installationId": "<INSTALLATION_ID>",
        "fallbackFile": "<FALLBACK_FILE>",
        "providerRepositoryId": "<PROVIDER_REPOSITORY_ID>",
        "providerBranch": "<PROVIDER_BRANCH>",
        "providerSilentMode": false,
        "providerRootDirectory": "<PROVIDER_ROOT_DIRECTORY>",
        "providerBranches": isA<List>(),
        "providerPaths": isA<List>(),
        "buildSpecification": "s-1vcpu-512mb",
        "runtimeSpecification": "s-1vcpu-512mb",
        "deploymentRetention": 1,
        "scopes": isA<List>(),
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.Site>());
    });

    test('test method listFrameworks()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'frameworks': [],
      };

      when(
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await sites.listFrameworks(
        total: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/sites/frameworks",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "total": false,
      });
      expect(response, isA<models.FrameworkList>());
    });

    test('test method listSpecifications()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'specifications': [],
      };

      when(
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await sites.listSpecifications(
        type: "runtimes",
        total: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/sites/specifications",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "type": "runtimes",
        "total": false,
      });
      expect(response, isA<models.SpecificationList>());
    });

    test('test method get()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "My Site",
        'description': "Marketing site for the spring launch.",
        'enabled': true,
        'live': true,
        'logging': true,
        'framework': "react",
        'deploymentRetention': 7,
        'deploymentId': "5e5ea5c16897e",
        'deploymentCreatedAt': "2020-10-15T06:38:00.000+00:00",
        'deploymentScreenshotLight': "5e5ea5c16897e",
        'deploymentScreenshotDark': "5e5ea5c16897e",
        'latestDeploymentId': "5e5ea5c16897e",
        'latestDeploymentCreatedAt': "2020-10-15T06:38:00.000+00:00",
        'latestDeploymentStatus': "ready",
        'scopes': [],
        'vars': [],
        'timeout': 300,
        'installCommand': "npm install",
        'buildCommand': "npm run build",
        'startCommand': "node custom-server.mjs",
        'outputDirectory': "build",
        'installationId': "6m40at4ejk5h2u9s1hboo",
        'providerRepositoryId': "appwrite",
        'providerBranch': "main",
        'providerRootDirectory': "sites/helloWorld",
        'providerSilentMode': true,
        'providerBranches': [],
        'providerPaths': [],
        'buildSpecification': "s-1vcpu-512mb",
        'runtimeSpecification': "s-1vcpu-512mb",
        'buildRuntime': "node-22",
        'adapter': "static",
        'fallbackFile': "index.html",
      };

      when(
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await sites.get(
        siteId: "<SITE_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/sites/%3CSITE_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.Site>());
    });

    test('test method update()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "My Site",
        'description': "Marketing site for the spring launch.",
        'enabled': true,
        'live': true,
        'logging': true,
        'framework': "react",
        'deploymentRetention': 7,
        'deploymentId': "5e5ea5c16897e",
        'deploymentCreatedAt': "2020-10-15T06:38:00.000+00:00",
        'deploymentScreenshotLight': "5e5ea5c16897e",
        'deploymentScreenshotDark': "5e5ea5c16897e",
        'latestDeploymentId': "5e5ea5c16897e",
        'latestDeploymentCreatedAt': "2020-10-15T06:38:00.000+00:00",
        'latestDeploymentStatus': "ready",
        'scopes': [],
        'vars': [],
        'timeout': 300,
        'installCommand': "npm install",
        'buildCommand': "npm run build",
        'startCommand': "node custom-server.mjs",
        'outputDirectory': "build",
        'installationId': "6m40at4ejk5h2u9s1hboo",
        'providerRepositoryId': "appwrite",
        'providerBranch': "main",
        'providerRootDirectory': "sites/helloWorld",
        'providerSilentMode': true,
        'providerBranches': [],
        'providerPaths': [],
        'buildSpecification': "s-1vcpu-512mb",
        'runtimeSpecification': "s-1vcpu-512mb",
        'buildRuntime': "node-22",
        'adapter': "static",
        'fallbackFile': "index.html",
      };

      when(
        client.call(
          HttpMethod.put,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await sites.update(
        siteId: "<SITE_ID>",
        name: "<NAME>",
        framework: enums.Framework.analog,
        enabled: false,
        logging: false,
        timeout: 1,
        installCommand: "<INSTALL_COMMAND>",
        buildCommand: "<BUILD_COMMAND>",
        startCommand: "<START_COMMAND>",
        outputDirectory: "<OUTPUT_DIRECTORY>",
        buildRuntime: enums.BuildRuntime.node145,
        adapter: enums.Adapter.xstatic,
        fallbackFile: "<FALLBACK_FILE>",
        installationId: "<INSTALLATION_ID>",
        providerRepositoryId: "<PROVIDER_REPOSITORY_ID>",
        providerBranch: "<PROVIDER_BRANCH>",
        providerSilentMode: false,
        providerRootDirectory: "<PROVIDER_ROOT_DIRECTORY>",
        providerBranches: [],
        providerPaths: [],
        buildSpecification: "s-1vcpu-512mb",
        runtimeSpecification: "s-1vcpu-512mb",
        deploymentRetention: 1,
        scopes: [enums.ProjectKeyScopes.projectRead],
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.put,
          path: "/sites/%3CSITE_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "<NAME>",
        "framework": enums.Framework.analog.value,
        "enabled": false,
        "logging": false,
        "timeout": 1,
        "installCommand": "<INSTALL_COMMAND>",
        "buildCommand": "<BUILD_COMMAND>",
        "startCommand": "<START_COMMAND>",
        "outputDirectory": "<OUTPUT_DIRECTORY>",
        "buildRuntime": enums.BuildRuntime.node145.value,
        "adapter": enums.Adapter.xstatic.value,
        "fallbackFile": "<FALLBACK_FILE>",
        "installationId": "<INSTALLATION_ID>",
        "providerRepositoryId": "<PROVIDER_REPOSITORY_ID>",
        "providerBranch": "<PROVIDER_BRANCH>",
        "providerSilentMode": false,
        "providerRootDirectory": "<PROVIDER_ROOT_DIRECTORY>",
        "providerBranches": isA<List>(),
        "providerPaths": isA<List>(),
        "buildSpecification": "s-1vcpu-512mb",
        "runtimeSpecification": "s-1vcpu-512mb",
        "deploymentRetention": 1,
        "scopes": isA<List>(),
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.Site>());
    });

    test('test method delete()', () async {
      final data = '';

      when(
        client.call(
          HttpMethod.delete,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await sites.delete(
        siteId: "<SITE_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.delete,
          path: "/sites/%3CSITE_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
    });

    test('test method updateSiteDeployment()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'name': "My Site",
        'description': "Marketing site for the spring launch.",
        'enabled': true,
        'live': true,
        'logging': true,
        'framework': "react",
        'deploymentRetention': 7,
        'deploymentId': "5e5ea5c16897e",
        'deploymentCreatedAt': "2020-10-15T06:38:00.000+00:00",
        'deploymentScreenshotLight': "5e5ea5c16897e",
        'deploymentScreenshotDark': "5e5ea5c16897e",
        'latestDeploymentId': "5e5ea5c16897e",
        'latestDeploymentCreatedAt': "2020-10-15T06:38:00.000+00:00",
        'latestDeploymentStatus': "ready",
        'scopes': [],
        'vars': [],
        'timeout': 300,
        'installCommand': "npm install",
        'buildCommand': "npm run build",
        'startCommand': "node custom-server.mjs",
        'outputDirectory': "build",
        'installationId': "6m40at4ejk5h2u9s1hboo",
        'providerRepositoryId': "appwrite",
        'providerBranch': "main",
        'providerRootDirectory': "sites/helloWorld",
        'providerSilentMode': true,
        'providerBranches': [],
        'providerPaths': [],
        'buildSpecification': "s-1vcpu-512mb",
        'runtimeSpecification': "s-1vcpu-512mb",
        'buildRuntime': "node-22",
        'adapter': "static",
        'fallbackFile': "index.html",
      };

      when(
        client.call(
          HttpMethod.patch,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await sites.updateSiteDeployment(
        siteId: "<SITE_ID>",
        deploymentId: "<DEPLOYMENT_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/sites/%3CSITE_ID%3E/deployment",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "deploymentId": "<DEPLOYMENT_ID>",
      });
      expect(response, isA<models.Site>());
    });

    test('test method listDeployments()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'deployments': [],
      };

      when(
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await sites.listDeployments(
        siteId: "<SITE_ID>",
        queries: [],
        search: "<SEARCH>",
        total: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/sites/%3CSITE_ID%3E/deployments",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "queries": isA<List>(),
        "search": "<SEARCH>",
        "total": false,
      });
      expect(response, isA<models.DeploymentList>());
    });

    test('test method createDeployment()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'type': "vcs",
        'resourceId': "5e5ea6g16897e",
        'resourceType': "functions",
        'entrypoint': "index.js",
        'sourceSize': 128,
        'buildSize': 128,
        'totalSize': 128,
        'buildId': "5e5ea5c16897e",
        'activate': true,
        'screenshotLight': "5e5ea5c16897e",
        'screenshotDark': "5e5ea5c16897e",
        'status': "ready",
        'buildLogs': "Compiling source files...",
        'buildDuration': 128,
        'providerRepositoryName': "database",
        'providerRepositoryOwner': "utopia",
        'providerRepositoryUrl':
            "https://github.com/vermakhushboo/g4-node-function",
        'providerCommitHash': "7c3f25d",
        'providerCommitAuthorUrl': "https://github.com/vermakhushboo",
        'providerCommitAuthor': "Khushboo Verma",
        'providerCommitMessage': "Update index.js",
        'providerCommitUrl':
            "https://github.com/vermakhushboo/g4-node-function/commit/60c0416257a9cbcdd96b2d370c38d8f8d150ccfb",
        'providerBranch': "0.7.x",
        'providerBranchUrl':
            "https://github.com/vermakhushboo/appwrite/tree/0.7.x",
      };

      when(
        client.chunkedUpload(
          path: anyNamed('path'),
          params: anyNamed('params'),
          paramName: anyNamed('paramName'),
          idParamName: anyNamed('idParamName'),
          headers: anyNamed('headers'),
          method: anyNamed('method'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await sites.createDeployment(
        siteId: "<SITE_ID>",
        code: InputFile.fromPath(path: './image.png'),
        installCommand: "<INSTALL_COMMAND>",
        buildCommand: "<BUILD_COMMAND>",
        outputDirectory: "<OUTPUT_DIRECTORY>",
        activate: false,
      );
      final Map<String, dynamic> params = verify(
        client.chunkedUpload(
          path: "/sites/%3CSITE_ID%3E/deployments",
          params: captureAnyNamed('params'),
          paramName: anyNamed('paramName'),
          idParamName: anyNamed('idParamName'),
          headers: anyNamed('headers'),
          method: HttpMethod.post,
        ),
      ).captured.single;
      expect(params, {
        "installCommand": "<INSTALL_COMMAND>",
        "buildCommand": "<BUILD_COMMAND>",
        "outputDirectory": "<OUTPUT_DIRECTORY>",
        "code": isA<InputFile>(),
        "activate": false,
      });
      expect(response, isA<models.Deployment>());
    });

    test('test method createDuplicateDeployment()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'type': "vcs",
        'resourceId': "5e5ea6g16897e",
        'resourceType': "functions",
        'entrypoint': "index.js",
        'sourceSize': 128,
        'buildSize': 128,
        'totalSize': 128,
        'buildId': "5e5ea5c16897e",
        'activate': true,
        'screenshotLight': "5e5ea5c16897e",
        'screenshotDark': "5e5ea5c16897e",
        'status': "ready",
        'buildLogs': "Compiling source files...",
        'buildDuration': 128,
        'providerRepositoryName': "database",
        'providerRepositoryOwner': "utopia",
        'providerRepositoryUrl':
            "https://github.com/vermakhushboo/g4-node-function",
        'providerCommitHash': "7c3f25d",
        'providerCommitAuthorUrl': "https://github.com/vermakhushboo",
        'providerCommitAuthor': "Khushboo Verma",
        'providerCommitMessage': "Update index.js",
        'providerCommitUrl':
            "https://github.com/vermakhushboo/g4-node-function/commit/60c0416257a9cbcdd96b2d370c38d8f8d150ccfb",
        'providerBranch': "0.7.x",
        'providerBranchUrl':
            "https://github.com/vermakhushboo/appwrite/tree/0.7.x",
      };

      when(
        client.call(
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await sites.createDuplicateDeployment(
        siteId: "<SITE_ID>",
        deploymentId: "<DEPLOYMENT_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/sites/%3CSITE_ID%3E/deployments/duplicate",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "deploymentId": "<DEPLOYMENT_ID>",
      });
      expect(response, isA<models.Deployment>());
    });

    test('test method createTemplateDeployment()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'type': "vcs",
        'resourceId': "5e5ea6g16897e",
        'resourceType': "functions",
        'entrypoint': "index.js",
        'sourceSize': 128,
        'buildSize': 128,
        'totalSize': 128,
        'buildId': "5e5ea5c16897e",
        'activate': true,
        'screenshotLight': "5e5ea5c16897e",
        'screenshotDark': "5e5ea5c16897e",
        'status': "ready",
        'buildLogs': "Compiling source files...",
        'buildDuration': 128,
        'providerRepositoryName': "database",
        'providerRepositoryOwner': "utopia",
        'providerRepositoryUrl':
            "https://github.com/vermakhushboo/g4-node-function",
        'providerCommitHash': "7c3f25d",
        'providerCommitAuthorUrl': "https://github.com/vermakhushboo",
        'providerCommitAuthor': "Khushboo Verma",
        'providerCommitMessage': "Update index.js",
        'providerCommitUrl':
            "https://github.com/vermakhushboo/g4-node-function/commit/60c0416257a9cbcdd96b2d370c38d8f8d150ccfb",
        'providerBranch': "0.7.x",
        'providerBranchUrl':
            "https://github.com/vermakhushboo/appwrite/tree/0.7.x",
      };

      when(
        client.call(
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await sites.createTemplateDeployment(
        siteId: "<SITE_ID>",
        repository: "<REPOSITORY>",
        owner: "<OWNER>",
        rootDirectory: "<ROOT_DIRECTORY>",
        type: enums.TemplateReferenceType.branch,
        reference: "<REFERENCE>",
        activate: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/sites/%3CSITE_ID%3E/deployments/template",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "repository": "<REPOSITORY>",
        "owner": "<OWNER>",
        "rootDirectory": "<ROOT_DIRECTORY>",
        "type": enums.TemplateReferenceType.branch.value,
        "reference": "<REFERENCE>",
        "activate": false,
      });
      expect(response, isA<models.Deployment>());
    });

    test('test method createVcsDeployment()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'type': "vcs",
        'resourceId': "5e5ea6g16897e",
        'resourceType': "functions",
        'entrypoint': "index.js",
        'sourceSize': 128,
        'buildSize': 128,
        'totalSize': 128,
        'buildId': "5e5ea5c16897e",
        'activate': true,
        'screenshotLight': "5e5ea5c16897e",
        'screenshotDark': "5e5ea5c16897e",
        'status': "ready",
        'buildLogs': "Compiling source files...",
        'buildDuration': 128,
        'providerRepositoryName': "database",
        'providerRepositoryOwner': "utopia",
        'providerRepositoryUrl':
            "https://github.com/vermakhushboo/g4-node-function",
        'providerCommitHash': "7c3f25d",
        'providerCommitAuthorUrl': "https://github.com/vermakhushboo",
        'providerCommitAuthor': "Khushboo Verma",
        'providerCommitMessage': "Update index.js",
        'providerCommitUrl':
            "https://github.com/vermakhushboo/g4-node-function/commit/60c0416257a9cbcdd96b2d370c38d8f8d150ccfb",
        'providerBranch': "0.7.x",
        'providerBranchUrl':
            "https://github.com/vermakhushboo/appwrite/tree/0.7.x",
      };

      when(
        client.call(
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await sites.createVcsDeployment(
        siteId: "<SITE_ID>",
        type: enums.VCSReferenceType.branch,
        reference: "<REFERENCE>",
        activate: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/sites/%3CSITE_ID%3E/deployments/vcs",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "type": enums.VCSReferenceType.branch.value,
        "reference": "<REFERENCE>",
        "activate": false,
      });
      expect(response, isA<models.Deployment>());
    });

    test('test method getDeployment()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'type': "vcs",
        'resourceId': "5e5ea6g16897e",
        'resourceType': "functions",
        'entrypoint': "index.js",
        'sourceSize': 128,
        'buildSize': 128,
        'totalSize': 128,
        'buildId': "5e5ea5c16897e",
        'activate': true,
        'screenshotLight': "5e5ea5c16897e",
        'screenshotDark': "5e5ea5c16897e",
        'status': "ready",
        'buildLogs': "Compiling source files...",
        'buildDuration': 128,
        'providerRepositoryName': "database",
        'providerRepositoryOwner': "utopia",
        'providerRepositoryUrl':
            "https://github.com/vermakhushboo/g4-node-function",
        'providerCommitHash': "7c3f25d",
        'providerCommitAuthorUrl': "https://github.com/vermakhushboo",
        'providerCommitAuthor': "Khushboo Verma",
        'providerCommitMessage': "Update index.js",
        'providerCommitUrl':
            "https://github.com/vermakhushboo/g4-node-function/commit/60c0416257a9cbcdd96b2d370c38d8f8d150ccfb",
        'providerBranch': "0.7.x",
        'providerBranchUrl':
            "https://github.com/vermakhushboo/appwrite/tree/0.7.x",
      };

      when(
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await sites.getDeployment(
        siteId: "<SITE_ID>",
        deploymentId: "<DEPLOYMENT_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/sites/%3CSITE_ID%3E/deployments/%3CDEPLOYMENT_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.Deployment>());
    });

    test('test method deleteDeployment()', () async {
      final data = '';

      when(
        client.call(
          HttpMethod.delete,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await sites.deleteDeployment(
        siteId: "<SITE_ID>",
        deploymentId: "<DEPLOYMENT_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.delete,
          path: "/sites/%3CSITE_ID%3E/deployments/%3CDEPLOYMENT_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
    });

    test('test method getDeploymentDownload()', () async {
      final Uint8List data = Uint8List.fromList([]);

      when(
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await sites.getDeploymentDownload(
        siteId: "<SITE_ID>",
        deploymentId: "<DEPLOYMENT_ID>",
        type: enums.DeploymentDownloadType.source,
        token: "<TOKEN>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/sites/%3CSITE_ID%3E/deployments/%3CDEPLOYMENT_ID%3E/download",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "type": enums.DeploymentDownloadType.source.value,
        "token": "<TOKEN>",
      });
      expect(response, isA<Uint8List>());
    });

    test('test method updateDeploymentStatus()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'type': "vcs",
        'resourceId': "5e5ea6g16897e",
        'resourceType': "functions",
        'entrypoint': "index.js",
        'sourceSize': 128,
        'buildSize': 128,
        'totalSize': 128,
        'buildId': "5e5ea5c16897e",
        'activate': true,
        'screenshotLight': "5e5ea5c16897e",
        'screenshotDark': "5e5ea5c16897e",
        'status': "ready",
        'buildLogs': "Compiling source files...",
        'buildDuration': 128,
        'providerRepositoryName': "database",
        'providerRepositoryOwner': "utopia",
        'providerRepositoryUrl':
            "https://github.com/vermakhushboo/g4-node-function",
        'providerCommitHash': "7c3f25d",
        'providerCommitAuthorUrl': "https://github.com/vermakhushboo",
        'providerCommitAuthor': "Khushboo Verma",
        'providerCommitMessage': "Update index.js",
        'providerCommitUrl':
            "https://github.com/vermakhushboo/g4-node-function/commit/60c0416257a9cbcdd96b2d370c38d8f8d150ccfb",
        'providerBranch': "0.7.x",
        'providerBranchUrl':
            "https://github.com/vermakhushboo/appwrite/tree/0.7.x",
      };

      when(
        client.call(
          HttpMethod.patch,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await sites.updateDeploymentStatus(
        siteId: "<SITE_ID>",
        deploymentId: "<DEPLOYMENT_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/sites/%3CSITE_ID%3E/deployments/%3CDEPLOYMENT_ID%3E/status",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.Deployment>());
    });

    test('test method listLogs()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'executions': [],
      };

      when(
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await sites.listLogs(
        siteId: "<SITE_ID>",
        queries: [],
        total: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/sites/%3CSITE_ID%3E/logs",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "queries": isA<List>(),
        "total": false,
      });
      expect(response, isA<models.ExecutionList>());
    });

    test('test method getLog()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        '\$permissions': [],
        'resourceId': "5e5ea6g16897e",
        'resourceType': "functions",
        'deploymentId': "5e5ea5c16897e",
        'trigger': "http",
        'status': "processing",
        'requestMethod': "GET",
        'requestPath': "/articles?id=5",
        'requestHeaders': [],
        'responseStatusCode': 200,
        'responseBody': "",
        'responseHeaders': [],
        'logs': "",
        'errors': "",
        'duration': 1.23,
      };

      when(
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await sites.getLog(
        siteId: "<SITE_ID>",
        logId: "<LOG_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/sites/%3CSITE_ID%3E/logs/%3CLOG_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.Execution>());
    });

    test('test method deleteLog()', () async {
      final data = '';

      when(
        client.call(
          HttpMethod.delete,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await sites.deleteLog(
        siteId: "<SITE_ID>",
        logId: "<LOG_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.delete,
          path: "/sites/%3CSITE_ID%3E/logs/%3CLOG_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
    });

    test('test method listVariables()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'variables': [],
      };

      when(
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await sites.listVariables(
        siteId: "<SITE_ID>",
        queries: [],
        total: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/sites/%3CSITE_ID%3E/variables",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "queries": isA<List>(),
        "total": false,
      });
      expect(response, isA<models.VariableList>());
    });

    test('test method createVariable()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'key': "API_KEY",
        'description': "Stripe secret key used at checkout.",
        'value': "myPa\$\$word1",
        'secret': true,
        'resourceType': "function",
        'resourceId': "myAwesomeFunction",
      };

      when(
        client.call(
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await sites.createVariable(
        siteId: "<SITE_ID>",
        variableId: "<VARIABLE_ID>",
        key: "<KEY>",
        value: "<VALUE>",
        secret: false,
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/sites/%3CSITE_ID%3E/variables",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "variableId": "<VARIABLE_ID>",
        "key": "<KEY>",
        "value": "<VALUE>",
        "secret": false,
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.Variable>());
    });

    test('test method getVariable()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'key': "API_KEY",
        'description': "Stripe secret key used at checkout.",
        'value': "myPa\$\$word1",
        'secret': true,
        'resourceType': "function",
        'resourceId': "myAwesomeFunction",
      };

      when(
        client.call(
          HttpMethod.get,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await sites.getVariable(
        siteId: "<SITE_ID>",
        variableId: "<VARIABLE_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/sites/%3CSITE_ID%3E/variables/%3CVARIABLE_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.Variable>());
    });

    test('test method updateVariable()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'key': "API_KEY",
        'description': "Stripe secret key used at checkout.",
        'value': "myPa\$\$word1",
        'secret': true,
        'resourceType': "function",
        'resourceId': "myAwesomeFunction",
      };

      when(
        client.call(
          HttpMethod.put,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await sites.updateVariable(
        siteId: "<SITE_ID>",
        variableId: "<VARIABLE_ID>",
        key: "<KEY>",
        value: "<VALUE>",
        secret: false,
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.put,
          path: "/sites/%3CSITE_ID%3E/variables/%3CVARIABLE_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "key": "<KEY>",
        "value": "<VALUE>",
        "secret": false,
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.Variable>());
    });

    test('test method deleteVariable()', () async {
      final data = '';

      when(
        client.call(
          HttpMethod.delete,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await sites.deleteVariable(
        siteId: "<SITE_ID>",
        variableId: "<VARIABLE_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.delete,
          path: "/sites/%3CSITE_ID%3E/variables/%3CVARIABLE_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
    });
  });
}
