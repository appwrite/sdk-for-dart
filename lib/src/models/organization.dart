part of '../../models.dart';

/// Organization
class Organization implements Model {
  /// Team ID.
  final String $id;

  /// Team creation date in ISO 8601 format.
  final String $createdAt;

  /// Team update date in ISO 8601 format.
  final String $updatedAt;

  /// Team name.
  final String name;

  /// Total number of team members.
  final int total;

  /// Team preferences as a key-value object
  final Preferences prefs;

  /// Project budget limit
  final int billingBudget;

  /// Project budget limit
  final List<int> budgetAlerts;

  /// Organization&#039;s billing plan ID.
  final String billingPlan;

  /// Organization&#039;s billing plan ID.
  final String billingPlanId;

  /// Organization&#039;s billing plan.
  final BillingPlan billingPlanDetails;

  /// Billing email set for the organization.
  final String billingEmail;

  /// Billing cycle start date.
  final String billingStartDate;

  /// Current invoice cycle start date.
  final String billingCurrentInvoiceDate;

  /// Next invoice cycle start date.
  final String billingNextInvoiceDate;

  /// Start date of trial.
  final String billingTrialStartDate;

  /// Number of trial days.
  final int billingTrialDays;

  /// Current active aggregation id.
  final String billingAggregationId;

  /// Current active aggregation id.
  final String billingInvoiceId;

  /// Default payment method.
  final String paymentMethodId;

  /// Default payment method.
  final String billingAddressId;

  /// Backup payment method.
  final String backupPaymentMethodId;

  /// Team status.
  final String status;

  /// Remarks on team status.
  final String remarks;

  /// Organization agreements
  final String agreementBAA;

  /// Program manager&#039;s name.
  final String programManagerName;

  /// Program manager&#039;s calendar link.
  final String programManagerCalendar;

  /// Program&#039;s discord channel name.
  final String programDiscordChannelName;

  /// Program&#039;s discord channel URL.
  final String programDiscordChannelUrl;

  /// Billing limits reached
  final BillingLimits? billingLimits;

  /// Billing plan selected for downgrade.
  final String billingPlanDowngrade;

  /// Tax Id
  final String billingTaxId;

  /// Marked for deletion
  final bool markedForDeletion;

  /// Product with which the organization is associated (appwrite or imagine)
  final String platform;

  /// Selected projects
  final List<String> projects;

  Organization({
    required this.$id,
    required this.$createdAt,
    required this.$updatedAt,
    required this.name,
    required this.total,
    required this.prefs,
    required this.billingBudget,
    required this.budgetAlerts,
    required this.billingPlan,
    required this.billingPlanId,
    required this.billingPlanDetails,
    required this.billingEmail,
    required this.billingStartDate,
    required this.billingCurrentInvoiceDate,
    required this.billingNextInvoiceDate,
    required this.billingTrialStartDate,
    required this.billingTrialDays,
    required this.billingAggregationId,
    required this.billingInvoiceId,
    required this.paymentMethodId,
    required this.billingAddressId,
    required this.backupPaymentMethodId,
    required this.status,
    required this.remarks,
    required this.agreementBAA,
    required this.programManagerName,
    required this.programManagerCalendar,
    required this.programDiscordChannelName,
    required this.programDiscordChannelUrl,
    this.billingLimits,
    required this.billingPlanDowngrade,
    required this.billingTaxId,
    required this.markedForDeletion,
    required this.platform,
    required this.projects,
  });

  factory Organization.fromMap(Map<String, dynamic> map) {
    return Organization(
      $id: map['\$id'].toString(),
      $createdAt: map['\$createdAt'].toString(),
      $updatedAt: map['\$updatedAt'].toString(),
      name: map['name'].toString(),
      total: map['total'],
      prefs: Preferences.fromMap(map['prefs']),
      billingBudget: map['billingBudget'],
      budgetAlerts: List.from(map['budgetAlerts'] ?? []),
      billingPlan: map['billingPlan'].toString(),
      billingPlanId: map['billingPlanId'].toString(),
      billingPlanDetails: BillingPlan.fromMap(map['billingPlanDetails']),
      billingEmail: map['billingEmail'].toString(),
      billingStartDate: map['billingStartDate'].toString(),
      billingCurrentInvoiceDate: map['billingCurrentInvoiceDate'].toString(),
      billingNextInvoiceDate: map['billingNextInvoiceDate'].toString(),
      billingTrialStartDate: map['billingTrialStartDate'].toString(),
      billingTrialDays: map['billingTrialDays'],
      billingAggregationId: map['billingAggregationId'].toString(),
      billingInvoiceId: map['billingInvoiceId'].toString(),
      paymentMethodId: map['paymentMethodId'].toString(),
      billingAddressId: map['billingAddressId'].toString(),
      backupPaymentMethodId: map['backupPaymentMethodId'].toString(),
      status: map['status'].toString(),
      remarks: map['remarks'].toString(),
      agreementBAA: map['agreementBAA'].toString(),
      programManagerName: map['programManagerName'].toString(),
      programManagerCalendar: map['programManagerCalendar'].toString(),
      programDiscordChannelName: map['programDiscordChannelName'].toString(),
      programDiscordChannelUrl: map['programDiscordChannelUrl'].toString(),
      billingLimits: BillingLimits.fromMap(map['billingLimits']),
      billingPlanDowngrade: map['billingPlanDowngrade'].toString(),
      billingTaxId: map['billingTaxId'].toString(),
      markedForDeletion: map['markedForDeletion'],
      platform: map['platform'].toString(),
      projects: List.from(map['projects'] ?? []),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "\$createdAt": $createdAt,
      "\$updatedAt": $updatedAt,
      "name": name,
      "total": total,
      "prefs": prefs.toMap(),
      "billingBudget": billingBudget,
      "budgetAlerts": budgetAlerts,
      "billingPlan": billingPlan,
      "billingPlanId": billingPlanId,
      "billingPlanDetails": billingPlanDetails.toMap(),
      "billingEmail": billingEmail,
      "billingStartDate": billingStartDate,
      "billingCurrentInvoiceDate": billingCurrentInvoiceDate,
      "billingNextInvoiceDate": billingNextInvoiceDate,
      "billingTrialStartDate": billingTrialStartDate,
      "billingTrialDays": billingTrialDays,
      "billingAggregationId": billingAggregationId,
      "billingInvoiceId": billingInvoiceId,
      "paymentMethodId": paymentMethodId,
      "billingAddressId": billingAddressId,
      "backupPaymentMethodId": backupPaymentMethodId,
      "status": status,
      "remarks": remarks,
      "agreementBAA": agreementBAA,
      "programManagerName": programManagerName,
      "programManagerCalendar": programManagerCalendar,
      "programDiscordChannelName": programDiscordChannelName,
      "programDiscordChannelUrl": programDiscordChannelUrl,
      "billingLimits": billingLimits?.toMap(),
      "billingPlanDowngrade": billingPlanDowngrade,
      "billingTaxId": billingTaxId,
      "markedForDeletion": markedForDeletion,
      "platform": platform,
      "projects": projects,
    };
  }
}
