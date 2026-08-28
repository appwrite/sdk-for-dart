part of '../../enums.dart';

enum DocumentsDBIndexType {
  key(value: "key"),
  fulltext(value: "fulltext"),
  unique(value: "unique");

  const DocumentsDBIndexType({required this.value});

  final String value;

  String toJson() => value;
}
