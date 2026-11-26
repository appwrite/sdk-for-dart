part of '../../enums.dart';

enum MonitorResourceType {
  project(value: "project"),
  database(value: "database"),
  bucket(value: "bucket"),
  function(value: "function"),
  site(value: "site"),
  dedicatedDatabase(value: "dedicatedDatabase"),
  organization(value: "organization");

  const MonitorResourceType({required this.value});

  final String value;

  String toJson() => value;
}
