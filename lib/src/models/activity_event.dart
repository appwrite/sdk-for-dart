part of '../../models.dart';

/// ActivityEvent
class ActivityEvent implements Model {
  /// Event ID.
  final String $id;

  /// User type.
  final String userType;

  /// User ID.
  final String userId;

  /// User Email.
  final String userEmail;

  /// User Name.
  final String userName;

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

  /// Operating system code name. View list of [available options](https://github.com/appwrite/appwrite/blob/master/docs/lists/os.json).
  final String osCode;

  /// Operating system name.
  final String osName;

  /// Operating system version.
  final String osVersion;

  /// Client type.
  final String clientType;

  /// Client code name. View list of [available options](https://github.com/appwrite/appwrite/blob/master/docs/lists/clients.json).
  final String clientCode;

  /// Client name.
  final String clientName;

  /// Client version.
  final String clientVersion;

  /// Client engine name.
  final String clientEngine;

  /// Client engine name.
  final String clientEngineVersion;

  /// Device name.
  final String deviceName;

  /// Device brand name.
  final String deviceBrand;

  /// Device model name.
  final String deviceModel;

  /// Country two-character ISO 3166-1 alpha code.
  final String countryCode;

  /// Country name.
  final String countryName;

  ActivityEvent({
    required this.$id,
    required this.userType,
    required this.userId,
    required this.userEmail,
    required this.userName,
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
    required this.osCode,
    required this.osName,
    required this.osVersion,
    required this.clientType,
    required this.clientCode,
    required this.clientName,
    required this.clientVersion,
    required this.clientEngine,
    required this.clientEngineVersion,
    required this.deviceName,
    required this.deviceBrand,
    required this.deviceModel,
    required this.countryCode,
    required this.countryName,
  });

  factory ActivityEvent.fromMap(Map<String, dynamic> map) {
    return ActivityEvent(
      $id: map['\$id'].toString(),
      userType: map['userType'].toString(),
      userId: map['userId'].toString(),
      userEmail: map['userEmail'].toString(),
      userName: map['userName'].toString(),
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
      osCode: map['osCode'].toString(),
      osName: map['osName'].toString(),
      osVersion: map['osVersion'].toString(),
      clientType: map['clientType'].toString(),
      clientCode: map['clientCode'].toString(),
      clientName: map['clientName'].toString(),
      clientVersion: map['clientVersion'].toString(),
      clientEngine: map['clientEngine'].toString(),
      clientEngineVersion: map['clientEngineVersion'].toString(),
      deviceName: map['deviceName'].toString(),
      deviceBrand: map['deviceBrand'].toString(),
      deviceModel: map['deviceModel'].toString(),
      countryCode: map['countryCode'].toString(),
      countryName: map['countryName'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "userType": userType,
      "userId": userId,
      "userEmail": userEmail,
      "userName": userName,
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
      "osCode": osCode,
      "osName": osName,
      "osVersion": osVersion,
      "clientType": clientType,
      "clientCode": clientCode,
      "clientName": clientName,
      "clientVersion": clientVersion,
      "clientEngine": clientEngine,
      "clientEngineVersion": clientEngineVersion,
      "deviceName": deviceName,
      "deviceBrand": deviceBrand,
      "deviceModel": deviceModel,
      "countryCode": countryCode,
      "countryName": countryName,
    };
  }
}
