import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('Project', () {
    test('model', () {
      final model = Project(
        $id: '5e5ea5c16897e',
        $createdAt: '2020-10-15T06:38:00.000+00:00',
        $updatedAt: '2020-10-15T06:38:00.000+00:00',
        name: 'New Project',
        description: 'This is a new project.',
        teamId: '1592981250',
        logo: '5f5c451b403cb',
        url: '5f5c451b403cb',
        legalName: 'Company LTD.',
        legalCountry: 'US',
        legalState: 'New York',
        legalCity: 'New York City.',
        legalAddress: '620 Eighth Avenue, New York, NY 10018',
        legalTaxId: '131102020',
        authDuration: 60,
        authLimit: 100,
        authSessionsLimit: 10,
        authPasswordHistory: 5,
        authPasswordDictionary: true,
        authPersonalDataCheck: true,
        authDisposableEmails: true,
        authCanonicalEmails: true,
        authFreeEmails: true,
        authMockNumbers: [],
        authSessionAlerts: true,
        authMembershipsUserName: true,
        authMembershipsUserEmail: true,
        authMembershipsMfa: true,
        authInvalidateSessions: true,
        oAuthProviders: [],
        platforms: [],
        webhooks: [],
        keys: [],
        devKeys: [],
        smtpEnabled: true,
        smtpSenderName: 'John Appwrite',
        smtpSenderEmail: 'john@appwrite.io',
        smtpReplyTo: 'support@appwrite.io',
        smtpHost: 'mail.appwrite.io',
        smtpPort: 25,
        smtpUsername: 'emailuser',
        smtpPassword: 'securepassword',
        smtpSecure: 'tls',
        pingCount: 1,
        pingedAt: '2020-10-15T06:38:00.000+00:00',
        labels: [],
        status: 'active',
        authEmailPassword: true,
        authUsersAuthMagicURL: true,
        authEmailOtp: true,
        authAnonymous: true,
        authInvites: true,
        authJWT: true,
        authPhone: true,
        serviceStatusForAccount: true,
        serviceStatusForAvatars: true,
        serviceStatusForDatabases: true,
        serviceStatusForTablesdb: true,
        serviceStatusForLocale: true,
        serviceStatusForHealth: true,
        serviceStatusForProject: true,
        serviceStatusForStorage: true,
        serviceStatusForTeams: true,
        serviceStatusForUsers: true,
        serviceStatusForVcs: true,
        serviceStatusForSites: true,
        serviceStatusForFunctions: true,
        serviceStatusForProxy: true,
        serviceStatusForGraphql: true,
        serviceStatusForMigrations: true,
        serviceStatusForMessaging: true,
        protocolStatusForRest: true,
        protocolStatusForGraphql: true,
        protocolStatusForWebsocket: true,
        region: 'fra',
        billingLimits: BillingLimits(
    bandwidth: 5,
    storage: 150,
    users: 200000,
    executions: 750000,
    GBHours: 100,
    imageTransformations: 100,
    authPhone: 10,
    budgetLimit: 100,
  ),
        blocks: [],
        consoleAccessedAt: '2020-10-15T06:38:00.000+00:00',
      );

      final map = model.toMap();
      final result = Project.fromMap(map);

            expect(result.$id, '5e5ea5c16897e');
                  expect(result.$createdAt, '2020-10-15T06:38:00.000+00:00');
                  expect(result.$updatedAt, '2020-10-15T06:38:00.000+00:00');
                  expect(result.name, 'New Project');
                  expect(result.description, 'This is a new project.');
                  expect(result.teamId, '1592981250');
                  expect(result.logo, '5f5c451b403cb');
                  expect(result.url, '5f5c451b403cb');
                  expect(result.legalName, 'Company LTD.');
                  expect(result.legalCountry, 'US');
                  expect(result.legalState, 'New York');
                  expect(result.legalCity, 'New York City.');
                  expect(result.legalAddress, '620 Eighth Avenue, New York, NY 10018');
                  expect(result.legalTaxId, '131102020');
                  expect(result.authDuration, 60);
                  expect(result.authLimit, 100);
                  expect(result.authSessionsLimit, 10);
                  expect(result.authPasswordHistory, 5);
                  expect(result.authPasswordDictionary, true);
                  expect(result.authPersonalDataCheck, true);
                  expect(result.authDisposableEmails, true);
                  expect(result.authCanonicalEmails, true);
                  expect(result.authFreeEmails, true);
                  expect(result.authMockNumbers, []);
                  expect(result.authSessionAlerts, true);
                  expect(result.authMembershipsUserName, true);
                  expect(result.authMembershipsUserEmail, true);
                  expect(result.authMembershipsMfa, true);
                  expect(result.authInvalidateSessions, true);
                  expect(result.oAuthProviders, []);
                  expect(result.platforms, []);
                  expect(result.webhooks, []);
                  expect(result.keys, []);
                  expect(result.devKeys, []);
                  expect(result.smtpEnabled, true);
                  expect(result.smtpSenderName, 'John Appwrite');
                  expect(result.smtpSenderEmail, 'john@appwrite.io');
                  expect(result.smtpReplyTo, 'support@appwrite.io');
                  expect(result.smtpHost, 'mail.appwrite.io');
                  expect(result.smtpPort, 25);
                  expect(result.smtpUsername, 'emailuser');
                  expect(result.smtpPassword, 'securepassword');
                  expect(result.smtpSecure, 'tls');
                  expect(result.pingCount, 1);
                  expect(result.pingedAt, '2020-10-15T06:38:00.000+00:00');
                  expect(result.labels, []);
                  expect(result.status, 'active');
                  expect(result.authEmailPassword, true);
                  expect(result.authUsersAuthMagicURL, true);
                  expect(result.authEmailOtp, true);
                  expect(result.authAnonymous, true);
                  expect(result.authInvites, true);
                  expect(result.authJWT, true);
                  expect(result.authPhone, true);
                  expect(result.serviceStatusForAccount, true);
                  expect(result.serviceStatusForAvatars, true);
                  expect(result.serviceStatusForDatabases, true);
                  expect(result.serviceStatusForTablesdb, true);
                  expect(result.serviceStatusForLocale, true);
                  expect(result.serviceStatusForHealth, true);
                  expect(result.serviceStatusForProject, true);
                  expect(result.serviceStatusForStorage, true);
                  expect(result.serviceStatusForTeams, true);
                  expect(result.serviceStatusForUsers, true);
                  expect(result.serviceStatusForVcs, true);
                  expect(result.serviceStatusForSites, true);
                  expect(result.serviceStatusForFunctions, true);
                  expect(result.serviceStatusForProxy, true);
                  expect(result.serviceStatusForGraphql, true);
                  expect(result.serviceStatusForMigrations, true);
                  expect(result.serviceStatusForMessaging, true);
                  expect(result.protocolStatusForRest, true);
                  expect(result.protocolStatusForGraphql, true);
                  expect(result.protocolStatusForWebsocket, true);
                  expect(result.region, 'fra');
                        expect(result.blocks, []);
                  expect(result.consoleAccessedAt, '2020-10-15T06:38:00.000+00:00');
          });
  });
}
