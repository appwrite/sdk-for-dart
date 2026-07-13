part of '../../enums.dart';

enum ProjectServiceId {
  account(value: 'account'),
  avatars(value: 'avatars'),
  databases(value: 'databases'),
  tablesdb(value: 'tablesdb'),
  locale(value: 'locale'),
  health(value: 'health'),
  project(value: 'project'),
  storage(value: 'storage'),
  teams(value: 'teams'),
  users(value: 'users'),
  vcs(value: 'vcs'),
  sites(value: 'sites'),
  functions(value: 'functions'),
  proxy(value: 'proxy'),
  graphql(value: 'graphql'),
  migrations(value: 'migrations'),
  messaging(value: 'messaging'),
  advisor(value: 'advisor'),
  oauth2(value: 'oauth2');

  const ProjectServiceId({required this.value});

  final String value;

  String toJson() => value;
}
