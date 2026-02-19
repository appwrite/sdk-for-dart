import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('Func', () {
    test('model', () {
      final model = Func(
        $id: '5e5ea5c16897e',
        $createdAt: '2020-10-15T06:38:00.000+00:00',
        $updatedAt: '2020-10-15T06:38:00.000+00:00',
        execute: [],
        name: 'My Function',
        enabled: true,
        live: true,
        logging: true,
        runtime: 'python-3.8',
        deploymentId: '5e5ea5c16897e',
        deploymentCreatedAt: '2020-10-15T06:38:00.000+00:00',
        latestDeploymentId: '5e5ea5c16897e',
        latestDeploymentCreatedAt: '2020-10-15T06:38:00.000+00:00',
        latestDeploymentStatus: 'ready',
        scopes: [],
        vars: [],
        events: [],
        schedule: '5 4 * * *',
        timeout: 300,
        entrypoint: 'index.js',
        commands: 'npm install',
        version: 'v2',
        installationId: '6m40at4ejk5h2u9s1hboo',
        providerRepositoryId: 'appwrite',
        providerBranch: 'main',
        providerRootDirectory: 'functions/helloWorld',
        providerSilentMode: true,
        specification: 's-1vcpu-512mb',
      );

      final map = model.toMap();
      final result = Func.fromMap(map);

            expect(result.$id, '5e5ea5c16897e');
                  expect(result.$createdAt, '2020-10-15T06:38:00.000+00:00');
                  expect(result.$updatedAt, '2020-10-15T06:38:00.000+00:00');
                  expect(result.execute, []);
                  expect(result.name, 'My Function');
                  expect(result.enabled, true);
                  expect(result.live, true);
                  expect(result.logging, true);
                  expect(result.runtime, 'python-3.8');
                  expect(result.deploymentId, '5e5ea5c16897e');
                  expect(result.deploymentCreatedAt, '2020-10-15T06:38:00.000+00:00');
                  expect(result.latestDeploymentId, '5e5ea5c16897e');
                  expect(result.latestDeploymentCreatedAt, '2020-10-15T06:38:00.000+00:00');
                  expect(result.latestDeploymentStatus, 'ready');
                  expect(result.scopes, []);
                  expect(result.vars, []);
                  expect(result.events, []);
                  expect(result.schedule, '5 4 * * *');
                  expect(result.timeout, 300);
                  expect(result.entrypoint, 'index.js');
                  expect(result.commands, 'npm install');
                  expect(result.version, 'v2');
                  expect(result.installationId, '6m40at4ejk5h2u9s1hboo');
                  expect(result.providerRepositoryId, 'appwrite');
                  expect(result.providerBranch, 'main');
                  expect(result.providerRootDirectory, 'functions/helloWorld');
                  expect(result.providerSilentMode, true);
                  expect(result.specification, 's-1vcpu-512mb');
          });
  });
}
