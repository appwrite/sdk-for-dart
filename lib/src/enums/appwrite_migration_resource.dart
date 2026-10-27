part of '../../enums.dart';

enum AppwriteMigrationResource {
  user(value: "user"),
  team(value: "team"),
  membership(value: "membership"),
  authMethods(value: "auth-methods"),
  policies(value: "policies"),
  oauth2Provider(value: "oauth2-provider"),
  database(value: "database"),
  table(value: "table"),
  column(value: "column"),
  xIndex(value: "index"),
  row(value: "row"),
  document(value: "document"),
  attribute(value: "attribute"),
  collection(value: "collection"),
  documentsdb(value: "documentsdb"),
  vectorsdb(value: "vectorsdb"),
  bucket(value: "bucket"),
  file(value: "file"),
  function(value: "function"),
  deployment(value: "deployment"),
  environmentVariable(value: "environment-variable"),
  provider(value: "provider"),
  topic(value: "topic"),
  subscriber(value: "subscriber"),
  message(value: "message"),
  site(value: "site"),
  siteDeployment(value: "site-deployment"),
  siteVariable(value: "site-variable"),
  platform(value: "platform"),
  apiKey(value: "api-key"),
  webhook(value: "webhook"),
  smtp(value: "smtp"),
  backupPolicy(value: "backup-policy"),
  projectVariable(value: "project-variable"),
  projectProtocols(value: "project-protocols"),
  projectLabels(value: "project-labels"),
  projectServices(value: "project-services"),
  projectEmailTemplate(value: "project-email-template"),
  projectEnvironment(value: "project-environment"),
  rule(value: "rule");

  const AppwriteMigrationResource({required this.value});

  final String value;

  String toJson() => value;
}
