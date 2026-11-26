part of '../../models.dart';

/// Escalation Step
class EscalationStep implements Model {
  /// Seconds to wait before notifying this step: after the alert fires for the first step, after the previous step for the others.
  final int delay;

  /// Organization roles whose confirmed members this step notifies.
  final List<String> roles;

  /// IDs of the organization&#039;s members this step notifies, whatever their role.
  final List<String> userIds;

  EscalationStep({
    required this.delay,
    required this.roles,
    required this.userIds,
  });
  factory EscalationStep.fromMap(
    Map<String, dynamic> map,
  ) {
    map = {
      'delay': 0,
      'roles': [],
      'userIds': [],
      ...map,
    };

    return EscalationStep(
      delay: map['delay'],
      roles: List.from(map['roles'] ?? []),
      userIds: List.from(map['userIds'] ?? []),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "delay": delay,
      "roles": roles,
      "userIds": userIds,
    };
  }
}
