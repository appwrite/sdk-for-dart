part of '../../enums.dart';

enum AlertMetric {
  networkRequests(value: "network.requests"),
  networkInbound(value: "network.inbound"),
  networkOutbound(value: "network.outbound"),
  executions(value: "executions"),
  executionsMbSeconds(value: "executions.mbSeconds"),
  realtimeConnections(value: "realtime.connections"),
  webhooksEventsSent(value: "webhooks.events.sent"),
  webhooksEventsFailed(value: "webhooks.events.failed"),
  usersMau(value: "users.mau"),
  authMethodPhone(value: "auth.method.phone"),
  users(value: "users"),
  databasesOperationsReads(value: "databases.operations.reads"),
  databasesOperationsWrites(value: "databases.operations.writes"),
  databasesStorage(value: "databases.storage"),
  storage(value: "storage"),
  filesStorage(value: "files.storage"),
  messagesSent(value: "messages.sent"),
  messagesSmsSent(value: "messages.sms.sent"),
  messagesFailed(value: "messages.failed"),
  avatarsScreenshotsGenerated(value: "avatars.screenshotsGenerated"),
  dedicatedDatabasesCpu(value: "dedicatedDatabases.cpu"),
  dedicatedDatabasesMemory(value: "dedicatedDatabases.memory"),
  dedicatedDatabasesStorage(value: "dedicatedDatabases.storage"),
  dedicatedDatabasesConnections(value: "dedicatedDatabases.connections"),
  dedicatedDatabasesQps(value: "dedicatedDatabases.qps"),
  dedicatedDatabasesIopsRead(value: "dedicatedDatabases.iopsRead"),
  dedicatedDatabasesIopsWrite(value: "dedicatedDatabases.iopsWrite"),
  analyticsEvents(value: "analytics.events"),
  analyticsPageviews(value: "analytics.pageviews"),
  billingBudgetUsed(value: "billing.budgetUsed");

  const AlertMetric({required this.value});

  final String value;

  String toJson() => value;
}
