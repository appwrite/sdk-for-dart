part of '../../enums.dart';

enum EnvironmentResource {
  user(value: "user"),
  team(value: "team"),
  membership(value: "membership"),
  authMethods(value: "auth-methods"),
  policies(value: "policies"),
  oauth2Provider(value: "oauth2-provider"),
  database(value: "database"),
  documentsdb(value: "documentsdb"),
  vectorsdb(value: "vectorsdb"),
  table(value: "table"),
  collection(value: "collection"),
  column(value: "column"),
  attribute(value: "attribute"),
  xIndex(value: "index"),
  row(value: "row"),
  document(value: "document"),
  bucket(value: "bucket"),
  file(value: "file"),
  function(value: "function"),
  environmentVariable(value: "environment-variable"),
  deployment(value: "deployment"),
  site(value: "site"),
  siteVariable(value: "site-variable"),
  siteDeployment(value: "site-deployment"),
  provider(value: "provider"),
  topic(value: "topic"),
  subscriber(value: "subscriber"),
  platform(value: "platform"),
  smtp(value: "smtp"),
  projectVariable(value: "project-variable"),
  projectProtocols(value: "project-protocols"),
  projectLabels(value: "project-labels"),
  projectServices(value: "project-services"),
  projectEmailTemplate(value: "project-email-template");

  const EnvironmentResource({required this.value});

  final String value;

  String toJson() => value;
}
