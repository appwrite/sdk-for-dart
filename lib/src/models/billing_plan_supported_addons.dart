part of '../../models.dart';

/// BillingPlanSupportedAddons
class BillingPlanSupportedAddons implements Model {
  /// Whether the plan supports BAA (Business Associate Agreement) addon
  final bool baa;

  /// Whether the plan supports Premium Geo DB addon (project-level)
  final bool premiumGeoDB;

  /// Whether the plan supports Premium Geo DB addon (organization-level)
  final bool premiumGeoDBOrg;

  BillingPlanSupportedAddons({
    required this.baa,
    required this.premiumGeoDB,
    required this.premiumGeoDBOrg,
  });

  factory BillingPlanSupportedAddons.fromMap(Map<String, dynamic> map) {
    return BillingPlanSupportedAddons(
      baa: map['baa'],
      premiumGeoDB: map['premiumGeoDB'],
      premiumGeoDBOrg: map['premiumGeoDBOrg'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "baa": baa,
      "premiumGeoDB": premiumGeoDB,
      "premiumGeoDBOrg": premiumGeoDBOrg,
    };
  }
}
