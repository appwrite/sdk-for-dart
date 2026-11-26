import 'package:dart_appwrite/models.dart';
import 'package:dart_appwrite/enums.dart';
import 'package:test/test.dart';

void main() {
  group('Monitor', () {
    test('model', () {
      final model = Monitor(
        $id: "5e5ea5c16897e",
        $createdAt: "2020-10-15T06:38:00.000+00:00",
        $updatedAt: "2020-10-15T06:38:00.000+00:00",
        name: "Bandwidth spike",
        projectId: "5e5ea5c16897e",
        rules: [],
        type: MonitorType.usage,
        resourceType: MonitorResourceType.project,
        resourceId: "main",
        window: 3600,
        cooldown: 3600,
        enabled: true,
        notify: [],
        escalationId: "5e5ea5c16897e",
        severity: MonitorSeverity.info,
        status: MonitorStatus.ok,
        alertId: "5e5ea5c16897e",
        interval: 60,
        timeout: 10,
        url: "https://example.com/health",
        body: "",
        domain: "example.com",
        resolver: "1.1.1.1",
        host: "mail.example.com",
        port: 587,
      );

      final map = model.toMap();
      final result = Monitor.fromMap(map);

      expect(result.$id, "5e5ea5c16897e");
      expect(result.$createdAt, "2020-10-15T06:38:00.000+00:00");
      expect(result.$updatedAt, "2020-10-15T06:38:00.000+00:00");
      expect(result.name, "Bandwidth spike");
      expect(result.projectId, "5e5ea5c16897e");
      expect(result.rules, []);
      expect(result.type, MonitorType.usage);
      expect(result.resourceType, MonitorResourceType.project);
      expect(result.resourceId, "main");
      expect(result.window, 3600);
      expect(result.cooldown, 3600);
      expect(result.enabled, true);
      expect(result.notify, []);
      expect(result.escalationId, "5e5ea5c16897e");
      expect(result.severity, MonitorSeverity.info);
      expect(result.status, MonitorStatus.ok);
      expect(result.alertId, "5e5ea5c16897e");
      expect(result.interval, 60);
      expect(result.timeout, 10);
      expect(result.url, "https://example.com/health");
      expect(result.body, "");
      expect(result.domain, "example.com");
      expect(result.resolver, "1.1.1.1");
      expect(result.host, "mail.example.com");
      expect(result.port, 587);
    });
  });
}
