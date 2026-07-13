import 'package:dart_appwrite/models.dart';
import 'package:dart_appwrite/enums.dart';
import 'package:test/test.dart';

void main() {
  group('Organization', () {
    test('model', () {
      final model = Organization(
        $id: '5e5ea5c16897e',
        $createdAt: '2020-10-15T06:38:00.000+00:00',
        $updatedAt: '2020-10-15T06:38:00.000+00:00',
        name: 'VIP',
        total: 7,
        prefs: Preferences(data: {}),
        billingBudget: 50,
        budgetAlerts: [],
        billingPlan: 'tier-1',
        billingPlanId: 'tier-1',
        billingPlanDetails: BillingPlan(
          $id: 'tier-0',
          name: 'Hobby',
          desc: 'Hobby plan',
          order: 0,
          price: 25,
          trial: 14,
          bandwidth: 25,
          storage: 25,
          imageTransformations: 100,
          screenshotsGenerated: 50,
          members: 25,
          webhooks: 25,
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
          activityLogs: 7,
          usageLogs: 30,
          projectInactivityDays: 7,
          alertLimit: 80,
          usage: UsageBillingPlan(
            bandwidth: AdditionalResource(
              name: '',
              unit: 'GB',
              currency: 'USD',
              price: 5,
              value: 25,
              invoiceDesc: '',
            ),
            executions: AdditionalResource(
              name: '',
              unit: 'GB',
              currency: 'USD',
              price: 5,
              value: 25,
              invoiceDesc: '',
            ),
            member: AdditionalResource(
              name: '',
              unit: 'GB',
              currency: 'USD',
              price: 5,
              value: 25,
              invoiceDesc: '',
            ),
            realtime: AdditionalResource(
              name: '',
              unit: 'GB',
              currency: 'USD',
              price: 5,
              value: 25,
              invoiceDesc: '',
            ),
            realtimeMessages: AdditionalResource(
              name: '',
              unit: 'GB',
              currency: 'USD',
              price: 5,
              value: 25,
              invoiceDesc: '',
            ),
            realtimeBandwidth: AdditionalResource(
              name: '',
              unit: 'GB',
              currency: 'USD',
              price: 5,
              value: 25,
              invoiceDesc: '',
            ),
            storage: AdditionalResource(
              name: '',
              unit: 'GB',
              currency: 'USD',
              price: 5,
              value: 25,
              invoiceDesc: '',
            ),
            users: AdditionalResource(
              name: '',
              unit: 'GB',
              currency: 'USD',
              price: 5,
              value: 25,
              invoiceDesc: '',
            ),
            GBHours: AdditionalResource(
              name: '',
              unit: 'GB',
              currency: 'USD',
              price: 5,
              value: 25,
              invoiceDesc: '',
            ),
            imageTransformations: AdditionalResource(
              name: '',
              unit: 'GB',
              currency: 'USD',
              price: 5,
              value: 25,
              invoiceDesc: '',
            ),
            credits: AdditionalResource(
              name: '',
              unit: 'GB',
              currency: 'USD',
              price: 5,
              value: 25,
              invoiceDesc: '',
            ),
          ),
          addons: BillingPlanAddon(
            seats: BillingPlanAddonDetails(
              supported: true,
              planIncluded: 1,
              limit: 5,
              type: 'numeric',
              currency: 'USD',
              price: 5,
              value: 25,
              invoiceDesc: '',
            ),
            projects: BillingPlanAddonDetails(
              supported: true,
              planIncluded: 1,
              limit: 5,
              type: 'numeric',
              currency: 'USD',
              price: 5,
              value: 25,
              invoiceDesc: '',
            ),
          ),
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
          supportsDisposableEmailValidation: true,
          supportsCanonicalEmailValidation: true,
          supportsFreeEmailValidation: true,
          supportsCorporateEmailValidation: true,
          supportsProjectSpecificRoles: true,
          backupsEnabled: true,
          usagePerProject: true,
          supportedAddons: BillingPlanSupportedAddons(
            baa: true,
            premiumGeoDB: true,
            premiumGeoDBOrg: true,
          ),
          backupPolicies: 1,
          deploymentSize: 30,
          buildSize: 2000,
          databasesAllowEncrypt: true,
          group: BillingPlanGroup.starter,
        ),
        billingEmail: 'billing@org.example',
        billingStartDate: '2020-10-15T06:38:00.000+00:00',
        billingCurrentInvoiceDate: '2020-10-15T06:38:00.000+00:00',
        billingNextInvoiceDate: '2020-10-15T06:38:00.000+00:00',
        billingTrialStartDate: '2020-10-15T06:38:00.000+00:00',
        billingTrialDays: 14,
        billingAggregationId: 'adbc3de4rddfsd',
        billingInvoiceId: 'adbc3de4rddfsd',
        paymentMethodId: 'adbc3de4rddfsd',
        billingAddressId: 'adbc3de4rddfsd',
        backupPaymentMethodId: 'adbc3de4rddfsd',
        status: 'active',
        remarks: 'Pending initial payment',
        agreementBAA: '',
        programManagerName: '',
        programManagerCalendar: '',
        programDiscordChannelName: '',
        programDiscordChannelUrl: '',
        billingPlanDowngrade: 'tier-1',
        billingTaxId: '',
        markedForDeletion: true,
        platform: 'imagine',
        projects: [],
      );

      final map = model.toMap();
      final result = Organization.fromMap(map);

      expect(result.$id, '5e5ea5c16897e');
      expect(result.$createdAt, '2020-10-15T06:38:00.000+00:00');
      expect(result.$updatedAt, '2020-10-15T06:38:00.000+00:00');
      expect(result.name, 'VIP');
      expect(result.total, 7);
      expect(result.billingBudget, 50);
      expect(result.budgetAlerts, []);
      expect(result.billingPlan, 'tier-1');
      expect(result.billingPlanId, 'tier-1');
      expect(result.billingEmail, 'billing@org.example');
      expect(result.billingStartDate, '2020-10-15T06:38:00.000+00:00');
      expect(result.billingCurrentInvoiceDate, '2020-10-15T06:38:00.000+00:00');
      expect(result.billingNextInvoiceDate, '2020-10-15T06:38:00.000+00:00');
      expect(result.billingTrialStartDate, '2020-10-15T06:38:00.000+00:00');
      expect(result.billingTrialDays, 14);
      expect(result.billingAggregationId, 'adbc3de4rddfsd');
      expect(result.billingInvoiceId, 'adbc3de4rddfsd');
      expect(result.paymentMethodId, 'adbc3de4rddfsd');
      expect(result.billingAddressId, 'adbc3de4rddfsd');
      expect(result.backupPaymentMethodId, 'adbc3de4rddfsd');
      expect(result.status, 'active');
      expect(result.remarks, 'Pending initial payment');
      expect(result.agreementBAA, '');
      expect(result.programManagerName, '');
      expect(result.programManagerCalendar, '');
      expect(result.programDiscordChannelName, '');
      expect(result.programDiscordChannelUrl, '');
      expect(result.billingPlanDowngrade, 'tier-1');
      expect(result.billingTaxId, '');
      expect(result.markedForDeletion, true);
      expect(result.platform, 'imagine');
      expect(result.projects, []);
    });
  });
}
