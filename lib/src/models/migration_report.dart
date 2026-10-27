part of '../../models.dart';

/// Migration Report
class MigrationReport implements Model {
  /// Number of users to be migrated.
  final int user;

  /// Number of teams to be migrated.
  final int team;

  /// Number of databases to be migrated.
  final int database;

  /// Number of rows to be migrated.
  final int row;

  /// Number of files to be migrated.
  final int file;

  /// Number of buckets to be migrated.
  final int bucket;

  /// Number of functions to be migrated.
  final int function;

  /// Number of platforms to be migrated.
  final int platform;

  /// Number of API keys to be migrated.
  final int apiKey;

  /// Number of project variables to be migrated.
  final int projectVariable;

  /// Number of webhooks to be migrated.
  final int webhook;

  /// Number of auth-method configs to be migrated (always 0 or 1 — the project-level flag bundle).
  final int authMethods;

  /// Number of protocol configs to be migrated (always 0 or 1 — the project-level REST/GraphQL/WebSocket flags).
  final int projectProtocols;

  /// Number of label sets to be migrated (always 0 or 1 — the project-level RBAC label array).
  final int projectLabels;

  /// Number of service configs to be migrated (always 0 or 1 — the project-level enable/disable flags for all 17 services).
  final int projectServices;

  /// Number of policy bundles to be migrated (always 0 or 1 — the project-level security policies covering password rules, session behavior, user limits, and membership privacy).
  final int policies;

  /// Number of SMTP configurations to be migrated (always 0 or 1 — the project-level custom SMTP settings; password is not exposed by the source API).
  final int smtp;

  /// Number of custom-domain proxy rules to be migrated. Auto-generated `.appwrite.network` rules are skipped — they are recreated by parent Function/Site migration.
  final int rule;

  /// Number of custom email templates to be migrated (one per templateId × locale pair).
  final int projectEmailTemplate;

  /// Number of project environments to be migrated. Each is recreated under a new ID, empty: its own resources belong to a separate project.
  final int projectEnvironment;

  /// Number of sites to be migrated.
  final int site;

  /// Number of providers to be migrated.
  final int provider;

  /// Number of topics to be migrated.
  final int topic;

  /// Number of subscribers to be migrated.
  final int subscriber;

  /// Number of messages to be migrated.
  final int message;

  /// Size of files to be migrated in mb.
  final int size;

  /// Version of the Appwrite instance to be migrated.
  final String version;

  /// Number of OAuth2 provider configurations to be migrated. Secrets (clientSecret, p8File) are never migrated — destination admin must re-enter them per provider.
  final int oauth2Provider;

  /// Number of backup policies to be migrated.
  final int backupPolicy;

  MigrationReport({
    required this.user,
    required this.team,
    required this.database,
    required this.row,
    required this.file,
    required this.bucket,
    required this.function,
    required this.platform,
    required this.apiKey,
    required this.projectVariable,
    required this.webhook,
    required this.authMethods,
    required this.projectProtocols,
    required this.projectLabels,
    required this.projectServices,
    required this.policies,
    required this.smtp,
    required this.rule,
    required this.projectEmailTemplate,
    required this.projectEnvironment,
    required this.site,
    required this.provider,
    required this.topic,
    required this.subscriber,
    required this.message,
    required this.size,
    required this.version,
    required this.oauth2Provider,
    required this.backupPolicy,
  });
  factory MigrationReport.fromMap(
    Map<String, dynamic> map,
  ) {
    map = {
      'user': 0,
      'team': 0,
      'database': 0,
      'row': 0,
      'file': 0,
      'bucket': 0,
      'function': 0,
      'platform': 0,
      'api-key': 0,
      'project-variable': 0,
      'webhook': 0,
      'auth-methods': 0,
      'project-protocols': 0,
      'project-labels': 0,
      'project-services': 0,
      'policies': 0,
      'smtp': 0,
      'rule': 0,
      'project-email-template': 0,
      'project-environment': 0,
      'site': 0,
      'provider': 0,
      'topic': 0,
      'subscriber': 0,
      'message': 0,
      'size': 0,
      'version': "",
      'oauth2-provider': 0,
      'backup-policy': 0,
      ...map,
    };

    return MigrationReport(
      user: map['user'],
      team: map['team'],
      database: map['database'],
      row: map['row'],
      file: map['file'],
      bucket: map['bucket'],
      function: map['function'],
      platform: map['platform'],
      apiKey: map['api-key'],
      projectVariable: map['project-variable'],
      webhook: map['webhook'],
      authMethods: map['auth-methods'],
      projectProtocols: map['project-protocols'],
      projectLabels: map['project-labels'],
      projectServices: map['project-services'],
      policies: map['policies'],
      smtp: map['smtp'],
      rule: map['rule'],
      projectEmailTemplate: map['project-email-template'],
      projectEnvironment: map['project-environment'],
      site: map['site'],
      provider: map['provider'],
      topic: map['topic'],
      subscriber: map['subscriber'],
      message: map['message'],
      size: map['size'],
      version: map['version'].toString(),
      oauth2Provider: map['oauth2-provider'],
      backupPolicy: map['backup-policy'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "user": user,
      "team": team,
      "database": database,
      "row": row,
      "file": file,
      "bucket": bucket,
      "function": function,
      "platform": platform,
      "api-key": apiKey,
      "project-variable": projectVariable,
      "webhook": webhook,
      "auth-methods": authMethods,
      "project-protocols": projectProtocols,
      "project-labels": projectLabels,
      "project-services": projectServices,
      "policies": policies,
      "smtp": smtp,
      "rule": rule,
      "project-email-template": projectEmailTemplate,
      "project-environment": projectEnvironment,
      "site": site,
      "provider": provider,
      "topic": topic,
      "subscriber": subscriber,
      "message": message,
      "size": size,
      "version": version,
      "oauth2-provider": oauth2Provider,
      "backup-policy": backupPolicy,
    };
  }
}
