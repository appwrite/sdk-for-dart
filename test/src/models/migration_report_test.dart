import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('MigrationReport', () {
    test('model', () {
      final model = MigrationReport(
        user: 20,
        team: 20,
        database: 20,
        row: 20,
        file: 20,
        bucket: 20,
        function: 20,
        platform: 5,
        apiKey: 5,
        projectVariable: 5,
        webhook: 5,
        authMethods: 1,
        projectProtocols: 1,
        projectLabels: 1,
        projectServices: 1,
        policies: 1,
        smtp: 1,
        rule: 5,
        projectEmailTemplate: 7,
        projectEnvironment: 2,
        site: 5,
        provider: 5,
        topic: 10,
        subscriber: 100,
        message: 50,
        size: 30000,
        version: "1.4.0",
        oauth2Provider: 5,
        backupPolicy: 5,
      );

      final map = model.toMap();
      final result = MigrationReport.fromMap(map);

      expect(result.user, 20);
      expect(result.team, 20);
      expect(result.database, 20);
      expect(result.row, 20);
      expect(result.file, 20);
      expect(result.bucket, 20);
      expect(result.function, 20);
      expect(result.platform, 5);
      expect(result.apiKey, 5);
      expect(result.projectVariable, 5);
      expect(result.webhook, 5);
      expect(result.authMethods, 1);
      expect(result.projectProtocols, 1);
      expect(result.projectLabels, 1);
      expect(result.projectServices, 1);
      expect(result.policies, 1);
      expect(result.smtp, 1);
      expect(result.rule, 5);
      expect(result.projectEmailTemplate, 7);
      expect(result.projectEnvironment, 2);
      expect(result.site, 5);
      expect(result.provider, 5);
      expect(result.topic, 10);
      expect(result.subscriber, 100);
      expect(result.message, 50);
      expect(result.size, 30000);
      expect(result.version, "1.4.0");
      expect(result.oauth2Provider, 5);
      expect(result.backupPolicy, 5);
    });
  });
}
