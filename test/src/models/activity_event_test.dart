import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('ActivityEvent', () {
    test('model', () {
      final model = ActivityEvent(
        $id: '5e5ea5c16897e',
        actorType: 'user',
        actorId: '610fc2f985ee0',
        actorEmail: 'john@appwrite.io',
        actorName: 'John Doe',
        resourceParent: 'database/ID',
        resourceType: 'collection',
        resourceId: '610fc2f985ee0',
        resource: 'collections/610fc2f985ee0',
        event: 'account.sessions.create',
        userAgent:
            'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36',
        ip: '127.0.0.1',
        mode: 'admin',
        country: 'US',
        time: '2020-10-15T06:38:00.000+00:00',
        projectId: '610fc2f985ee0',
        teamId: '610fc2f985ee0',
        hostname: 'appwrite.io',
      );

      final map = model.toMap();
      final result = ActivityEvent.fromMap(map);

      expect(result.$id, '5e5ea5c16897e');
      expect(result.actorType, 'user');
      expect(result.actorId, '610fc2f985ee0');
      expect(result.actorEmail, 'john@appwrite.io');
      expect(result.actorName, 'John Doe');
      expect(result.resourceParent, 'database/ID');
      expect(result.resourceType, 'collection');
      expect(result.resourceId, '610fc2f985ee0');
      expect(result.resource, 'collections/610fc2f985ee0');
      expect(result.event, 'account.sessions.create');
      expect(result.userAgent,
          'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
      expect(result.ip, '127.0.0.1');
      expect(result.mode, 'admin');
      expect(result.country, 'US');
      expect(result.time, '2020-10-15T06:38:00.000+00:00');
      expect(result.projectId, '610fc2f985ee0');
      expect(result.teamId, '610fc2f985ee0');
      expect(result.hostname, 'appwrite.io');
    });
  });
}
