part of '../../enums.dart';

enum SupabaseMigrationResource {
  user(value: "user"),
  database(value: "database"),
  table(value: "table"),
  column(value: "column"),
  xIndex(value: "index"),
  row(value: "row"),
  document(value: "document"),
  attribute(value: "attribute"),
  collection(value: "collection"),
  bucket(value: "bucket"),
  file(value: "file");

  const SupabaseMigrationResource({required this.value});

  final String value;

  String toJson() => value;
}
