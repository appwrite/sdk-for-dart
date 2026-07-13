part of '../../models.dart';

/// ActivityEvent
class ActivityEvent implements Model {
    /// Event ID.
    final String $id;

    /// Actor type.
    final String actorType;

    /// Actor ID.
    final String actorId;

    /// Actor Email.
    final String actorEmail;

    /// Actor Name.
    final String actorName;

    /// Resource parent.
    final String resourceParent;

    /// Resource type.
    final String resourceType;

    /// Resource ID.
    final String resourceId;

    /// Resource.
    final String resource;

    /// Event name.
    final String event;

    /// User agent.
    final String userAgent;

    /// IP address.
    final String ip;

    /// API mode when event triggered.
    final String mode;

    /// Location.
    final String country;

    /// Log creation date in ISO 8601 format.
    final String time;

    /// Project ID.
    final String projectId;

    /// Team ID.
    final String teamId;

    /// Hostname.
    final String hostname;

    ActivityEvent({
        required this.$id,
        required this.actorType,
        required this.actorId,
        required this.actorEmail,
        required this.actorName,
        required this.resourceParent,
        required this.resourceType,
        required this.resourceId,
        required this.resource,
        required this.event,
        required this.userAgent,
        required this.ip,
        required this.mode,
        required this.country,
        required this.time,
        required this.projectId,
        required this.teamId,
        required this.hostname,
    });

    factory ActivityEvent.fromMap(Map<String, dynamic> map) {
        return ActivityEvent(
            $id: map['\$id'].toString(),
            actorType: map['actorType'].toString(),
            actorId: map['actorId'].toString(),
            actorEmail: map['actorEmail'].toString(),
            actorName: map['actorName'].toString(),
            resourceParent: map['resourceParent'].toString(),
            resourceType: map['resourceType'].toString(),
            resourceId: map['resourceId'].toString(),
            resource: map['resource'].toString(),
            event: map['event'].toString(),
            userAgent: map['userAgent'].toString(),
            ip: map['ip'].toString(),
            mode: map['mode'].toString(),
            country: map['country'].toString(),
            time: map['time'].toString(),
            projectId: map['projectId'].toString(),
            teamId: map['teamId'].toString(),
            hostname: map['hostname'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "actorType": actorType,
            "actorId": actorId,
            "actorEmail": actorEmail,
            "actorName": actorName,
            "resourceParent": resourceParent,
            "resourceType": resourceType,
            "resourceId": resourceId,
            "resource": resource,
            "event": event,
            "userAgent": userAgent,
            "ip": ip,
            "mode": mode,
            "country": country,
            "time": time,
            "projectId": projectId,
            "teamId": teamId,
            "hostname": hostname,
        };
    }
}
