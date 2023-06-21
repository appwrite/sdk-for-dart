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
        runtime: 'python-3.8',
        deployment: '5e5ea5c16897e',
        vars: [],
        events: [],
        schedule: '5 4 * * *',
        scheduleNext: '2020-10-15T06:38:00.000+00:00',
        schedulePrevious: '2020-10-15T06:38:00.000+00:00',
        timeout: 15,
      );

      final map = model.toMap();
      final result = Func.fromMap(map);

      expect(result.$id, '5e5ea5c16897e');
      expect(result.$createdAt, '2020-10-15T06:38:00.000+00:00');
      expect(result.$updatedAt, '2020-10-15T06:38:00.000+00:00');
      expect(result.execute, []);
      expect(result.name, 'My Function');
      expect(result.enabled, true);
      expect(result.runtime, 'python-3.8');
      expect(result.deployment, '5e5ea5c16897e');
      expect(result.vars, []);
      expect(result.events, []);
      expect(result.schedule, '5 4 * * *');
      expect(result.scheduleNext, '2020-10-15T06:38:00.000+00:00');
      expect(result.schedulePrevious, '2020-10-15T06:38:00.000+00:00');
      expect(result.timeout, 15);
    });
  });
}
