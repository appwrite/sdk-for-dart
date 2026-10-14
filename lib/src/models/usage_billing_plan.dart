part of '../../models.dart';

/// usageBillingPlan
class UsageBillingPlan implements Model {
  /// Bandwidth additional resources
  final AdditionalResource? bandwidth;

  /// Executions additional resources
  final AdditionalResource? executions;

  /// Member additional resources
  final AdditionalResource? member;

  /// Realtime additional resources
  final AdditionalResource? realtime;

  /// Realtime messages additional resources
  final AdditionalResource? realtimeMessages;

  /// Realtime bandwidth additional resources
  final AdditionalResource? realtimeBandwidth;

  /// Storage additional resources
  final AdditionalResource? storage;

  /// User additional resources
  final AdditionalResource? users;

  /// GBHour additional resources
  final AdditionalResource? GBHours;

  /// Image transformation additional resources
  final AdditionalResource? imageTransformations;

  /// Credits additional resources
  final AdditionalResource? credits;

  UsageBillingPlan({
    this.bandwidth,
    this.executions,
    this.member,
    this.realtime,
    this.realtimeMessages,
    this.realtimeBandwidth,
    this.storage,
    this.users,
    this.GBHours,
    this.imageTransformations,
    this.credits,
  });
  factory UsageBillingPlan.fromMap(
    Map<String, dynamic> map,
  ) {
    return UsageBillingPlan(
      bandwidth: map['bandwidth'] != null
          ? AdditionalResource.fromMap(
              map['bandwidth'],
            )
          : null,
      executions: map['executions'] != null
          ? AdditionalResource.fromMap(
              map['executions'],
            )
          : null,
      member: map['member'] != null
          ? AdditionalResource.fromMap(
              map['member'],
            )
          : null,
      realtime: map['realtime'] != null
          ? AdditionalResource.fromMap(
              map['realtime'],
            )
          : null,
      realtimeMessages: map['realtimeMessages'] != null
          ? AdditionalResource.fromMap(
              map['realtimeMessages'],
            )
          : null,
      realtimeBandwidth: map['realtimeBandwidth'] != null
          ? AdditionalResource.fromMap(
              map['realtimeBandwidth'],
            )
          : null,
      storage: map['storage'] != null
          ? AdditionalResource.fromMap(
              map['storage'],
            )
          : null,
      users: map['users'] != null
          ? AdditionalResource.fromMap(
              map['users'],
            )
          : null,
      GBHours: map['GBHours'] != null
          ? AdditionalResource.fromMap(
              map['GBHours'],
            )
          : null,
      imageTransformations: map['imageTransformations'] != null
          ? AdditionalResource.fromMap(
              map['imageTransformations'],
            )
          : null,
      credits: map['credits'] != null
          ? AdditionalResource.fromMap(
              map['credits'],
            )
          : null,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "bandwidth": bandwidth?.toMap(),
      "executions": executions?.toMap(),
      "member": member?.toMap(),
      "realtime": realtime?.toMap(),
      "realtimeMessages": realtimeMessages?.toMap(),
      "realtimeBandwidth": realtimeBandwidth?.toMap(),
      "storage": storage?.toMap(),
      "users": users?.toMap(),
      "GBHours": GBHours?.toMap(),
      "imageTransformations": imageTransformations?.toMap(),
      "credits": credits?.toMap(),
    };
  }
}
