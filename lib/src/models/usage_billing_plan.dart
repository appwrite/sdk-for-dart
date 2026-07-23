part of '../../models.dart';

/// usageBillingPlan
class UsageBillingPlan implements Model {
    /// Bandwidth additional resources
    final AdditionalResource bandwidth;

    /// Executions additional resources
    final AdditionalResource executions;

    /// Member additional resources
    final AdditionalResource member;

    /// Realtime additional resources
    final AdditionalResource realtime;

    /// Realtime messages additional resources
    final AdditionalResource realtimeMessages;

    /// Realtime bandwidth additional resources
    final AdditionalResource realtimeBandwidth;

    /// Storage additional resources
    final AdditionalResource storage;

    /// User additional resources
    final AdditionalResource users;

    /// GBHour additional resources
    final AdditionalResource GBHours;

    /// Image transformation additional resources
    final AdditionalResource imageTransformations;

    /// Credits additional resources
    final AdditionalResource credits;

    UsageBillingPlan({
        required this.bandwidth,
        required this.executions,
        required this.member,
        required this.realtime,
        required this.realtimeMessages,
        required this.realtimeBandwidth,
        required this.storage,
        required this.users,
        required this.GBHours,
        required this.imageTransformations,
        required this.credits,
    });

    factory UsageBillingPlan.fromMap(Map<String, dynamic> map) {
        return UsageBillingPlan(
            bandwidth: AdditionalResource.fromMap(map['bandwidth']),
            executions: AdditionalResource.fromMap(map['executions']),
            member: AdditionalResource.fromMap(map['member']),
            realtime: AdditionalResource.fromMap(map['realtime']),
            realtimeMessages: AdditionalResource.fromMap(map['realtimeMessages']),
            realtimeBandwidth: AdditionalResource.fromMap(map['realtimeBandwidth']),
            storage: AdditionalResource.fromMap(map['storage']),
            users: AdditionalResource.fromMap(map['users']),
            GBHours: AdditionalResource.fromMap(map['GBHours']),
            imageTransformations: AdditionalResource.fromMap(map['imageTransformations']),
            credits: AdditionalResource.fromMap(map['credits']),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "bandwidth": bandwidth.toMap(),
            "executions": executions.toMap(),
            "member": member.toMap(),
            "realtime": realtime.toMap(),
            "realtimeMessages": realtimeMessages.toMap(),
            "realtimeBandwidth": realtimeBandwidth.toMap(),
            "storage": storage.toMap(),
            "users": users.toMap(),
            "GBHours": GBHours.toMap(),
            "imageTransformations": imageTransformations.toMap(),
            "credits": credits.toMap(),
        };
    }
}
