import 'package:dart_appwrite/models.dart';
import 'package:dart_appwrite/enums.dart';
import 'package:test/test.dart';

void main() {
  group('Deployment', () {
    test('model', () {
      final model = Deployment(
        $id: '5e5ea5c16897e',
        $createdAt: '2020-10-15T06:38:00.000+00:00',
        $updatedAt: '2020-10-15T06:38:00.000+00:00',
        type: 'vcs',
        resourceId: '5e5ea6g16897e',
        resourceType: 'functions',
        entrypoint: 'index.js',
        sourceSize: 128,
        buildSize: 128,
        totalSize: 128,
        buildId: '5e5ea5c16897e',
        activate: true,
        screenshotLight: '5e5ea5c16897e',
        screenshotDark: '5e5ea5c16897e',
        status: DeploymentStatus.waiting,
        buildLogs: 'Compiling source files...',
        buildDuration: 128,
        providerRepositoryName: 'database',
        providerRepositoryOwner: 'utopia',
        providerRepositoryUrl:
            'https://github.com/vermakhushboo/g4-node-function',
        providerCommitHash: '7c3f25d',
        providerCommitAuthorUrl: 'https://github.com/vermakhushboo',
        providerCommitAuthor: 'Khushboo Verma',
        providerCommitMessage: 'Update index.js',
        providerCommitUrl:
            'https://github.com/vermakhushboo/g4-node-function/commit/60c0416257a9cbcdd96b2d370c38d8f8d150ccfb',
        providerBranch: '0.7.x',
        providerBranchUrl:
            'https://github.com/vermakhushboo/appwrite/tree/0.7.x',
      );

      final map = model.toMap();
      final result = Deployment.fromMap(map);

      expect(result.$id, '5e5ea5c16897e');
      expect(result.$createdAt, '2020-10-15T06:38:00.000+00:00');
      expect(result.$updatedAt, '2020-10-15T06:38:00.000+00:00');
      expect(result.type, 'vcs');
      expect(result.resourceId, '5e5ea6g16897e');
      expect(result.resourceType, 'functions');
      expect(result.entrypoint, 'index.js');
      expect(result.sourceSize, 128);
      expect(result.buildSize, 128);
      expect(result.totalSize, 128);
      expect(result.buildId, '5e5ea5c16897e');
      expect(result.activate, true);
      expect(result.screenshotLight, '5e5ea5c16897e');
      expect(result.screenshotDark, '5e5ea5c16897e');
      expect(result.status, DeploymentStatus.waiting);
      expect(result.buildLogs, 'Compiling source files...');
      expect(result.buildDuration, 128);
      expect(result.providerRepositoryName, 'database');
      expect(result.providerRepositoryOwner, 'utopia');
      expect(result.providerRepositoryUrl,
          'https://github.com/vermakhushboo/g4-node-function');
      expect(result.providerCommitHash, '7c3f25d');
      expect(
          result.providerCommitAuthorUrl, 'https://github.com/vermakhushboo');
      expect(result.providerCommitAuthor, 'Khushboo Verma');
      expect(result.providerCommitMessage, 'Update index.js');
      expect(result.providerCommitUrl,
          'https://github.com/vermakhushboo/g4-node-function/commit/60c0416257a9cbcdd96b2d370c38d8f8d150ccfb');
      expect(result.providerBranch, '0.7.x');
      expect(result.providerBranchUrl,
          'https://github.com/vermakhushboo/appwrite/tree/0.7.x');
    });
  });
}
