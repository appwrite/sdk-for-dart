part of '../../models.dart';

/// Addon
class BillingPlanAddon implements Model {
    /// Addon seats
    final BillingPlanAddonDetails seats;

    /// Addon projects
    final BillingPlanAddonDetails projects;

    BillingPlanAddon({
        required this.seats,
        required this.projects,
    });

    factory BillingPlanAddon.fromMap(Map<String, dynamic> map) {
        return BillingPlanAddon(
            seats: BillingPlanAddonDetails.fromMap(map['seats']),
            projects: BillingPlanAddonDetails.fromMap(map['projects']),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "seats": seats.toMap(),
            "projects": projects.toMap(),
        };
    }
}
