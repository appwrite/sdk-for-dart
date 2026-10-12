import 'package:dart_appwrite/models.dart';
import 'package:dart_appwrite/enums.dart';
import 'package:test/test.dart';

void main() {
  group('Organization', () {
    test('model', () {
      final model = Organization(
        $id: "5e5ea5c16897e",
        $createdAt: "2020-10-15T06:38:00.000+00:00",
        $updatedAt: "2020-10-15T06:38:00.000+00:00",
        name: "VIP",
        total: 7,
        prefs: Preferences(data: {}),
        budgetAlerts: [],
        billingPlan: "tier-1",
        billingPlanId: "tier-1",
        billingPlanDetails: BillingPlan(
          $id: "tier-0",
          name: "Hobby",
          desc: "Hobby plan",
          order: 0,
          price: 25,
          trial: 14,
          bandwidth: 25,
          storage: 25,
          imageTransformations: 100,
          screenshotsGenerated: 50,
          webhooks: 25,
          wafRules: 2,
          projects: 2,
          platforms: 3,
          users: 25,
          teams: 25,
          databases: 25,
          databasesReads: 500000,
          databasesWrites: 250000,
          databasesBatchSize: 100,
          buckets: 25,
          fileSize: 25,
          functions: 25,
          sites: 1,
          executions: 25,
          executionsRetentionCount: 10000,
          GBHours: 100,
          realtime: 25,
          realtimeMessages: 100000,
          messages: 1000,
          topics: 1,
          authPhone: 10,
          domains: 5,
          usageLogs: 30,
          projectInactivityDays: 7,
          alertLimit: 80,
          addons: BillingPlanAddon(),
          budgetCapEnabled: true,
          customSmtp: true,
          emailBranding: true,
          requiresPaymentMethod: true,
          requiresBillingAddress: true,
          isAvailable: true,
          selfService: true,
          premiumSupport: true,
          budgeting: true,
          supportsMockNumbers: true,
          supportsOrganizationRoles: true,
          supportsCredits: true,
          supportsDedicatedDatabases: true,
          supportsDisposableEmailValidation: true,
          supportsCanonicalEmailValidation: true,
          supportsFreeEmailValidation: true,
          supportsCorporateEmailValidation: true,
          supportsProjectSpecificRoles: true,
          usagePerProject: true,
          supportedAddons: BillingPlanSupportedAddons(
            baa: true,
            premiumGeoDB: true,
            premiumGeoDBOrg: true,
          ),
          deploymentSize: 30,
          buildSize: 2000,
          functionsIntervalMinimum: 60,
          databasesAllowEncrypt: true,
          group: BillingPlanGroup.free,
          databaseComputeCredit: 10,
        ),
        billingEmail: "billing@org.example",
        status: "active",
        markedForDeletion: true,
        platform: "imagine",
        projects: [],
      );

      final map = model.toMap();
      final result = Organization.fromMap(map);

      expect(result.$id, "5e5ea5c16897e");
      expect(result.$createdAt, "2020-10-15T06:38:00.000+00:00");
      expect(result.$updatedAt, "2020-10-15T06:38:00.000+00:00");
      expect(result.name, "VIP");
      expect(result.total, 7);
      expect(result.budgetAlerts, []);
      expect(result.billingPlan, "tier-1");
      expect(result.billingPlanId, "tier-1");
      expect(result.billingEmail, "billing@org.example");
      expect(result.status, "active");
      expect(result.markedForDeletion, true);
      expect(result.platform, "imagine");
      expect(result.projects, []);
    });
  });
}
