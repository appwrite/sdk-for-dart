import 'package:dart_appwrite/models.dart';
import 'package:dart_appwrite/enums.dart';
import 'package:test/test.dart';

void main() {
  group('Project', () {
    test('model', () {
      final model = Project(
        $id: '5e5ea5c16897e',
        $createdAt: '2020-10-15T06:38:00.000+00:00',
        $updatedAt: '2020-10-15T06:38:00.000+00:00',
        name: 'New Project',
        teamId: '1592981250',
        region: 'fra',
        devKeys: [],
        smtpEnabled: true,
        smtpSenderName: 'John Appwrite',
        smtpSenderEmail: 'john@appwrite.io',
        smtpReplyToName: 'Support Team',
        smtpReplyToEmail: 'support@appwrite.io',
        smtpHost: 'mail.appwrite.io',
        smtpPort: 25,
        smtpUsername: 'emailuser',
        smtpPassword: 'smtp-password',
        smtpSecure: 'tls',
        pingCount: 1,
        pingedAt: '2020-10-15T06:38:00.000+00:00',
        labels: [],
        status: 'active',
        onboarding: {},
        authMethods: [],
        services: [],
        protocols: [],
        blocks: [],
        consoleAccessedAt: '2020-10-15T06:38:00.000+00:00',
      );

      final map = model.toMap();
      final result = Project.fromMap(map);

      expect(result.$id, '5e5ea5c16897e');
      expect(result.$createdAt, '2020-10-15T06:38:00.000+00:00');
      expect(result.$updatedAt, '2020-10-15T06:38:00.000+00:00');
      expect(result.name, 'New Project');
      expect(result.teamId, '1592981250');
      expect(result.region, 'fra');
      expect(result.devKeys, []);
      expect(result.smtpEnabled, true);
      expect(result.smtpSenderName, 'John Appwrite');
      expect(result.smtpSenderEmail, 'john@appwrite.io');
      expect(result.smtpReplyToName, 'Support Team');
      expect(result.smtpReplyToEmail, 'support@appwrite.io');
      expect(result.smtpHost, 'mail.appwrite.io');
      expect(result.smtpPort, 25);
      expect(result.smtpUsername, 'emailuser');
      expect(result.smtpPassword, 'smtp-password');
      expect(result.smtpSecure, 'tls');
      expect(result.pingCount, 1);
      expect(result.pingedAt, '2020-10-15T06:38:00.000+00:00');
      expect(result.labels, []);
      expect(result.status, 'active');
      expect(result.onboarding, {});
      expect(result.authMethods, []);
      expect(result.services, []);
      expect(result.protocols, []);
      expect(result.blocks, []);
      expect(result.consoleAccessedAt, '2020-10-15T06:38:00.000+00:00');
    });
  });
}
