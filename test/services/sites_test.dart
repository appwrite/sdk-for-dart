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
    String path = '',
    Map<String, String> headers = const {},
    Map<String, dynamic> params = const {},
    ResponseType? responseType,
  }) async {
    return super.noSuchMethod(Invocation.method(#call, [method]),
        returnValue: Response());
  }

  @override
  Future<String?> webAuth(Uri url) async {
    return super
        .noSuchMethod(Invocation.method(#webAuth, [url]), returnValue: 'done');
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
    return super.noSuchMethod(
        Invocation.method(
            #chunkedUpload, [path, params, paramName, idParamName, headers]),
        returnValue: Response(data: {}));
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

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await sites.list();
      expect(response, isA<models.SiteList>());
    });

    test('test method create()', () async {
      final Map<String, dynamic> data = {
        '\$id': '5e5ea5c16897e',
        '\$createdAt': '2020-10-15T06:38:00.000+00:00',
        '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
        'name': 'My Site',
        'enabled': true,
        'live': true,
        'logging': true,
        'framework': 'react',
        'deploymentId': '5e5ea5c16897e',
        'deploymentCreatedAt': '2020-10-15T06:38:00.000+00:00',
        'deploymentScreenshotLight': '5e5ea5c16897e',
        'deploymentScreenshotDark': '5e5ea5c16897e',
        'latestDeploymentId': '5e5ea5c16897e',
        'latestDeploymentCreatedAt': '2020-10-15T06:38:00.000+00:00',
        'latestDeploymentStatus': 'ready',
        'vars': [],
        'timeout': 300,
        'installCommand': 'npm install',
        'buildCommand': 'npm run build',
        'outputDirectory': 'build',
        'installationId': '6m40at4ejk5h2u9s1hboo',
        'providerRepositoryId': 'appwrite',
        'providerBranch': 'main',
        'providerRootDirectory': 'sites/helloWorld',
        'providerSilentMode': true,
        'specification': 's-1vcpu-512mb',
        'buildRuntime': 'node-22',
        'adapter': 'static',
        'fallbackFile': 'index.html',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await sites.create(
        siteId: '<SITE_ID>',
        name: '<NAME>',
        framework: enums.Framework.analog,
        buildRuntime: enums.BuildRuntime.node145,
      );
      expect(response, isA<models.Site>());
    });

    test('test method listFrameworks()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'frameworks': [],
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await sites.listFrameworks();
      expect(response, isA<models.FrameworkList>());
    });

    test('test method listSpecifications()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'specifications': [],
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await sites.listSpecifications();
      expect(response, isA<models.SpecificationList>());
    });

    test('test method get()', () async {
      final Map<String, dynamic> data = {
        '\$id': '5e5ea5c16897e',
        '\$createdAt': '2020-10-15T06:38:00.000+00:00',
        '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
        'name': 'My Site',
        'enabled': true,
        'live': true,
        'logging': true,
        'framework': 'react',
        'deploymentId': '5e5ea5c16897e',
        'deploymentCreatedAt': '2020-10-15T06:38:00.000+00:00',
        'deploymentScreenshotLight': '5e5ea5c16897e',
        'deploymentScreenshotDark': '5e5ea5c16897e',
        'latestDeploymentId': '5e5ea5c16897e',
        'latestDeploymentCreatedAt': '2020-10-15T06:38:00.000+00:00',
        'latestDeploymentStatus': 'ready',
        'vars': [],
        'timeout': 300,
        'installCommand': 'npm install',
        'buildCommand': 'npm run build',
        'outputDirectory': 'build',
        'installationId': '6m40at4ejk5h2u9s1hboo',
        'providerRepositoryId': 'appwrite',
        'providerBranch': 'main',
        'providerRootDirectory': 'sites/helloWorld',
        'providerSilentMode': true,
        'specification': 's-1vcpu-512mb',
        'buildRuntime': 'node-22',
        'adapter': 'static',
        'fallbackFile': 'index.html',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await sites.get(
        siteId: '<SITE_ID>',
      );
      expect(response, isA<models.Site>());
    });

    test('test method update()', () async {
      final Map<String, dynamic> data = {
        '\$id': '5e5ea5c16897e',
        '\$createdAt': '2020-10-15T06:38:00.000+00:00',
        '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
        'name': 'My Site',
        'enabled': true,
        'live': true,
        'logging': true,
        'framework': 'react',
        'deploymentId': '5e5ea5c16897e',
        'deploymentCreatedAt': '2020-10-15T06:38:00.000+00:00',
        'deploymentScreenshotLight': '5e5ea5c16897e',
        'deploymentScreenshotDark': '5e5ea5c16897e',
        'latestDeploymentId': '5e5ea5c16897e',
        'latestDeploymentCreatedAt': '2020-10-15T06:38:00.000+00:00',
        'latestDeploymentStatus': 'ready',
        'vars': [],
        'timeout': 300,
        'installCommand': 'npm install',
        'buildCommand': 'npm run build',
        'outputDirectory': 'build',
        'installationId': '6m40at4ejk5h2u9s1hboo',
        'providerRepositoryId': 'appwrite',
        'providerBranch': 'main',
        'providerRootDirectory': 'sites/helloWorld',
        'providerSilentMode': true,
        'specification': 's-1vcpu-512mb',
        'buildRuntime': 'node-22',
        'adapter': 'static',
        'fallbackFile': 'index.html',
      };

      when(client.call(
        HttpMethod.put,
      )).thenAnswer((_) async => Response(data: data));

      final response = await sites.update(
        siteId: '<SITE_ID>',
        name: '<NAME>',
        framework: enums.Framework.analog,
      );
      expect(response, isA<models.Site>());
    });

    test('test method delete()', () async {
      final data = '';

      when(client.call(
        HttpMethod.delete,
      )).thenAnswer((_) async => Response(data: data));

      final response = await sites.delete(
        siteId: '<SITE_ID>',
      );
    });

    test('test method updateSiteDeployment()', () async {
      final Map<String, dynamic> data = {
        '\$id': '5e5ea5c16897e',
        '\$createdAt': '2020-10-15T06:38:00.000+00:00',
        '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
        'name': 'My Site',
        'enabled': true,
        'live': true,
        'logging': true,
        'framework': 'react',
        'deploymentId': '5e5ea5c16897e',
        'deploymentCreatedAt': '2020-10-15T06:38:00.000+00:00',
        'deploymentScreenshotLight': '5e5ea5c16897e',
        'deploymentScreenshotDark': '5e5ea5c16897e',
        'latestDeploymentId': '5e5ea5c16897e',
        'latestDeploymentCreatedAt': '2020-10-15T06:38:00.000+00:00',
        'latestDeploymentStatus': 'ready',
        'vars': [],
        'timeout': 300,
        'installCommand': 'npm install',
        'buildCommand': 'npm run build',
        'outputDirectory': 'build',
        'installationId': '6m40at4ejk5h2u9s1hboo',
        'providerRepositoryId': 'appwrite',
        'providerBranch': 'main',
        'providerRootDirectory': 'sites/helloWorld',
        'providerSilentMode': true,
        'specification': 's-1vcpu-512mb',
        'buildRuntime': 'node-22',
        'adapter': 'static',
        'fallbackFile': 'index.html',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await sites.updateSiteDeployment(
        siteId: '<SITE_ID>',
        deploymentId: '<DEPLOYMENT_ID>',
      );
      expect(response, isA<models.Site>());
    });

    test('test method listDeployments()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'deployments': [],
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await sites.listDeployments(
        siteId: '<SITE_ID>',
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
        'sourceSize': 128,
        'buildSize': 128,
        'totalSize': 128,
        'buildId': '5e5ea5c16897e',
        'activate': true,
        'screenshotLight': '5e5ea5c16897e',
        'screenshotDark': '5e5ea5c16897e',
        'status': 'ready',
        'buildLogs': 'Compiling source files...',
        'buildDuration': 128,
        'providerRepositoryName': 'database',
        'providerRepositoryOwner': 'utopia',
        'providerRepositoryUrl':
            'https://github.com/vermakhushboo/g4-node-function',
        'providerCommitHash': '7c3f25d',
        'providerCommitAuthorUrl': 'https://github.com/vermakhushboo',
        'providerCommitAuthor': 'Khushboo Verma',
        'providerCommitMessage': 'Update index.js',
        'providerCommitUrl':
            'https://github.com/vermakhushboo/g4-node-function/commit/60c0416257a9cbcdd96b2d370c38d8f8d150ccfb',
        'providerBranch': '0.7.x',
        'providerBranchUrl':
            'https://github.com/vermakhushboo/appwrite/tree/0.7.x',
      };

      when(client.chunkedUpload(
        path: argThat(isNotNull),
        params: argThat(isNotNull),
        paramName: argThat(isNotNull),
        idParamName: argThat(isNotNull),
        headers: argThat(isNotNull),
      )).thenAnswer((_) async => Response(data: data));

      final response = await sites.createDeployment(
        siteId: '<SITE_ID>',
        code: InputFile.fromPath(path: './image.png'),
        activate: true,
      );
      expect(response, isA<models.Deployment>());
    });

    test('test method createDuplicateDeployment()', () async {
      final Map<String, dynamic> data = {
        '\$id': '5e5ea5c16897e',
        '\$createdAt': '2020-10-15T06:38:00.000+00:00',
        '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
        'type': 'vcs',
        'resourceId': '5e5ea6g16897e',
        'resourceType': 'functions',
        'entrypoint': 'index.js',
        'sourceSize': 128,
        'buildSize': 128,
        'totalSize': 128,
        'buildId': '5e5ea5c16897e',
        'activate': true,
        'screenshotLight': '5e5ea5c16897e',
        'screenshotDark': '5e5ea5c16897e',
        'status': 'ready',
        'buildLogs': 'Compiling source files...',
        'buildDuration': 128,
        'providerRepositoryName': 'database',
        'providerRepositoryOwner': 'utopia',
        'providerRepositoryUrl':
            'https://github.com/vermakhushboo/g4-node-function',
        'providerCommitHash': '7c3f25d',
        'providerCommitAuthorUrl': 'https://github.com/vermakhushboo',
        'providerCommitAuthor': 'Khushboo Verma',
        'providerCommitMessage': 'Update index.js',
        'providerCommitUrl':
            'https://github.com/vermakhushboo/g4-node-function/commit/60c0416257a9cbcdd96b2d370c38d8f8d150ccfb',
        'providerBranch': '0.7.x',
        'providerBranchUrl':
            'https://github.com/vermakhushboo/appwrite/tree/0.7.x',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await sites.createDuplicateDeployment(
        siteId: '<SITE_ID>',
        deploymentId: '<DEPLOYMENT_ID>',
      );
      expect(response, isA<models.Deployment>());
    });

    test('test method createTemplateDeployment()', () async {
      final Map<String, dynamic> data = {
        '\$id': '5e5ea5c16897e',
        '\$createdAt': '2020-10-15T06:38:00.000+00:00',
        '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
        'type': 'vcs',
        'resourceId': '5e5ea6g16897e',
        'resourceType': 'functions',
        'entrypoint': 'index.js',
        'sourceSize': 128,
        'buildSize': 128,
        'totalSize': 128,
        'buildId': '5e5ea5c16897e',
        'activate': true,
        'screenshotLight': '5e5ea5c16897e',
        'screenshotDark': '5e5ea5c16897e',
        'status': 'ready',
        'buildLogs': 'Compiling source files...',
        'buildDuration': 128,
        'providerRepositoryName': 'database',
        'providerRepositoryOwner': 'utopia',
        'providerRepositoryUrl':
            'https://github.com/vermakhushboo/g4-node-function',
        'providerCommitHash': '7c3f25d',
        'providerCommitAuthorUrl': 'https://github.com/vermakhushboo',
        'providerCommitAuthor': 'Khushboo Verma',
        'providerCommitMessage': 'Update index.js',
        'providerCommitUrl':
            'https://github.com/vermakhushboo/g4-node-function/commit/60c0416257a9cbcdd96b2d370c38d8f8d150ccfb',
        'providerBranch': '0.7.x',
        'providerBranchUrl':
            'https://github.com/vermakhushboo/appwrite/tree/0.7.x',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await sites.createTemplateDeployment(
        siteId: '<SITE_ID>',
        repository: '<REPOSITORY>',
        owner: '<OWNER>',
        rootDirectory: '<ROOT_DIRECTORY>',
        type: enums.TemplateReferenceType.branch,
        reference: '<REFERENCE>',
      );
      expect(response, isA<models.Deployment>());
    });

    test('test method createVcsDeployment()', () async {
      final Map<String, dynamic> data = {
        '\$id': '5e5ea5c16897e',
        '\$createdAt': '2020-10-15T06:38:00.000+00:00',
        '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
        'type': 'vcs',
        'resourceId': '5e5ea6g16897e',
        'resourceType': 'functions',
        'entrypoint': 'index.js',
        'sourceSize': 128,
        'buildSize': 128,
        'totalSize': 128,
        'buildId': '5e5ea5c16897e',
        'activate': true,
        'screenshotLight': '5e5ea5c16897e',
        'screenshotDark': '5e5ea5c16897e',
        'status': 'ready',
        'buildLogs': 'Compiling source files...',
        'buildDuration': 128,
        'providerRepositoryName': 'database',
        'providerRepositoryOwner': 'utopia',
        'providerRepositoryUrl':
            'https://github.com/vermakhushboo/g4-node-function',
        'providerCommitHash': '7c3f25d',
        'providerCommitAuthorUrl': 'https://github.com/vermakhushboo',
        'providerCommitAuthor': 'Khushboo Verma',
        'providerCommitMessage': 'Update index.js',
        'providerCommitUrl':
            'https://github.com/vermakhushboo/g4-node-function/commit/60c0416257a9cbcdd96b2d370c38d8f8d150ccfb',
        'providerBranch': '0.7.x',
        'providerBranchUrl':
            'https://github.com/vermakhushboo/appwrite/tree/0.7.x',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await sites.createVcsDeployment(
        siteId: '<SITE_ID>',
        type: enums.VCSReferenceType.branch,
        reference: '<REFERENCE>',
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
        'sourceSize': 128,
        'buildSize': 128,
        'totalSize': 128,
        'buildId': '5e5ea5c16897e',
        'activate': true,
        'screenshotLight': '5e5ea5c16897e',
        'screenshotDark': '5e5ea5c16897e',
        'status': 'ready',
        'buildLogs': 'Compiling source files...',
        'buildDuration': 128,
        'providerRepositoryName': 'database',
        'providerRepositoryOwner': 'utopia',
        'providerRepositoryUrl':
            'https://github.com/vermakhushboo/g4-node-function',
        'providerCommitHash': '7c3f25d',
        'providerCommitAuthorUrl': 'https://github.com/vermakhushboo',
        'providerCommitAuthor': 'Khushboo Verma',
        'providerCommitMessage': 'Update index.js',
        'providerCommitUrl':
            'https://github.com/vermakhushboo/g4-node-function/commit/60c0416257a9cbcdd96b2d370c38d8f8d150ccfb',
        'providerBranch': '0.7.x',
        'providerBranchUrl':
            'https://github.com/vermakhushboo/appwrite/tree/0.7.x',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await sites.getDeployment(
        siteId: '<SITE_ID>',
        deploymentId: '<DEPLOYMENT_ID>',
      );
      expect(response, isA<models.Deployment>());
    });

    test('test method deleteDeployment()', () async {
      final data = '';

      when(client.call(
        HttpMethod.delete,
      )).thenAnswer((_) async => Response(data: data));

      final response = await sites.deleteDeployment(
        siteId: '<SITE_ID>',
        deploymentId: '<DEPLOYMENT_ID>',
      );
    });

    test('test method getDeploymentDownload()', () async {
      final Uint8List data = Uint8List.fromList([]);

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await sites.getDeploymentDownload(
        siteId: '<SITE_ID>',
        deploymentId: '<DEPLOYMENT_ID>',
      );
      expect(response, isA<Uint8List>());
    });

    test('test method updateDeploymentStatus()', () async {
      final Map<String, dynamic> data = {
        '\$id': '5e5ea5c16897e',
        '\$createdAt': '2020-10-15T06:38:00.000+00:00',
        '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
        'type': 'vcs',
        'resourceId': '5e5ea6g16897e',
        'resourceType': 'functions',
        'entrypoint': 'index.js',
        'sourceSize': 128,
        'buildSize': 128,
        'totalSize': 128,
        'buildId': '5e5ea5c16897e',
        'activate': true,
        'screenshotLight': '5e5ea5c16897e',
        'screenshotDark': '5e5ea5c16897e',
        'status': 'ready',
        'buildLogs': 'Compiling source files...',
        'buildDuration': 128,
        'providerRepositoryName': 'database',
        'providerRepositoryOwner': 'utopia',
        'providerRepositoryUrl':
            'https://github.com/vermakhushboo/g4-node-function',
        'providerCommitHash': '7c3f25d',
        'providerCommitAuthorUrl': 'https://github.com/vermakhushboo',
        'providerCommitAuthor': 'Khushboo Verma',
        'providerCommitMessage': 'Update index.js',
        'providerCommitUrl':
            'https://github.com/vermakhushboo/g4-node-function/commit/60c0416257a9cbcdd96b2d370c38d8f8d150ccfb',
        'providerBranch': '0.7.x',
        'providerBranchUrl':
            'https://github.com/vermakhushboo/appwrite/tree/0.7.x',
      };

      when(client.call(
        HttpMethod.patch,
      )).thenAnswer((_) async => Response(data: data));

      final response = await sites.updateDeploymentStatus(
        siteId: '<SITE_ID>',
        deploymentId: '<DEPLOYMENT_ID>',
      );
      expect(response, isA<models.Deployment>());
    });

    test('test method listLogs()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'executions': [],
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await sites.listLogs(
        siteId: '<SITE_ID>',
      );
      expect(response, isA<models.ExecutionList>());
    });

    test('test method getLog()', () async {
      final Map<String, dynamic> data = {
        '\$id': '5e5ea5c16897e',
        '\$createdAt': '2020-10-15T06:38:00.000+00:00',
        '\$updatedAt': '2020-10-15T06:38:00.000+00:00',
        '\$permissions': [],
        'functionId': '5e5ea6g16897e',
        'deploymentId': '5e5ea5c16897e',
        'trigger': 'http',
        'status': 'processing',
        'requestMethod': 'GET',
        'requestPath': '/articles?id=5',
        'requestHeaders': [],
        'responseStatusCode': 200,
        'responseBody': '',
        'responseHeaders': [],
        'logs': '',
        'errors': '',
        'duration': 0.4,
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await sites.getLog(
        siteId: '<SITE_ID>',
        logId: '<LOG_ID>',
      );
      expect(response, isA<models.Execution>());
    });

    test('test method deleteLog()', () async {
      final data = '';

      when(client.call(
        HttpMethod.delete,
      )).thenAnswer((_) async => Response(data: data));

      final response = await sites.deleteLog(
        siteId: '<SITE_ID>',
        logId: '<LOG_ID>',
      );
    });

    test('test method listVariables()', () async {
      final Map<String, dynamic> data = {
        'total': 5,
        'variables': [],
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await sites.listVariables(
        siteId: '<SITE_ID>',
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
        'secret': true,
        'resourceType': 'function',
        'resourceId': 'myAwesomeFunction',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await sites.createVariable(
        siteId: '<SITE_ID>',
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
        'secret': true,
        'resourceType': 'function',
        'resourceId': 'myAwesomeFunction',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await sites.getVariable(
        siteId: '<SITE_ID>',
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
        'secret': true,
        'resourceType': 'function',
        'resourceId': 'myAwesomeFunction',
      };

      when(client.call(
        HttpMethod.put,
      )).thenAnswer((_) async => Response(data: data));

      final response = await sites.updateVariable(
        siteId: '<SITE_ID>',
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

      final response = await sites.deleteVariable(
        siteId: '<SITE_ID>',
        variableId: '<VARIABLE_ID>',
      );
    });
  });
}
