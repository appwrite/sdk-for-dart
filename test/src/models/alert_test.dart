import 'package:dart_appwrite/models.dart';
import 'package:dart_appwrite/enums.dart';
import 'package:test/test.dart';

void main() {
  group('Alert', () {
    test('model', () {
      final model = Alert(
        $id: "5e5ea5c16897e",
        $createdAt: "2020-10-15T06:38:00.000+00:00",
        $updatedAt: "2020-10-15T06:38:00.000+00:00",
        monitorId: "5e5ea5c16897e",
        projectId: "5e5ea5c16897e",
        name: "Bandwidth spike",
        status: AlertStatus.firing,
        acknowledgedBy: "5e5ea5c16897e",
        acknowledgedByName: "Jane Doe",
        escalationId: "5e5ea5c16897e",
        escalationStep: 1,
        escalationRound: 0,
        rules: [],
        severity: MonitorSeverity.info,
        threshold: 5000000,
        value: 7250000,
        peak: 9100000,
        type: MonitorType.usage,
        resourceType: MonitorResourceType.project,
        resourceId: "5e5ea5c16897e",
        notifications: 1,
      );

      final map = model.toMap();
      final result = Alert.fromMap(map);

      expect(result.$id, "5e5ea5c16897e");
      expect(result.$createdAt, "2020-10-15T06:38:00.000+00:00");
      expect(result.$updatedAt, "2020-10-15T06:38:00.000+00:00");
      expect(result.monitorId, "5e5ea5c16897e");
      expect(result.projectId, "5e5ea5c16897e");
      expect(result.name, "Bandwidth spike");
      expect(result.status, AlertStatus.firing);
      expect(result.acknowledgedBy, "5e5ea5c16897e");
      expect(result.acknowledgedByName, "Jane Doe");
      expect(result.escalationId, "5e5ea5c16897e");
      expect(result.escalationStep, 1);
      expect(result.escalationRound, 0);
      expect(result.rules, []);
      expect(result.severity, MonitorSeverity.info);
      expect(result.threshold, 5000000);
      expect(result.value, 7250000);
      expect(result.peak, 9100000);
      expect(result.type, MonitorType.usage);
      expect(result.resourceType, MonitorResourceType.project);
      expect(result.resourceId, "5e5ea5c16897e");
      expect(result.notifications, 1);
    });
  });
}
