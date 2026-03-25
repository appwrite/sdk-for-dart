part of '../../enums.dart';

enum DocumentsDBIndexType {
  key(value: 'key'),
  fulltext(value: 'fulltext'),
  unique(value: 'unique'),
  spatial(value: 'spatial');

  const DocumentsDBIndexType({required this.value});

  final String value;

  String toJson() => value;
}
