import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:dart_appwrite/models.dart' as models;
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
    String path = '',
    Map<String, String> headers = const {},
    Map<String, dynamic> params = const {},
    ResponseType? responseType,
  }) async {
    return super.noSuchMethod(Invocation.method(#call, [method]),
        returnValue: Response());
  }

  @override
  Future webAuth(
    Uri? url, 
    {
        String? callbackUrlScheme,
    }
  ) async {
    return super.noSuchMethod(Invocation.method(#webAuth, [url]), returnValue: 'done');
  }

  @override
  Future<Response> chunkedUpload({
    String? path,
    Map<String, dynamic>? params,
    String? paramName,
    String? idParamName,
    Map<String, String>? headers,
    Function(UploadProgress)? onProgress,
  }) async {
    return super.noSuchMethod(Invocation.method(#chunkedUpload, [path, params, paramName, idParamName, headers]), returnValue: Response(data: {}));
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
                'functions': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await functions.list(
            );
            expect(response, isA<models.FunctionList>());

        });

        test('test method create()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'execute': [],
                'name': 'My Function',
                'enabled': true,
                'live': true,
                'logging': true,
                'runtime': 'python-3.8',
                'deployment': '5e5ea5c16897e',
                'scopes': [],
                'vars': [],
                'events': [],
                'schedule': '5 4 * * *',
                'timeout': 300,
                'entrypoint': 'index.js',
                'commands': 'npm install',
                'version': 'v2',
                'installationId': '6m40at4ejk5h2u9s1hboo',
                'providerRepositoryId': 'appwrite',
                'providerBranch': 'main',
                'providerRootDirectory': 'functions/helloWorld',
                'providerSilentMode': true,
                'specification': 's-0.5vcpu-512mb',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await functions.create(
                functionId: '<FUNCTION_ID>',
                name: '<NAME>',
                runtime: 'node-14.5',
            );
            expect(response, isA<models.Func>());

        });

        test('test method listRuntimes()', () async {
            final Map<String, dynamic> data = {
                'total': 5,
                'runtimes': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await functions.listRuntimes(
            );
            expect(response, isA<models.RuntimeList>());

        });

        test('test method listSpecifications()', () async {
            final Map<String, dynamic> data = {
                'total': 5,
                'specifications': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await functions.listSpecifications(
            );
            expect(response, isA<models.SpecificationList>());

        });

        test('test method listTemplates()', () async {
            final Map<String, dynamic> data = {
                'total': 5,
                'templates': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await functions.listTemplates(
            );
            expect(response, isA<models.TemplateFunctionList>());

        });

        test('test method getTemplate()', () async {
            final Map<String, dynamic> data = {
                'icon': 'icon-lightning-bolt',
                'id': 'starter',
                'name': 'Starter function',
                'tagline': 'A simple function to get started.',
                'permissions': [],
                'events': [],
                'cron': '0 0 * * *',
                'timeout': 300,
                'useCases': [],
                'runtimes': [],
                'instructions': 'For documentation and instructions check out <link>.',
                'vcsProvider': 'github',
                'providerRepositoryId': 'templates',
                'providerOwner': 'appwrite',
                'providerVersion': 'main',
                'variables': [],
                'scopes': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await functions.getTemplate(
                templateId: '<TEMPLATE_ID>',
            );
            expect(response, isA<models.TemplateFunction>());

        });

        test('test method get()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'execute': [],
                'name': 'My Function',
                'enabled': true,
                'live': true,
                'logging': true,
                'runtime': 'python-3.8',
                'deployment': '5e5ea5c16897e',
                'scopes': [],
                'vars': [],
                'events': [],
                'schedule': '5 4 * * *',
                'timeout': 300,
                'entrypoint': 'index.js',
                'commands': 'npm install',
                'version': 'v2',
                'installationId': '6m40at4ejk5h2u9s1hboo',
                'providerRepositoryId': 'appwrite',
                'providerBranch': 'main',
                'providerRootDirectory': 'functions/helloWorld',
                'providerSilentMode': true,
                'specification': 's-0.5vcpu-512mb',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await functions.get(
                functionId: '<FUNCTION_ID>',
            );
            expect(response, isA<models.Func>());

        });

        test('test method update()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'execute': [],
                'name': 'My Function',
                'enabled': true,
                'live': true,
                'logging': true,
                'runtime': 'python-3.8',
                'deployment': '5e5ea5c16897e',
                'scopes': [],
                'vars': [],
                'events': [],
                'schedule': '5 4 * * *',
                'timeout': 300,
                'entrypoint': 'index.js',
                'commands': 'npm install',
                'version': 'v2',
                'installationId': '6m40at4ejk5h2u9s1hboo',
                'providerRepositoryId': 'appwrite',
                'providerBranch': 'main',
                'providerRootDirectory': 'functions/helloWorld',
                'providerSilentMode': true,
                'specification': 's-0.5vcpu-512mb',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await functions.update(
                functionId: '<FUNCTION_ID>',
                name: '<NAME>',
            );
            expect(response, isA<models.Func>());

        });

        test('test method delete()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await functions.delete(
                functionId: '<FUNCTION_ID>',
            );
        });

        test('test method listDeployments()', () async {
            final Map<String, dynamic> data = {
                'total': 5,
                'deployments': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await functions.listDeployments(
                functionId: '<FUNCTION_ID>',
            );
            expect(response, isA<models.DeploymentList>());

        });

        test('test method createDeployment()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'type': 'vcs',
                'resourceId': '5e5ea6g16897e',
                'resourceType': 'functions',
                'entrypoint': 'index.js',
                'size': 128,
                'buildId': '5e5ea5c16897e',
                'activate': true,
                'status': 'ready',
                'buildLogs': 'Compiling source files...',
                'buildTime': 128,
                'providerRepositoryName': 'database',
                'providerRepositoryOwner': 'utopia',
                'providerRepositoryUrl': 'https://github.com/vermakhushboo/g4-node-function',
                'providerBranch': '0.7.x',
                'providerCommitHash': '7c3f25d',
                'providerCommitAuthorUrl': 'https://github.com/vermakhushboo',
                'providerCommitAuthor': 'Khushboo Verma',
                'providerCommitMessage': 'Update index.js',
                'providerCommitUrl': 'https://github.com/vermakhushboo/g4-node-function/commit/60c0416257a9cbcdd96b2d370c38d8f8d150ccfb',
                'providerBranchUrl': 'https://github.com/vermakhushboo/appwrite/tree/0.7.x',};


            when(client.chunkedUpload(
                path: argThat(isNotNull),
                params: argThat(isNotNull),
                paramName: argThat(isNotNull),
                idParamName: argThat(isNotNull),
                headers: argThat(isNotNull),
            )).thenAnswer((_) async => Response(data: data));


            final response = await functions.createDeployment(
                functionId: '<FUNCTION_ID>',
                code: InputFile.fromPath(path: './image.png'),
                activate: true,
            );
            expect(response, isA<models.Deployment>());

        });

        test('test method getDeployment()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'type': 'vcs',
                'resourceId': '5e5ea6g16897e',
                'resourceType': 'functions',
                'entrypoint': 'index.js',
                'size': 128,
                'buildId': '5e5ea5c16897e',
                'activate': true,
                'status': 'ready',
                'buildLogs': 'Compiling source files...',
                'buildTime': 128,
                'providerRepositoryName': 'database',
                'providerRepositoryOwner': 'utopia',
                'providerRepositoryUrl': 'https://github.com/vermakhushboo/g4-node-function',
                'providerBranch': '0.7.x',
                'providerCommitHash': '7c3f25d',
                'providerCommitAuthorUrl': 'https://github.com/vermakhushboo',
                'providerCommitAuthor': 'Khushboo Verma',
                'providerCommitMessage': 'Update index.js',
                'providerCommitUrl': 'https://github.com/vermakhushboo/g4-node-function/commit/60c0416257a9cbcdd96b2d370c38d8f8d150ccfb',
                'providerBranchUrl': 'https://github.com/vermakhushboo/appwrite/tree/0.7.x',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await functions.getDeployment(
                functionId: '<FUNCTION_ID>',
                deploymentId: '<DEPLOYMENT_ID>',
            );
            expect(response, isA<models.Deployment>());

        });

        test('test method updateDeployment()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'execute': [],
                'name': 'My Function',
                'enabled': true,
                'live': true,
                'logging': true,
                'runtime': 'python-3.8',
                'deployment': '5e5ea5c16897e',
                'scopes': [],
                'vars': [],
                'events': [],
                'schedule': '5 4 * * *',
                'timeout': 300,
                'entrypoint': 'index.js',
                'commands': 'npm install',
                'version': 'v2',
                'installationId': '6m40at4ejk5h2u9s1hboo',
                'providerRepositoryId': 'appwrite',
                'providerBranch': 'main',
                'providerRootDirectory': 'functions/helloWorld',
                'providerSilentMode': true,
                'specification': 's-0.5vcpu-512mb',};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await functions.updateDeployment(
                functionId: '<FUNCTION_ID>',
                deploymentId: '<DEPLOYMENT_ID>',
            );
            expect(response, isA<models.Func>());

        });

        test('test method deleteDeployment()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await functions.deleteDeployment(
                functionId: '<FUNCTION_ID>',
                deploymentId: '<DEPLOYMENT_ID>',
            );
        });

        test('test method createBuild()', () async {
            final data = '';

            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await functions.createBuild(
                functionId: '<FUNCTION_ID>',
                deploymentId: '<DEPLOYMENT_ID>',
            );
        });

        test('test method updateDeploymentBuild()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                'deploymentId': '5e5ea5c16897e',
                'status': 'ready',
                'stdout': '',
                'stderr': '',
                'startTime': '2020-10-15T06:38:00.000+00:00',
                'endTime': '2020-10-15T06:38:00.000+00:00',
                'duration': 0,
                'size': 128,};


            when(client.call(
                HttpMethod.patch,
            )).thenAnswer((_) async => Response(data: data));


            final response = await functions.updateDeploymentBuild(
                functionId: '<FUNCTION_ID>',
                deploymentId: '<DEPLOYMENT_ID>',
            );
            expect(response, isA<models.Build>());

        });

        test('test method getDeploymentDownload()', () async {final Uint8List data = Uint8List.fromList([]);

            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await functions.getDeploymentDownload(
                functionId: '<FUNCTION_ID>',
                deploymentId: '<DEPLOYMENT_ID>',
            );
            expect(response, isA<Uint8List>());

        });

        test('test method listExecutions()', () async {
            final Map<String, dynamic> data = {
                'total': 5,
                'executions': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await functions.listExecutions(
                functionId: '<FUNCTION_ID>',
            );
            expect(response, isA<models.ExecutionList>());

        });

        test('test method createExecution()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                '\$permissions': [],
                'functionId': '5e5ea6g16897e',
                'trigger': 'http',
                'status': 'processing',
                'requestMethod': 'GET',
                'requestPath': '/articles?id=5',
                'requestHeaders': [],
                'responseStatusCode': 200,
                'responseBody': 'Developers are awesome.',
                'responseHeaders': [],
                'logs': '',
                'errors': '',
                'duration': 0.4,};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await functions.createExecution(
                functionId: '<FUNCTION_ID>',
            );
            expect(response, isA<models.Execution>());

        });

        test('test method getExecution()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                '\$permissions': [],
                'functionId': '5e5ea6g16897e',
                'trigger': 'http',
                'status': 'processing',
                'requestMethod': 'GET',
                'requestPath': '/articles?id=5',
                'requestHeaders': [],
                'responseStatusCode': 200,
                'responseBody': 'Developers are awesome.',
                'responseHeaders': [],
                'logs': '',
                'errors': '',
                'duration': 0.4,};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await functions.getExecution(
                functionId: '<FUNCTION_ID>',
                executionId: '<EXECUTION_ID>',
            );
            expect(response, isA<models.Execution>());

        });

        test('test method deleteExecution()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await functions.deleteExecution(
                functionId: '<FUNCTION_ID>',
                executionId: '<EXECUTION_ID>',
            );
        });

        test('test method listVariables()', () async {
            final Map<String, dynamic> data = {
                'total': 5,
                'variables': [],};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await functions.listVariables(
                functionId: '<FUNCTION_ID>',
            );
            expect(response, isA<models.VariableList>());

        });

        test('test method createVariable()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'key': 'API_KEY',
                'value': 'myPa\$\$word1',
                'resourceType': 'function',
                'resourceId': 'myAwesomeFunction',};


            when(client.call(
                HttpMethod.post,
            )).thenAnswer((_) async => Response(data: data));


            final response = await functions.createVariable(
                functionId: '<FUNCTION_ID>',
                key: '<KEY>',
                value: '<VALUE>',
            );
            expect(response, isA<models.Variable>());

        });

        test('test method getVariable()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'key': 'API_KEY',
                'value': 'myPa\$\$word1',
                'resourceType': 'function',
                'resourceId': 'myAwesomeFunction',};


            when(client.call(
                HttpMethod.get,
            )).thenAnswer((_) async => Response(data: data));


            final response = await functions.getVariable(
                functionId: '<FUNCTION_ID>',
                variableId: '<VARIABLE_ID>',
            );
            expect(response, isA<models.Variable>());

        });

        test('test method updateVariable()', () async {
            final Map<String, dynamic> data = {
                '\$id': '5e5ea5c16897e',
                '\$createdAt': '2020-10-15T06:38:00.000+00:00',
                '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
                'key': 'API_KEY',
                'value': 'myPa\$\$word1',
                'resourceType': 'function',
                'resourceId': 'myAwesomeFunction',};


            when(client.call(
                HttpMethod.put,
            )).thenAnswer((_) async => Response(data: data));


            final response = await functions.updateVariable(
                functionId: '<FUNCTION_ID>',
                variableId: '<VARIABLE_ID>',
                key: '<KEY>',
            );
            expect(response, isA<models.Variable>());

        });

        test('test method deleteVariable()', () async {
            final data = '';

            when(client.call(
                HttpMethod.delete,
            )).thenAnswer((_) async => Response(data: data));


            final response = await functions.deleteVariable(
                functionId: '<FUNCTION_ID>',
                variableId: '<VARIABLE_ID>',
            );
        });

    });
}