part of '../../enums.dart';

enum Name {
  v1Database(value: 'v1-database'),
  v1Deletes(value: 'v1-deletes'),
  v1Audits(value: 'v1-audits'),
  v1Mails(value: 'v1-mails'),
  v1Functions(value: 'v1-functions'),
  v1StatsResources(value: 'v1-stats-resources'),
  v1StatsUsage(value: 'v1-stats-usage'),
  v1Webhooks(value: 'v1-webhooks'),
  v1Certificates(value: 'v1-certificates'),
  v1Builds(value: 'v1-builds'),
  v1Messaging(value: 'v1-messaging'),
  v1Migrations(value: 'v1-migrations');

  const Name({required this.value});

  final String value;

  String toJson() => value;
}
