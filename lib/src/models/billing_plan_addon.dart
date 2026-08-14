part of '../../models.dart';

/// Addon
class BillingPlanAddon implements Model {
    /// Addon seats
    final BillingPlanAddonDetails? seats;

    /// Addon projects
    final BillingPlanAddonDetails? projects;

    BillingPlanAddon({
        this.seats,
        this.projects,
    });

    factory BillingPlanAddon.fromMap(Map<String, dynamic> map) {
        return BillingPlanAddon(
            seats: map['seats'] != null ? BillingPlanAddonDetails.fromMap(map['seats']) : null,
            projects: map['projects'] != null ? BillingPlanAddonDetails.fromMap(map['projects']) : null,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "seats": seats?.toMap(),
            "projects": projects?.toMap(),
        };
    }
}
