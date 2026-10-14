part of '../../enums.dart';

enum TablesDBIndexType {
  key(value: "key"),
  fulltext(value: "fulltext"),
  unique(value: "unique"),
  spatial(value: "spatial"),
  trigram(value: "trigram");

  const TablesDBIndexType({required this.value});

  final String value;

  String toJson() => value;
}
