part of '../../models.dart';

/// Limits
class BillingLimits implements Model {
    /// Bandwidth limit
    final int? bandwidth;

    /// Storage limit
    final int? storage;

    /// Users limit
    final int? users;

    /// Executions limit
    final int? executions;

    /// GBHours limit
    final int? GBHours;

    /// Image transformations limit
    final int? imageTransformations;

    /// Auth phone limit
    final int? authPhone;

    /// Budget limit percentage
    final int? budgetLimit;

    BillingLimits({
        this.bandwidth,
        this.storage,
        this.users,
        this.executions,
        this.GBHours,
        this.imageTransformations,
        this.authPhone,
        this.budgetLimit,
    });

    factory BillingLimits.fromMap(Map<String, dynamic> map) {
        return BillingLimits(
            bandwidth: map['bandwidth'],
            storage: map['storage'],
            users: map['users'],
            executions: map['executions'],
            GBHours: map['GBHours'],
            imageTransformations: map['imageTransformations'],
            authPhone: map['authPhone'],
            budgetLimit: map['budgetLimit'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "bandwidth": bandwidth,
            "storage": storage,
            "users": users,
            "executions": executions,
            "GBHours": GBHours,
            "imageTransformations": imageTransformations,
            "authPhone": authPhone,
            "budgetLimit": budgetLimit,
        };
    }
}
