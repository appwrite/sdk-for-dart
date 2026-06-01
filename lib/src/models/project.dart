part of '../../models.dart';

/// Project
class Project implements Model {
  /// Project ID.
  final String $id;

  /// Project creation date in ISO 8601 format.
  final String $createdAt;

  /// Project update date in ISO 8601 format.
  final String $updatedAt;

  /// Project name.
  final String name;

  /// Project team ID.
  final String teamId;

  /// Deprecated since 1.9.5: List of dev keys.
  final List<DevKey> devKeys;

  /// Status for custom SMTP
  final bool smtpEnabled;

  /// SMTP sender name
  final String smtpSenderName;

  /// SMTP sender email
  final String smtpSenderEmail;

  /// SMTP reply to name
  final String smtpReplyToName;

  /// SMTP reply to email
  final String smtpReplyToEmail;

  /// SMTP server host name
  final String smtpHost;

  /// SMTP server port
  final int smtpPort;

  /// SMTP server username
  final String smtpUsername;

  /// SMTP server password. This property is write-only and always returned empty.
  final String smtpPassword;

  /// SMTP server secure protocol
  final String smtpSecure;

  /// Number of times the ping was received for this project.
  final int pingCount;

  /// Last ping datetime in ISO 8601 format.
  final String pingedAt;

  /// Labels for the project.
  final List<String> labels;

  /// Project status
  final String status;

  /// List of auth methods.
  final List<ProjectAuthMethod> authMethods;

  /// List of services.
  final List<ProjectService> services;

  /// List of protocols.
  final List<ProjectProtocol> protocols;

  /// Project region
  final String region;

  /// Billing limits reached
  final BillingLimits? billingLimits;

  /// Project blocks information
  final List<Block> blocks;

  /// Last time the project was accessed via console. Used with plan&#039;s projectInactivityDays to determine if project is paused.
  final String consoleAccessedAt;

  Project({
    required this.$id,
    required this.$createdAt,
    required this.$updatedAt,
    required this.name,
    required this.teamId,
    required this.devKeys,
    required this.smtpEnabled,
    required this.smtpSenderName,
    required this.smtpSenderEmail,
    required this.smtpReplyToName,
    required this.smtpReplyToEmail,
    required this.smtpHost,
    required this.smtpPort,
    required this.smtpUsername,
    required this.smtpPassword,
    required this.smtpSecure,
    required this.pingCount,
    required this.pingedAt,
    required this.labels,
    required this.status,
    required this.authMethods,
    required this.services,
    required this.protocols,
    required this.region,
    this.billingLimits,
    required this.blocks,
    required this.consoleAccessedAt,
  });

  factory Project.fromMap(Map<String, dynamic> map) {
    return Project(
      $id: map['\$id'].toString(),
      $createdAt: map['\$createdAt'].toString(),
      $updatedAt: map['\$updatedAt'].toString(),
      name: map['name'].toString(),
      teamId: map['teamId'].toString(),
      devKeys: List<DevKey>.from(map['devKeys'].map((p) => DevKey.fromMap(p))),
      smtpEnabled: map['smtpEnabled'],
      smtpSenderName: map['smtpSenderName'].toString(),
      smtpSenderEmail: map['smtpSenderEmail'].toString(),
      smtpReplyToName: map['smtpReplyToName'].toString(),
      smtpReplyToEmail: map['smtpReplyToEmail'].toString(),
      smtpHost: map['smtpHost'].toString(),
      smtpPort: map['smtpPort'],
      smtpUsername: map['smtpUsername'].toString(),
      smtpPassword: map['smtpPassword'].toString(),
      smtpSecure: map['smtpSecure'].toString(),
      pingCount: map['pingCount'],
      pingedAt: map['pingedAt'].toString(),
      labels: List.from(map['labels'] ?? []),
      status: map['status'].toString(),
      authMethods: List<ProjectAuthMethod>.from(
          map['authMethods'].map((p) => ProjectAuthMethod.fromMap(p))),
      services: List<ProjectService>.from(
          map['services'].map((p) => ProjectService.fromMap(p))),
      protocols: List<ProjectProtocol>.from(
          map['protocols'].map((p) => ProjectProtocol.fromMap(p))),
      region: map['region'].toString(),
      billingLimits: BillingLimits.fromMap(map['billingLimits']),
      blocks: List<Block>.from(map['blocks'].map((p) => Block.fromMap(p))),
      consoleAccessedAt: map['consoleAccessedAt'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "\$createdAt": $createdAt,
      "\$updatedAt": $updatedAt,
      "name": name,
      "teamId": teamId,
      "devKeys": devKeys.map((p) => p.toMap()).toList(),
      "smtpEnabled": smtpEnabled,
      "smtpSenderName": smtpSenderName,
      "smtpSenderEmail": smtpSenderEmail,
      "smtpReplyToName": smtpReplyToName,
      "smtpReplyToEmail": smtpReplyToEmail,
      "smtpHost": smtpHost,
      "smtpPort": smtpPort,
      "smtpUsername": smtpUsername,
      "smtpPassword": smtpPassword,
      "smtpSecure": smtpSecure,
      "pingCount": pingCount,
      "pingedAt": pingedAt,
      "labels": labels,
      "status": status,
      "authMethods": authMethods.map((p) => p.toMap()).toList(),
      "services": services.map((p) => p.toMap()).toList(),
      "protocols": protocols.map((p) => p.toMap()).toList(),
      "region": region,
      "billingLimits": billingLimits?.toMap(),
      "blocks": blocks.map((p) => p.toMap()).toList(),
      "consoleAccessedAt": consoleAccessedAt,
    };
  }
}
