part of '../../enums.dart';

enum FirebaseMigrationResource {
  user(value: "user"),
  database(value: "database"),
  table(value: "table"),
  column(value: "column"),
  row(value: "row"),
  document(value: "document"),
  attribute(value: "attribute"),
  collection(value: "collection"),
  bucket(value: "bucket"),
  file(value: "file");

  const FirebaseMigrationResource({required this.value});

  final String value;

  String toJson() => value;
}
