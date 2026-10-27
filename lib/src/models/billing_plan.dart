part of '../../models.dart';

/// billingPlan
class BillingPlan implements Model {
  /// Plan ID.
  final String $id;

  /// Plan name
  final String name;

  /// Plan description
  final String desc;

  /// Plan order
  final int order;

  /// Price
  final double price;

  /// Trial days
  final int trial;

  /// Bandwidth
  final int bandwidth;

  /// Storage
  final int storage;

  /// Image Transformations
  final int imageTransformations;

  /// Screenshots generated
  final int screenshotsGenerated;

  /// Members
  final int? members;

  /// Webhooks
  final int webhooks;

  /// Maximum WAF rules per project
  final int wafRules;

  /// Maximum environments per project. 0 when the plan does not offer environments.
  final int environments;

  /// Projects
  final int projects;

  /// Platforms
  final int platforms;

  /// Users
  final int users;

  /// Teams
  final int teams;

  /// Databases
  final int databases;

  /// Database reads per month
  final int databasesReads;

  /// Database writes per month
  final int databasesWrites;

  /// Database batch size limit
  final int databasesBatchSize;

  /// Buckets
  final int buckets;

  /// File size
  final int fileSize;

  /// Functions
  final int functions;

  /// Sites
  final int sites;

  /// Function executions
  final int executions;

  /// Rolling max executions retained per function/site
  final int executionsRetentionCount;

  /// Days non-active deployments are kept when a function or site sets no retention.
  final int? deploymentRetention;

  /// Maximum deployment retention in days a function or site can set. 0 means unlimited.
  final int? deploymentRetentionMax;

  /// Non-active deployments kept per function or site. 0 means unlimited.
  final int? deploymentsRetentionCount;

  /// GB hours for functions
  final int GBHours;

  /// Realtime connections
  final int realtime;

  /// Realtime messages
  final int realtimeMessages;

  /// Messages per month
  final int messages;

  /// Topics for messaging
  final int topics;

  /// SMS authentications per month
  final int authPhone;

  /// Custom domains
  final int domains;

  /// Activity log days
  final int? activityLogs;

  /// Usage history days
  final int usageLogs;

  /// Usage log time intervals allowed for this plan (e.g. 15m, 1h, 1d).
  final List<String>? usageLogsIntervals;

  /// Metrics this plan only records as a total. They cannot be broken down by dimension or filtered, because the stored events cover a fraction of the real traffic.
  final List<String>? usageAggregateOnlyMetrics;

  /// Number of days of console inactivity before a project is paused. 0 means pausing is disabled.
  final int projectInactivityDays;

  /// Alert threshold percentage
  final int alertLimit;

  /// Additional resources. Null when the plan does not support usage billing.
  final UsageBillingPlan? usage;

  /// Addons
  final BillingPlanAddon addons;

  /// Budget cap enabled or disabled.
  final bool budgetCapEnabled;

  /// Custom SMTP
  final bool customSmtp;

  /// Appwrite branding in email
  final bool emailBranding;

  /// Does plan require payment method
  final bool requiresPaymentMethod;

  /// Does plan require billing address
  final bool requiresBillingAddress;

  /// ISO country codes eligible for this regional plan. Empty means no restriction.
  final List<String>? eligibleCountries;

  /// Is the billing plan available
  final bool isAvailable;

  /// Can user change the plan themselves
  final bool selfService;

  /// Does plan enable premium support
  final bool premiumSupport;

  /// Does plan support budget cap
  final bool budgeting;

  /// Does plan support mock numbers
  final bool supportsMockNumbers;

  /// Does plan support organization roles
  final bool supportsOrganizationRoles;

  /// Does plan support credit
  final bool supportsCredits;

  /// Does plan support dedicated databases.
  final bool supportsDedicatedDatabases;

  /// Does plan support blocking disposable email addresses.
  final bool supportsDisposableEmailValidation;

  /// Does plan support requiring canonical email addresses.
  final bool supportsCanonicalEmailValidation;

  /// Does plan support blocking free email addresses.
  final bool supportsFreeEmailValidation;

  /// Does plan support restricting sign-ups to corporate email addresses only.
  final bool supportsCorporateEmailValidation;

  /// Does plan support project-specific member roles.
  final bool supportsProjectSpecificRoles;

  /// Does plan support backup policies.
  final bool? backupsEnabled;

  /// Whether usage addons are calculated per project.
  final bool usagePerProject;

  /// Supported addons for this plan
  final BillingPlanSupportedAddons supportedAddons;

  /// How many policies does plan support
  final int? backupPolicies;

  /// Maximum function and site deployment size in MB
  final int deploymentSize;

  /// Maximum function and site deployment size in MB
  final int buildSize;

  /// Shortest function schedule interval allowed, in minutes. 0 allows every interval.
  final int functionsIntervalMinimum;

  /// Does the plan allow cron function schedules or only intervals.
  final bool functionsAllowCron;

  /// Does the plan support encrypted string attributes or not.
  final bool databasesAllowEncrypt;

  /// Plan specific limits
  final BillingPlanLimits? limits;

  /// Group of this billing plan for variants
  final enums.BillingPlanGroup group;

  /// Details of the program this plan is a part of.
  final Program? program;

  /// Included monthly dedicated-database compute credit in USD. Resets each billing cycle with no roll-over.
  final double databaseComputeCredit;

  /// Dedicated database limits available to this plan.
  final BillingPlanDedicatedDatabaseLimits? dedicatedDatabases;

  BillingPlan({
    required this.$id,
    required this.name,
    required this.desc,
    required this.order,
    required this.price,
    required this.trial,
    required this.bandwidth,
    required this.storage,
    required this.imageTransformations,
    required this.screenshotsGenerated,
    this.members,
    required this.webhooks,
    required this.wafRules,
    required this.environments,
    required this.projects,
    required this.platforms,
    required this.users,
    required this.teams,
    required this.databases,
    required this.databasesReads,
    required this.databasesWrites,
    required this.databasesBatchSize,
    required this.buckets,
    required this.fileSize,
    required this.functions,
    required this.sites,
    required this.executions,
    required this.executionsRetentionCount,
    this.deploymentRetention,
    this.deploymentRetentionMax,
    this.deploymentsRetentionCount,
    required this.GBHours,
    required this.realtime,
    required this.realtimeMessages,
    required this.messages,
    required this.topics,
    required this.authPhone,
    required this.domains,
    this.activityLogs,
    required this.usageLogs,
    this.usageLogsIntervals,
    this.usageAggregateOnlyMetrics,
    required this.projectInactivityDays,
    required this.alertLimit,
    this.usage,
    required this.addons,
    required this.budgetCapEnabled,
    required this.customSmtp,
    required this.emailBranding,
    required this.requiresPaymentMethod,
    required this.requiresBillingAddress,
    this.eligibleCountries,
    required this.isAvailable,
    required this.selfService,
    required this.premiumSupport,
    required this.budgeting,
    required this.supportsMockNumbers,
    required this.supportsOrganizationRoles,
    required this.supportsCredits,
    required this.supportsDedicatedDatabases,
    required this.supportsDisposableEmailValidation,
    required this.supportsCanonicalEmailValidation,
    required this.supportsFreeEmailValidation,
    required this.supportsCorporateEmailValidation,
    required this.supportsProjectSpecificRoles,
    this.backupsEnabled,
    required this.usagePerProject,
    required this.supportedAddons,
    this.backupPolicies,
    required this.deploymentSize,
    required this.buildSize,
    required this.functionsIntervalMinimum,
    required this.functionsAllowCron,
    required this.databasesAllowEncrypt,
    this.limits,
    required this.group,
    this.program,
    required this.databaseComputeCredit,
    this.dedicatedDatabases,
  });
  factory BillingPlan.fromMap(
    Map<String, dynamic> map,
  ) {
    map = {
      '\$id': "",
      'name': "",
      'desc': "",
      'order': 0,
      'price': 0,
      'trial': 0,
      'bandwidth': 0,
      'storage': 0,
      'imageTransformations': 0,
      'screenshotsGenerated': 0,
      'webhooks': 0,
      'wafRules': 0,
      'environments': 0,
      'projects': 0,
      'platforms': 0,
      'users': 0,
      'teams': 0,
      'databases': 0,
      'databasesReads': 0,
      'databasesWrites': 0,
      'databasesBatchSize': 0,
      'buckets': 0,
      'fileSize': 0,
      'functions': 0,
      'sites': 0,
      'executions': 0,
      'executionsRetentionCount': 1000,
      'GBHours': 0,
      'realtime': 0,
      'realtimeMessages': 0,
      'messages': 0,
      'topics': 0,
      'authPhone': 0,
      'domains': 0,
      'usageLogs': 0,
      'projectInactivityDays': 0,
      'alertLimit': 80,
      'budgetCapEnabled': false,
      'customSmtp': false,
      'emailBranding': false,
      'requiresPaymentMethod': true,
      'requiresBillingAddress': false,
      'isAvailable': true,
      'selfService': true,
      'premiumSupport': true,
      'budgeting': true,
      'supportsMockNumbers': true,
      'supportsOrganizationRoles': true,
      'supportsCredits': false,
      'supportsDedicatedDatabases': false,
      'supportsDisposableEmailValidation': false,
      'supportsCanonicalEmailValidation': false,
      'supportsFreeEmailValidation': false,
      'supportsCorporateEmailValidation': false,
      'supportsProjectSpecificRoles': false,
      'usagePerProject': true,
      'deploymentSize': 0,
      'buildSize': 0,
      'functionsIntervalMinimum': 0,
      'functionsAllowCron': true,
      'databasesAllowEncrypt': false,
      'databaseComputeCredit': 0,
      ...map,
    };

    return BillingPlan(
      $id: map['\$id'].toString(),
      name: map['name'].toString(),
      desc: map['desc'].toString(),
      order: map['order'],
      price: map['price'].toDouble(),
      trial: map['trial'],
      bandwidth: map['bandwidth'],
      storage: map['storage'],
      imageTransformations: map['imageTransformations'],
      screenshotsGenerated: map['screenshotsGenerated'],
      members: map['members'],
      webhooks: map['webhooks'],
      wafRules: map['wafRules'],
      environments: map['environments'],
      projects: map['projects'],
      platforms: map['platforms'],
      users: map['users'],
      teams: map['teams'],
      databases: map['databases'],
      databasesReads: map['databasesReads'],
      databasesWrites: map['databasesWrites'],
      databasesBatchSize: map['databasesBatchSize'],
      buckets: map['buckets'],
      fileSize: map['fileSize'],
      functions: map['functions'],
      sites: map['sites'],
      executions: map['executions'],
      executionsRetentionCount: map['executionsRetentionCount'],
      deploymentRetention: map['deploymentRetention'],
      deploymentRetentionMax: map['deploymentRetentionMax'],
      deploymentsRetentionCount: map['deploymentsRetentionCount'],
      GBHours: map['GBHours'],
      realtime: map['realtime'],
      realtimeMessages: map['realtimeMessages'],
      messages: map['messages'],
      topics: map['topics'],
      authPhone: map['authPhone'],
      domains: map['domains'],
      activityLogs: map['activityLogs'],
      usageLogs: map['usageLogs'],
      usageLogsIntervals: List.from(map['usageLogsIntervals'] ?? []),
      usageAggregateOnlyMetrics:
          List.from(map['usageAggregateOnlyMetrics'] ?? []),
      projectInactivityDays: map['projectInactivityDays'],
      alertLimit: map['alertLimit'],
      usage: map['usage'] != null
          ? UsageBillingPlan.fromMap(
              map['usage'],
            )
          : null,
      addons: BillingPlanAddon.fromMap(
        map['addons'] ?? <String, dynamic>{},
      ),
      budgetCapEnabled: map['budgetCapEnabled'],
      customSmtp: map['customSmtp'],
      emailBranding: map['emailBranding'],
      requiresPaymentMethod: map['requiresPaymentMethod'],
      requiresBillingAddress: map['requiresBillingAddress'],
      eligibleCountries: List.from(map['eligibleCountries'] ?? []),
      isAvailable: map['isAvailable'],
      selfService: map['selfService'],
      premiumSupport: map['premiumSupport'],
      budgeting: map['budgeting'],
      supportsMockNumbers: map['supportsMockNumbers'],
      supportsOrganizationRoles: map['supportsOrganizationRoles'],
      supportsCredits: map['supportsCredits'],
      supportsDedicatedDatabases: map['supportsDedicatedDatabases'],
      supportsDisposableEmailValidation:
          map['supportsDisposableEmailValidation'],
      supportsCanonicalEmailValidation: map['supportsCanonicalEmailValidation'],
      supportsFreeEmailValidation: map['supportsFreeEmailValidation'],
      supportsCorporateEmailValidation: map['supportsCorporateEmailValidation'],
      supportsProjectSpecificRoles: map['supportsProjectSpecificRoles'],
      backupsEnabled: map['backupsEnabled'],
      usagePerProject: map['usagePerProject'],
      supportedAddons: BillingPlanSupportedAddons.fromMap(
        map['supportedAddons'] ?? <String, dynamic>{},
      ),
      backupPolicies: map['backupPolicies'],
      deploymentSize: map['deploymentSize'],
      buildSize: map['buildSize'],
      functionsIntervalMinimum: map['functionsIntervalMinimum'],
      functionsAllowCron: map['functionsAllowCron'],
      databasesAllowEncrypt: map['databasesAllowEncrypt'],
      limits: map['limits'] != null
          ? BillingPlanLimits.fromMap(
              map['limits'],
            )
          : null,
      group: enums.BillingPlanGroup.values.firstWhere(
        (e) => e.value == map['group'],
      ),
      program: map['program'] != null
          ? Program.fromMap(
              map['program'],
            )
          : null,
      databaseComputeCredit: map['databaseComputeCredit'].toDouble(),
      dedicatedDatabases: map['dedicatedDatabases'] != null
          ? BillingPlanDedicatedDatabaseLimits.fromMap(
              map['dedicatedDatabases'],
            )
          : null,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "name": name,
      "desc": desc,
      "order": order,
      "price": price,
      "trial": trial,
      "bandwidth": bandwidth,
      "storage": storage,
      "imageTransformations": imageTransformations,
      "screenshotsGenerated": screenshotsGenerated,
      "members": members,
      "webhooks": webhooks,
      "wafRules": wafRules,
      "environments": environments,
      "projects": projects,
      "platforms": platforms,
      "users": users,
      "teams": teams,
      "databases": databases,
      "databasesReads": databasesReads,
      "databasesWrites": databasesWrites,
      "databasesBatchSize": databasesBatchSize,
      "buckets": buckets,
      "fileSize": fileSize,
      "functions": functions,
      "sites": sites,
      "executions": executions,
      "executionsRetentionCount": executionsRetentionCount,
      "deploymentRetention": deploymentRetention,
      "deploymentRetentionMax": deploymentRetentionMax,
      "deploymentsRetentionCount": deploymentsRetentionCount,
      "GBHours": GBHours,
      "realtime": realtime,
      "realtimeMessages": realtimeMessages,
      "messages": messages,
      "topics": topics,
      "authPhone": authPhone,
      "domains": domains,
      "activityLogs": activityLogs,
      "usageLogs": usageLogs,
      "usageLogsIntervals": usageLogsIntervals,
      "usageAggregateOnlyMetrics": usageAggregateOnlyMetrics,
      "projectInactivityDays": projectInactivityDays,
      "alertLimit": alertLimit,
      "usage": usage?.toMap(),
      "addons": addons.toMap(),
      "budgetCapEnabled": budgetCapEnabled,
      "customSmtp": customSmtp,
      "emailBranding": emailBranding,
      "requiresPaymentMethod": requiresPaymentMethod,
      "requiresBillingAddress": requiresBillingAddress,
      "eligibleCountries": eligibleCountries,
      "isAvailable": isAvailable,
      "selfService": selfService,
      "premiumSupport": premiumSupport,
      "budgeting": budgeting,
      "supportsMockNumbers": supportsMockNumbers,
      "supportsOrganizationRoles": supportsOrganizationRoles,
      "supportsCredits": supportsCredits,
      "supportsDedicatedDatabases": supportsDedicatedDatabases,
      "supportsDisposableEmailValidation": supportsDisposableEmailValidation,
      "supportsCanonicalEmailValidation": supportsCanonicalEmailValidation,
      "supportsFreeEmailValidation": supportsFreeEmailValidation,
      "supportsCorporateEmailValidation": supportsCorporateEmailValidation,
      "supportsProjectSpecificRoles": supportsProjectSpecificRoles,
      "backupsEnabled": backupsEnabled,
      "usagePerProject": usagePerProject,
      "supportedAddons": supportedAddons.toMap(),
      "backupPolicies": backupPolicies,
      "deploymentSize": deploymentSize,
      "buildSize": buildSize,
      "functionsIntervalMinimum": functionsIntervalMinimum,
      "functionsAllowCron": functionsAllowCron,
      "databasesAllowEncrypt": databasesAllowEncrypt,
      "limits": limits?.toMap(),
      "group": group.value,
      "program": program?.toMap(),
      "databaseComputeCredit": databaseComputeCredit,
      "dedicatedDatabases": dedicatedDatabases?.toMap(),
    };
  }
}
