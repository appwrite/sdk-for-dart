part of '../../models.dart';

/// PlanLimits
class BillingPlanLimits implements Model {
    /// Credits limit per billing cycle
    final int? credits;

    /// Daily credits limit (if applicable)
    final int? dailyCredits;

    BillingPlanLimits({
        this.credits,
        this.dailyCredits,
    });

    factory BillingPlanLimits.fromMap(Map<String, dynamic> map) {
        return BillingPlanLimits(
            credits: map['credits'],
            dailyCredits: map['dailyCredits'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "credits": credits,
            "dailyCredits": dailyCredits,
        };
    }
}
