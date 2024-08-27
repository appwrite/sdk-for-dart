import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('Build', () {

    test('model', () {
      final model = Build(
        $id: '5e5ea5c16897e',
        deploymentId: '5e5ea5c16897e',
        status: 'ready',
        stdout: '',
        stderr: '',
        startTime: '2020-10-15T06:38:00.000+00:00',
        endTime: '2020-10-15T06:38:00.000+00:00',
        duration: 0,
        size: 128,
      );

      final map = model.toMap();
      final result = Build.fromMap(map);

      expect(result.$id, '5e5ea5c16897e');
      expect(result.deploymentId, '5e5ea5c16897e');
      expect(result.status, 'ready');
      expect(result.stdout, '');
      expect(result.stderr, '');
      expect(result.startTime, '2020-10-15T06:38:00.000+00:00');
      expect(result.endTime, '2020-10-15T06:38:00.000+00:00');
      expect(result.duration, 0);
      expect(result.size, 128);
    });
  });
}
