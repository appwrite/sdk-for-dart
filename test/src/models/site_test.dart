import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('Site', () {
    test('model', () {
      final model = Site(
        $id: '5e5ea5c16897e',
        $createdAt: '2020-10-15T06:38:00.000+00:00',
        $updatedAt: '2020-10-15T06:38:00.000+00:00',
        name: 'My Site',
        enabled: true,
        live: true,
        logging: true,
        framework: 'react',
        deploymentId: '5e5ea5c16897e',
        deploymentCreatedAt: '2020-10-15T06:38:00.000+00:00',
        deploymentScreenshotLight: '5e5ea5c16897e',
        deploymentScreenshotDark: '5e5ea5c16897e',
        latestDeploymentId: '5e5ea5c16897e',
        latestDeploymentCreatedAt: '2020-10-15T06:38:00.000+00:00',
        latestDeploymentStatus: 'ready',
        vars: [],
        timeout: 300,
        installCommand: 'npm install',
        buildCommand: 'npm run build',
        outputDirectory: 'build',
        installationId: '6m40at4ejk5h2u9s1hboo',
        providerRepositoryId: 'appwrite',
        providerBranch: 'main',
        providerRootDirectory: 'sites/helloWorld',
        providerSilentMode: true,
        specification: 's-1vcpu-512mb',
        buildRuntime: 'node-22',
        adapter: 'static',
        fallbackFile: 'index.html',
      );

      final map = model.toMap();
      final result = Site.fromMap(map);

      expect(result.$id, '5e5ea5c16897e');
      expect(result.$createdAt, '2020-10-15T06:38:00.000+00:00');
      expect(result.$updatedAt, '2020-10-15T06:38:00.000+00:00');
      expect(result.name, 'My Site');
      expect(result.enabled, true);
      expect(result.live, true);
      expect(result.logging, true);
      expect(result.framework, 'react');
      expect(result.deploymentId, '5e5ea5c16897e');
      expect(result.deploymentCreatedAt, '2020-10-15T06:38:00.000+00:00');
      expect(result.deploymentScreenshotLight, '5e5ea5c16897e');
      expect(result.deploymentScreenshotDark, '5e5ea5c16897e');
      expect(result.latestDeploymentId, '5e5ea5c16897e');
      expect(result.latestDeploymentCreatedAt, '2020-10-15T06:38:00.000+00:00');
      expect(result.latestDeploymentStatus, 'ready');
      expect(result.vars, []);
      expect(result.timeout, 300);
      expect(result.installCommand, 'npm install');
      expect(result.buildCommand, 'npm run build');
      expect(result.outputDirectory, 'build');
      expect(result.installationId, '6m40at4ejk5h2u9s1hboo');
      expect(result.providerRepositoryId, 'appwrite');
      expect(result.providerBranch, 'main');
      expect(result.providerRootDirectory, 'sites/helloWorld');
      expect(result.providerSilentMode, true);
      expect(result.specification, 's-1vcpu-512mb');
      expect(result.buildRuntime, 'node-22');
      expect(result.adapter, 'static');
      expect(result.fallbackFile, 'index.html');
    });
  });
}
