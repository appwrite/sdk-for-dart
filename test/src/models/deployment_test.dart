import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('Deployment', () {

    test('model', () {
      final model = Deployment(
        $id: '5e5ea5c16897e',
        $createdAt: '2020-10-15T06:38:00.000+00:00',
        $updatedAt: '2020-10-15T06:38:00.000+00:00',
        resourceId: '5e5ea6g16897e',
        resourceType: 'functions',
        entrypoint: 'enabled',
        size: 128,
        buildId: '5e5ea5c16897e',
        activate: true,
        status: 'ready',
        buildStdout: 'enabled',
        buildStderr: 'enabled',
        buildTime: 128,
      );

      final map = model.toMap();
      final result = Deployment.fromMap(map);

      expect(result.$id, '5e5ea5c16897e');
      expect(result.$createdAt, '2020-10-15T06:38:00.000+00:00');
      expect(result.$updatedAt, '2020-10-15T06:38:00.000+00:00');
      expect(result.resourceId, '5e5ea6g16897e');
      expect(result.resourceType, 'functions');
      expect(result.entrypoint, 'enabled');
      expect(result.size, 128);
      expect(result.buildId, '5e5ea5c16897e');
      expect(result.activate, true);
      expect(result.status, 'ready');
      expect(result.buildStdout, 'enabled');
      expect(result.buildStderr, 'enabled');
      expect(result.buildTime, 128);
    });
  });
}
