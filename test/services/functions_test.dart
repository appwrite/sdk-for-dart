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
  group('Functions test', () {
    late MockClient client;
    late Functions functions;

    setUp(() {
      client = MockClient();
      functions = Functions(client);
    });

    test('test method list()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'functions': [],
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

      final response = await functions.list(
        queries: [],
        search: "<SEARCH>",
        total: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/functions",
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
      expect(response, isA<models.FunctionList>());
    });

    test('test method create()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'execute': [],
        'name': "My Function",
        'description': "Sends a welcome email to newly registered users.",
        'enabled': true,
        'live': true,
        'logging': true,
        'runtime': "python-3.8",
        'deploymentRetention': 7,
        'deploymentId': "5e5ea5c16897e",
        'deploymentCreatedAt': "2020-10-15T06:38:00.000+00:00",
        'latestDeploymentId': "5e5ea5c16897e",
        'latestDeploymentCreatedAt': "2020-10-15T06:38:00.000+00:00",
        'latestDeploymentStatus': "ready",
        'scopes': [],
        'vars': [],
        'events': [],
        'schedule': "5 4 * * *",
        'timeout': 300,
        'entrypoint': "index.js",
        'commands': "npm install",
        'version': "v2",
        'installationId': "6m40at4ejk5h2u9s1hboo",
        'providerRepositoryId': "appwrite",
        'providerBranch': "main",
        'providerRootDirectory': "functions/helloWorld",
        'providerSilentMode': true,
        'providerBranches': [],
        'providerPaths': [],
        'buildSpecification': "s-1vcpu-512mb",
        'runtimeSpecification': "s-1vcpu-512mb",
        'emailEnabled': true,
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

      final response = await functions.create(
        functionId: "<FUNCTION_ID>",
        name: "<NAME>",
        runtime: enums.Runtime.node145,
        execute: [],
        events: [],
        schedule: "0 0 * * *",
        timeout: 1,
        enabled: false,
        logging: false,
        entrypoint: "<ENTRYPOINT>",
        commands: "<COMMANDS>",
        scopes: [enums.ProjectKeyScopes.projectRead],
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
        interval: 1,
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/functions",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "functionId": "<FUNCTION_ID>",
        "name": "<NAME>",
        "runtime": enums.Runtime.node145.value,
        "execute": isA<List>(),
        "events": isA<List>(),
        "schedule": "0 0 * * *",
        "timeout": 1,
        "enabled": false,
        "logging": false,
        "entrypoint": "<ENTRYPOINT>",
        "commands": "<COMMANDS>",
        "scopes": isA<List>(),
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
        "interval": 1,
        "description": "<DESCRIPTION>",
      });
      expect(response, isA<models.Func>());
    });

    test('test method listRuntimes()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'runtimes': [],
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

      final response = await functions.listRuntimes(
        total: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/functions/runtimes",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "total": false,
      });
      expect(response, isA<models.RuntimeList>());
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

      final response = await functions.listSpecifications(
        type: "runtimes",
        total: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/functions/specifications",
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
        'execute': [],
        'name': "My Function",
        'description': "Sends a welcome email to newly registered users.",
        'enabled': true,
        'live': true,
        'logging': true,
        'runtime': "python-3.8",
        'deploymentRetention': 7,
        'deploymentId': "5e5ea5c16897e",
        'deploymentCreatedAt': "2020-10-15T06:38:00.000+00:00",
        'latestDeploymentId': "5e5ea5c16897e",
        'latestDeploymentCreatedAt': "2020-10-15T06:38:00.000+00:00",
        'latestDeploymentStatus': "ready",
        'scopes': [],
        'vars': [],
        'events': [],
        'schedule': "5 4 * * *",
        'timeout': 300,
        'entrypoint': "index.js",
        'commands': "npm install",
        'version': "v2",
        'installationId': "6m40at4ejk5h2u9s1hboo",
        'providerRepositoryId': "appwrite",
        'providerBranch': "main",
        'providerRootDirectory': "functions/helloWorld",
        'providerSilentMode': true,
        'providerBranches': [],
        'providerPaths': [],
        'buildSpecification': "s-1vcpu-512mb",
        'runtimeSpecification': "s-1vcpu-512mb",
        'emailEnabled': true,
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

      final response = await functions.get(
        functionId: "<FUNCTION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/functions/%3CFUNCTION_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.Func>());
    });

    test('test method update()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'execute': [],
        'name': "My Function",
        'description': "Sends a welcome email to newly registered users.",
        'enabled': true,
        'live': true,
        'logging': true,
        'runtime': "python-3.8",
        'deploymentRetention': 7,
        'deploymentId': "5e5ea5c16897e",
        'deploymentCreatedAt': "2020-10-15T06:38:00.000+00:00",
        'latestDeploymentId': "5e5ea5c16897e",
        'latestDeploymentCreatedAt': "2020-10-15T06:38:00.000+00:00",
        'latestDeploymentStatus': "ready",
        'scopes': [],
        'vars': [],
        'events': [],
        'schedule': "5 4 * * *",
        'timeout': 300,
        'entrypoint': "index.js",
        'commands': "npm install",
        'version': "v2",
        'installationId': "6m40at4ejk5h2u9s1hboo",
        'providerRepositoryId': "appwrite",
        'providerBranch': "main",
        'providerRootDirectory': "functions/helloWorld",
        'providerSilentMode': true,
        'providerBranches': [],
        'providerPaths': [],
        'buildSpecification': "s-1vcpu-512mb",
        'runtimeSpecification': "s-1vcpu-512mb",
        'emailEnabled': true,
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

      final response = await functions.update(
        functionId: "<FUNCTION_ID>",
        name: "<NAME>",
        runtime: enums.Runtime.node145,
        execute: [],
        events: [],
        schedule: "0 0 * * *",
        timeout: 1,
        enabled: false,
        logging: false,
        entrypoint: "<ENTRYPOINT>",
        commands: "<COMMANDS>",
        scopes: [enums.ProjectKeyScopes.projectRead],
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
        interval: 1,
        description: "<DESCRIPTION>",
        emailEnabled: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.put,
          path: "/functions/%3CFUNCTION_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "name": "<NAME>",
        "runtime": enums.Runtime.node145.value,
        "execute": isA<List>(),
        "events": isA<List>(),
        "schedule": "0 0 * * *",
        "timeout": 1,
        "enabled": false,
        "logging": false,
        "entrypoint": "<ENTRYPOINT>",
        "commands": "<COMMANDS>",
        "scopes": isA<List>(),
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
        "interval": 1,
        "description": "<DESCRIPTION>",
        "emailEnabled": false,
      });
      expect(response, isA<models.Func>());
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

      final response = await functions.delete(
        functionId: "<FUNCTION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.delete,
          path: "/functions/%3CFUNCTION_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
    });

    test('test method updateFunctionDeployment()', () async {
      final Map<String, dynamic> data = {
        '\$id': "5e5ea5c16897e",
        '\$createdAt': "2020-10-15T06:38:00.000+00:00",
        '\$updatedAt': "2020-10-15T06:38:00.000+00:00",
        'execute': [],
        'name': "My Function",
        'description': "Sends a welcome email to newly registered users.",
        'enabled': true,
        'live': true,
        'logging': true,
        'runtime': "python-3.8",
        'deploymentRetention': 7,
        'deploymentId': "5e5ea5c16897e",
        'deploymentCreatedAt': "2020-10-15T06:38:00.000+00:00",
        'latestDeploymentId': "5e5ea5c16897e",
        'latestDeploymentCreatedAt': "2020-10-15T06:38:00.000+00:00",
        'latestDeploymentStatus': "ready",
        'scopes': [],
        'vars': [],
        'events': [],
        'schedule': "5 4 * * *",
        'timeout': 300,
        'entrypoint': "index.js",
        'commands': "npm install",
        'version': "v2",
        'installationId': "6m40at4ejk5h2u9s1hboo",
        'providerRepositoryId': "appwrite",
        'providerBranch': "main",
        'providerRootDirectory': "functions/helloWorld",
        'providerSilentMode': true,
        'providerBranches': [],
        'providerPaths': [],
        'buildSpecification': "s-1vcpu-512mb",
        'runtimeSpecification': "s-1vcpu-512mb",
        'emailEnabled': true,
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

      final response = await functions.updateFunctionDeployment(
        functionId: "<FUNCTION_ID>",
        deploymentId: "<DEPLOYMENT_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/functions/%3CFUNCTION_ID%3E/deployment",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "deploymentId": "<DEPLOYMENT_ID>",
      });
      expect(response, isA<models.Func>());
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

      final response = await functions.listDeployments(
        functionId: "<FUNCTION_ID>",
        queries: [],
        search: "<SEARCH>",
        total: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/functions/%3CFUNCTION_ID%3E/deployments",
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

      final response = await functions.createDeployment(
        functionId: "<FUNCTION_ID>",
        code: InputFile.fromPath(path: './image.png'),
        activate: false,
        entrypoint: "<ENTRYPOINT>",
        commands: "<COMMANDS>",
      );
      final Map<String, dynamic> params = verify(
        client.chunkedUpload(
          path: "/functions/%3CFUNCTION_ID%3E/deployments",
          params: captureAnyNamed('params'),
          paramName: anyNamed('paramName'),
          idParamName: anyNamed('idParamName'),
          headers: anyNamed('headers'),
          method: HttpMethod.post,
        ),
      ).captured.single;
      expect(params, {
        "entrypoint": "<ENTRYPOINT>",
        "commands": "<COMMANDS>",
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

      final response = await functions.createDuplicateDeployment(
        functionId: "<FUNCTION_ID>",
        deploymentId: "<DEPLOYMENT_ID>",
        buildId: "<BUILD_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/functions/%3CFUNCTION_ID%3E/deployments/duplicate",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "deploymentId": "<DEPLOYMENT_ID>",
        "buildId": "<BUILD_ID>",
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

      final response = await functions.createTemplateDeployment(
        functionId: "<FUNCTION_ID>",
        repository: "<REPOSITORY>",
        owner: "<OWNER>",
        rootDirectory: "<ROOT_DIRECTORY>",
        type: enums.TemplateReferenceType.commit,
        reference: "<REFERENCE>",
        activate: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/functions/%3CFUNCTION_ID%3E/deployments/template",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "repository": "<REPOSITORY>",
        "owner": "<OWNER>",
        "rootDirectory": "<ROOT_DIRECTORY>",
        "type": enums.TemplateReferenceType.commit.value,
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

      final response = await functions.createVcsDeployment(
        functionId: "<FUNCTION_ID>",
        type: enums.VCSReferenceType.branch,
        reference: "<REFERENCE>",
        activate: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/functions/%3CFUNCTION_ID%3E/deployments/vcs",
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

      final response = await functions.getDeployment(
        functionId: "<FUNCTION_ID>",
        deploymentId: "<DEPLOYMENT_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/functions/%3CFUNCTION_ID%3E/deployments/%3CDEPLOYMENT_ID%3E",
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

      final response = await functions.deleteDeployment(
        functionId: "<FUNCTION_ID>",
        deploymentId: "<DEPLOYMENT_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.delete,
          path: "/functions/%3CFUNCTION_ID%3E/deployments/%3CDEPLOYMENT_ID%3E",
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

      final response = await functions.getDeploymentDownload(
        functionId: "<FUNCTION_ID>",
        deploymentId: "<DEPLOYMENT_ID>",
        type: enums.DeploymentDownloadType.source,
        token: "<TOKEN>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/functions/%3CFUNCTION_ID%3E/deployments/%3CDEPLOYMENT_ID%3E/download",
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

      final response = await functions.updateDeploymentStatus(
        functionId: "<FUNCTION_ID>",
        deploymentId: "<DEPLOYMENT_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.patch,
          path: "/functions/%3CFUNCTION_ID%3E/deployments/%3CDEPLOYMENT_ID%3E/status",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.Deployment>());
    });

    test('test method listExecutions()', () async {
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

      final response = await functions.listExecutions(
        functionId: "<FUNCTION_ID>",
        queries: [],
        total: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/functions/%3CFUNCTION_ID%3E/executions",
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

    test('test method createExecution()', () async {
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
          HttpMethod.post,
          path: anyNamed('path'),
          headers: anyNamed('headers'),
          params: anyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).thenAnswer((_) async => Response(data: data));

      final response = await functions.createExecution(
        functionId: "<FUNCTION_ID>",
        body: "<BODY>",
        xasync: false,
        path: "<PATH>",
        method: enums.ExecutionMethod.gET,
        headers: {},
        scheduledAt: "<SCHEDULED_AT>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/functions/%3CFUNCTION_ID%3E/executions",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, {
        "body": "<BODY>",
        "async": false,
        "path": "<PATH>",
        "method": enums.ExecutionMethod.gET.value,
        "headers": isA<Map>(),
        "scheduledAt": "<SCHEDULED_AT>",
      });
      expect(response, isA<models.Execution>());
    });

    test('test method getExecution()', () async {
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

      final response = await functions.getExecution(
        functionId: "<FUNCTION_ID>",
        executionId: "<EXECUTION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/functions/%3CFUNCTION_ID%3E/executions/%3CEXECUTION_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
      expect(response, isA<models.Execution>());
    });

    test('test method deleteExecution()', () async {
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

      final response = await functions.deleteExecution(
        functionId: "<FUNCTION_ID>",
        executionId: "<EXECUTION_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.delete,
          path: "/functions/%3CFUNCTION_ID%3E/executions/%3CEXECUTION_ID%3E",
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

      final response = await functions.listVariables(
        functionId: "<FUNCTION_ID>",
        queries: [],
        total: false,
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/functions/%3CFUNCTION_ID%3E/variables",
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

      final response = await functions.createVariable(
        functionId: "<FUNCTION_ID>",
        variableId: "<VARIABLE_ID>",
        key: "<KEY>",
        value: "<VALUE>",
        secret: false,
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.post,
          path: "/functions/%3CFUNCTION_ID%3E/variables",
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

      final response = await functions.getVariable(
        functionId: "<FUNCTION_ID>",
        variableId: "<VARIABLE_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.get,
          path: "/functions/%3CFUNCTION_ID%3E/variables/%3CVARIABLE_ID%3E",
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

      final response = await functions.updateVariable(
        functionId: "<FUNCTION_ID>",
        variableId: "<VARIABLE_ID>",
        key: "<KEY>",
        value: "<VALUE>",
        secret: false,
        description: "<DESCRIPTION>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.put,
          path: "/functions/%3CFUNCTION_ID%3E/variables/%3CVARIABLE_ID%3E",
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

      final response = await functions.deleteVariable(
        functionId: "<FUNCTION_ID>",
        variableId: "<VARIABLE_ID>",
      );
      final Map<String, dynamic> params = verify(
        client.call(
          HttpMethod.delete,
          path: "/functions/%3CFUNCTION_ID%3E/variables/%3CVARIABLE_ID%3E",
          headers: anyNamed('headers'),
          params: captureAnyNamed('params'),
          responseType: anyNamed('responseType'),
        ),
      ).captured.single;
      expect(params, isEmpty);
    });
  });
}
