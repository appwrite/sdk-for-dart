import 'package:dart_appwrite/models.dart';
import 'package:dart_appwrite/enums.dart';
import 'package:test/test.dart';

void main() {
  group('BillingPlan', () {
    test('model', () {
      final model = BillingPlan(
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
      );

      final map = model.toMap();
      final result = BillingPlan.fromMap(map);

      expect(result.$id, 'tier-0');
      expect(result.name, 'Hobby');
      expect(result.desc, 'Hobby plan');
      expect(result.order, 0);
      expect(result.price, 25);
      expect(result.trial, 14);
      expect(result.bandwidth, 25);
      expect(result.storage, 25);
      expect(result.imageTransformations, 100);
      expect(result.screenshotsGenerated, 50);
      expect(result.members, 25);
      expect(result.webhooks, 25);
      expect(result.wafRules, 2);
      expect(result.projects, 2);
      expect(result.platforms, 3);
      expect(result.users, 25);
      expect(result.teams, 25);
      expect(result.databases, 25);
      expect(result.databasesReads, 500000);
      expect(result.databasesWrites, 250000);
      expect(result.databasesBatchSize, 100);
      expect(result.buckets, 25);
      expect(result.fileSize, 25);
      expect(result.functions, 25);
      expect(result.sites, 1);
      expect(result.executions, 25);
      expect(result.executionsRetentionCount, 10000);
      expect(result.GBHours, 100);
      expect(result.realtime, 25);
      expect(result.realtimeMessages, 100000);
      expect(result.messages, 1000);
      expect(result.topics, 1);
      expect(result.authPhone, 10);
      expect(result.domains, 5);
      expect(result.activityLogs, 7);
      expect(result.usageLogs, 30);
      expect(result.projectInactivityDays, 7);
      expect(result.alertLimit, 80);
      expect(result.budgetCapEnabled, true);
      expect(result.customSmtp, true);
      expect(result.emailBranding, true);
      expect(result.requiresPaymentMethod, true);
      expect(result.requiresBillingAddress, true);
      expect(result.isAvailable, true);
      expect(result.selfService, true);
      expect(result.premiumSupport, true);
      expect(result.budgeting, true);
      expect(result.supportsMockNumbers, true);
      expect(result.supportsOrganizationRoles, true);
      expect(result.supportsCredits, true);
      expect(result.supportsDisposableEmailValidation, true);
      expect(result.supportsCanonicalEmailValidation, true);
      expect(result.supportsFreeEmailValidation, true);
      expect(result.supportsCorporateEmailValidation, true);
      expect(result.supportsProjectSpecificRoles, true);
      expect(result.backupsEnabled, true);
      expect(result.usagePerProject, true);
      expect(result.backupPolicies, 1);
      expect(result.deploymentSize, 30);
      expect(result.buildSize, 2000);
      expect(result.databasesAllowEncrypt, true);
      expect(result.group, BillingPlanGroup.starter);
    });
  });
}
