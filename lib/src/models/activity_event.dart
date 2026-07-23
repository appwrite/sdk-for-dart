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

    /// Continent code.
    final String continentCode;

    /// City name.
    final String city;

    /// Region/state chain.
    final String subdivisions;

    /// Internet service provider.
    final String isp;

    /// Autonomous System Number (ASN).
    final String autonomousSystemNumber;

    /// Organization that owns the ASN.
    final String autonomousSystemOrganization;

    /// Connection type (e.g. cable, cellular, corporate).
    final String connectionType;

    /// User type (e.g. residential, business, hosting).
    final String connectionUsageType;

    /// Registered organization of the IP.
    final String connectionOrganization;

    /// Log creation date in ISO 8601 format.
    final String time;

    /// Project ID.
    final String projectId;

    /// Team ID.
    final String teamId;

    /// Hostname.
    final String hostname;

    /// Name of the SDK that triggered the event.
    final String sdk;

    /// Version of the SDK that triggered the event.
    final String sdkVersion;

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
        required this.continentCode,
        required this.city,
        required this.subdivisions,
        required this.isp,
        required this.autonomousSystemNumber,
        required this.autonomousSystemOrganization,
        required this.connectionType,
        required this.connectionUsageType,
        required this.connectionOrganization,
        required this.time,
        required this.projectId,
        required this.teamId,
        required this.hostname,
        required this.sdk,
        required this.sdkVersion,
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
            continentCode: map['continentCode'].toString(),
            city: map['city'].toString(),
            subdivisions: map['subdivisions'].toString(),
            isp: map['isp'].toString(),
            autonomousSystemNumber: map['autonomousSystemNumber'].toString(),
            autonomousSystemOrganization: map['autonomousSystemOrganization'].toString(),
            connectionType: map['connectionType'].toString(),
            connectionUsageType: map['connectionUsageType'].toString(),
            connectionOrganization: map['connectionOrganization'].toString(),
            time: map['time'].toString(),
            projectId: map['projectId'].toString(),
            teamId: map['teamId'].toString(),
            hostname: map['hostname'].toString(),
            sdk: map['sdk'].toString(),
            sdkVersion: map['sdkVersion'].toString(),
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
            "continentCode": continentCode,
            "city": city,
            "subdivisions": subdivisions,
            "isp": isp,
            "autonomousSystemNumber": autonomousSystemNumber,
            "autonomousSystemOrganization": autonomousSystemOrganization,
            "connectionType": connectionType,
            "connectionUsageType": connectionUsageType,
            "connectionOrganization": connectionOrganization,
            "time": time,
            "projectId": projectId,
            "teamId": teamId,
            "hostname": hostname,
            "sdk": sdk,
            "sdkVersion": sdkVersion,
        };
    }
}
